part of component;

/// [StateSetter] function that given the previous state and the next props
/// returns the next state.
typedef S StateSetter<P, S>(P props, S prevState);

/// [BeforeAnimationFrame] is a typedef for `Component`'s
/// `beforeAnimationFrame` getter.
typedef void BeforeAnimationFrame();

/// [Component] can be exteded to define a custom component.
abstract class Component<P, S> extends VNode {
  P _props;
  S _state;
  Map<String, dynamic> _context;
  VNode _child;
  StateSetter<P, S> _pendingStateSetter;
  final _pendingUpdateTrackers = <UpdateTracker>[];

  Component(this._props);

  @override
  VNodeTypes get vNodeType => VNodeTypes.component;

  VNode get child => _child;

  /// [props] returns the props passed to the component
  P get props => _props;

  /// [state] returns the component's state value
  S get state => _state;

  /// [context] returns the context map, including any context
  /// set by this component or its parents
  Map<String, dynamic> get context =>
      _context ??= getChildContext()..addAll(_findContext());

  /// [render] is the only function that must be implemented by the
  /// superclass. It returns the virtual node representing what should
  /// be rendered to the actual dom.
  VNode render();

  /// [getInitialState] returns the default state for the component.
  /// It will be called before componentWillMount.
  /// It returns a default of null.
  S getInitialState() => null;

  /// [getChildContext] is the idomatic way to set context.
  Map<String, dynamic> getChildContext() => <String, dynamic>{};

  void componentWillMount() {}
  void componentDidMount() {}
  void componentWillUnmount() {}
  bool shouldComponentUpdate(P nextProps, S nextState) => true;
  void componentWillReceiveProps(P nextProps, S nextState) {}
  void componentWillUpdate(P nextProps, S nextState) {}
  void componentDidUpdate(P prevProps, S prevState) {}

  /// [update] forces your component to update. The update
  /// will start immediatly and finish to completion.
  @mustCallSuper
  void update() {
    final updateTracker = new UpdateTracker.sync(ref, this);
    // _updatePendingTracker(updateTracker);
    updateVNode(updateTracker);
  }

  /// [updateOnIdle] forces your component to update. The update
  /// will start on the next idle callback. If [shouldAbort] is
  /// set to false the component will always finish its update. If
  /// [shouldAbort] is true and a new update to this component is
  /// queued between idle callbacks, the previous update will abort.
  /// Note that even when shouldAbort is false, if another update
  /// is queued before an existing update starts, the update process will
  /// only be run once.
  ///
  /// An example usage of [shouldAbort]: true is updating every value in a table.
  /// In this case you probably don't care if the values start updating, but do
  /// not finish before the next update begins.
  ///
  /// An example usage of [shouldAbort]: false is updating the x, y positions
  /// of many different child elements. In this case you want each to animate to their
  /// new position before moving on to their next position. Otherwise if consecutive idle
  /// updates were queued very quickly, elements that get updated early on in the update
  /// process would animate for each update, while elements that get touched at the
  /// end of the update process would never update.
  @mustCallSuper
  void updateOnIdle({@experimental bool shouldAbort: false}) {
    UpdateTracker currentUpdateTracker;
    for (var i = 0; i < _pendingUpdateTrackers.length;) {
      currentUpdateTracker = _pendingUpdateTrackers[i];

      // this update will be processed when the
      // currentUpdateTracker gets its turn
      if (!currentUpdateTracker.hasStarted) return;

      // if it has started and we can abort it do so
      if (currentUpdateTracker.shouldAbort) {
        currentUpdateTracker.cancel();
        _pendingUpdateTrackers.removeAt(i);
        continue;
      }
      ++i;
    }

    final updateTracker = new UpdateTracker.async(ref, this, shouldAbort);
    _pendingUpdateTrackers.add(updateTracker);
    queueNewIdleUpdate(updateTracker);
  }

  /// [updateOnAnimationFrame] queues an update to be run on the next
  /// animation frame. When the animation frame is fired the update will
  /// run to completion. Note that if multiple updates are queued using
  /// [updateOnAnimationFrame] inbetween frames, the update process will
  /// only be run once.
  @mustCallSuper
  void updateOnAnimationFrame() {
    UpdateTracker currentUpdateTracker;
    for (var i = 0; i < _pendingUpdateTrackers.length;) {
      currentUpdateTracker = _pendingUpdateTrackers[i];
      // TODO: only run this if tracker is also an 'animation frame' tracker?

      // this update will be processed when the
      // currentUpdateTracker gets its turn
      if (!currentUpdateTracker.hasStarted) return;

      // if it has started and we can abort it do so
      if (currentUpdateTracker.shouldAbort) {
        currentUpdateTracker.cancel();
        _pendingUpdateTrackers.removeAt(i);
        continue;
      }
      ++i;
    }

    final updateTracker = new UpdateTracker.sync(ref, this);
    _pendingUpdateTrackers.add(updateTracker);
    queueNewAnimationFrameUpdate(updateTracker);
  }

  /// [setState] queues a state change and runs `update`
  @mustCallSuper
  void setState(StateSetter<P, S> stateSetter) {
    queueStateUpdate(stateSetter);
    update();
  }

  /// [setState] queues a state change and runs `updateOnIdle`
  @mustCallSuper
  void setStateOnIdle(StateSetter<P, S> stateSetter,
      {@experimental bool shouldAbort: false}) {
    queueStateUpdate(stateSetter);
    updateOnIdle(shouldAbort: shouldAbort);
  }

  /// [setState] queues a state change and runs `updateOnAnimationFrame`
  @mustCallSuper
  void setStateOnAnimationFrame(StateSetter<P, S> stateSetter) {
    queueStateUpdate(stateSetter);
    updateOnAnimationFrame();
  }

  /// [queueStateUpdate] queues a state change, but does not trigger an update
  void queueStateUpdate(StateSetter<P, S> stateSetter) {
    // if there is already a _pendingStateSetter combine it with stateSetter
    if (_pendingStateSetter != null) {
      final prevStateSetter = _pendingStateSetter;
      _pendingStateSetter = (p, s) => stateSetter(p, prevStateSetter(p, s));
    } else {
      _pendingStateSetter = stateSetter;
    }
  }

  /// [beforeAnimationFrame] can be overriden to return a
  /// function that runs before each animation frame is triggered.
  /// This is useful for conditionally setting state changes
  /// on every frame. It is idomatic to call `setStateOnAnimationFrame`
  /// inside of your callback rather than `setState`, even though they are
  BeforeAnimationFrame get beforeAnimationFrame => null;

  // findContext returns the context from the closest ascendant
  // that has context set. Returns an empty map if no ascendants have
  // context set
  Map<String, dynamic> _findContext() {
    var current = parent;
    while (current != null) {
      if (current.vNodeType == VNodeTypes.component)
        return (current as Component<dynamic, dynamic>).context;
      current = current.parent;
    }
    return <String, dynamic>{};
  }
}
