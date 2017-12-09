import 'dart:html';

import 'package:wui_builder/src/wui_builder/update_queue.dart';

int mockRequestAnimationFrame(void callback(num id)) => 1;
int mockRequestIdleCallback(void callback(IdleDeadline deadline),
        [Map<dynamic, dynamic> options]) =>
    1;

void setUpTestbed() {
  animationFrameRequstMethod = mockRequestAnimationFrame;
  idleCallbackRequestMethod = mockRequestIdleCallback;
  pendingAnimationFrameUpdates = [];
  beforeAnimationFrameCallbacks = [];
  pendingAnimationFrameId = null;
  pendingIdleId = null;
}
