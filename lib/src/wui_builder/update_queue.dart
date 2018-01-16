import 'dart:html';

import 'component.dart';
import 'cursors.dart';
import 'update_processor.dart';
import 'update_tracker.dart';
import 'velement.dart';

// settable methods for testing
var animationFrameRequstMethod = window.requestAnimationFrame;
var idleCallbackRequestMethod = window.requestIdleCallback;

// updates queued to run on the next idle callback
List<UpdateTracker> pendingIdleUpdates = [];
int pendingIdleId;

// updates queued to run on the next animation frame
List<UpdateTracker> pendingAnimationFrameUpdates = [];
int pendingAnimationFrameId;

// callbacks registered to run before each animation frame
Map<int, BeforeAnimationFrame> beforeAnimationFrameCallbacks = {};

void addBeforeAnimationFrameCallback(Component node) {
  // register the callback
  beforeAnimationFrameCallbacks[node.hashCode] = node.beforeAnimationFrame;

  // request a frame if there already isn't one requested
  if (pendingAnimationFrameId == null) requestAnimationFrame();
}

void queueNewAnimationFrameUpdate(UpdateTracker tracker) {
  // add the tracker to the queue
  pendingAnimationFrameUpdates.add(tracker);

  // request idle time if necessary
  if (pendingAnimationFrameId == null) requestAnimationFrame();
}

void requestAnimationFrame() {
  // request idle time to render
  pendingAnimationFrameId = animationFrameRequstMethod(onAnimationFrame);
}

void onAnimationFrame(num _) {
  // call any registered callbacks in beforeAnimationFrameCallbacks
  for (final callback in beforeAnimationFrameCallbacks.values) callback();

  while (pendingAnimationFrameUpdates.isNotEmpty) {
    // remove the update at the head of the queue and resume it
    final update = pendingAnimationFrameUpdates.removeAt(0);

    resumeUpdate(update);
  }

  pendingAnimationFrameId = null;
  if (beforeAnimationFrameCallbacks.isNotEmpty) requestAnimationFrame();
}

void requestIdle() {
  // request idle time to render
  pendingIdleId = idleCallbackRequestMethod(runIdle);
}

void runIdle(IdleDeadline deadline) {
  // run the update cycle for each update in the queue
  while (pendingIdleUpdates.isNotEmpty) {
    // remove the update at the head of the queue and resume it
    final update = pendingIdleUpdates.removeAt(0);

    // update the deadline on the tracker and update it
    update.refresh(deadline);

    resumeUpdate(update);

    // break out of the loop if the timeout is hit
    if (deadline.timeRemaining() < 1) break;
  }

  // nullify pendingIdleId to indicate no idle callback is being waited for
  pendingIdleId = null;

  // if there are still updates in the queue request idle time
  if (pendingIdleUpdates.isNotEmpty) requestIdle();
}

UpdateTracker firstNonCancelledParent(UpdateTracker tracker) {
  var current = tracker;
  while (current != null) {
    if (!current.isCancelled) return current;
    current = current.parentTracker;
  }
  return null;
}

void queueNewIdleUpdate(UpdateTracker tracker) {
  // add the tracker to the queue
  pendingIdleUpdates.add(tracker);

  // request idle time if necessary
  if (pendingIdleId == null) requestIdle();
}

void queueProcessingIdleUpdate(UpdateTracker tracker) {
  // add the tracker to the queue
  pendingIdleUpdates.insert(0, tracker);
}

void resumeUpdate(UpdateTracker tracker) {
  tracker.hasStarted = true;

  // if the deadline has been cancelled finsh any parent
  // work that is not cancelled
  if (tracker.isCancelled) {
    // if the update was cancelled find the first parent
    // that isn't cancelled and finish its pending work
    final nonCancelled = firstNonCancelledParent(tracker);
    if (nonCancelled != null) {
      doPendingWork(nonCancelled);
    }
  } else {
    final finished = updateVNode(tracker);

    // if the current update stack was completed
    // resume its parents updates
    if (finished) doPendingWork(tracker.parentTracker);
  }
}

void doPendingWork(UpdateTracker tracker) {
  // pop work of the queue until the tracker is complete or paused
  var finished = true;
  var current = tracker;
  while (current != null) {
    if (current.pendingWork.cursorType == PendingCursors.iterable) {
      finished = updateElementChildren(current);
    } else {
      finishComponentUpdate(current);
      finished = true;
    }
    if (!finished) return;
    current = current.parentTracker;
  }
}
