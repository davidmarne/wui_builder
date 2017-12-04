part of component;

typedef S StateSetter<P, S>(P props, S prevState);

abstract class Component<P, S> extends VNode {
  final vNodeType = VNodeTypes.Component;

  P _props;
  S _state;
  Map<String, dynamic> _context;
  VNode _renderResult;
  StateSetter<P, S> _pendingStateSetter;
  List<UpdateTracker> _pendingUpdateTrackers = new List<UpdateTracker>();

  Component(this._props);

  P get props => _props;
  S get state => _state;
  Map<String, dynamic> get context =>
      _context ??= getChildContext()..addAll(_findContext());

  VNode render();

  S getInitialState() => null;

  /// [getChildContext] is the only way to set context
  /// there is no method to update context
  /// if you would like to change context you have to rekey your
  /// component causing a full on rerender
  Map<String, dynamic> getChildContext() => <String, dynamic>{};

  void componentWillMount() {}
  void componentDidMount() {}
  void componentWillUnmount() {}
  bool shouldComponentUpdate(P nextProps, S nextState) => true;
  void componentWillReceiveProps(P nextProps, S nextState) {}
  void componentWillUpdate(P nextProps, S nextState) {}
  void componentDidUpdate(P prevProps, S prevState) {}

  @mustCallSuper
  void update() {
    final updateTracker = new UpdateTracker.sync(ref, this);
    // _updatePendingTracker(updateTracker);
    updateVNode(updateTracker);
  }

  @experimental
  @mustCallSuper
  void updateOnIdle({bool shouldAbort: false}) {
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
      i++;
    }

    final updateTracker = new UpdateTracker.async(ref, this, shouldAbort);
    _pendingUpdateTrackers.add(updateTracker);
    queueNewUpdate(updateTracker);
  }

  @mustCallSuper
  void setState(StateSetter<P, S> stateSetter) {
    queueStateUpdate(stateSetter);
    update();
  }

  @experimental
  @mustCallSuper
  void setStateOnIdle(StateSetter<P, S> stateSetter,
      {bool shouldAbort: false}) {
    queueStateUpdate(stateSetter);
    updateOnIdle(shouldAbort: shouldAbort);
  }

  void queueStateUpdate(StateSetter<P, S> stateSetter) {
    // if there is already a _pendingStateSetter combine it with stateSetter
    if (_pendingStateSetter != null) {
      final prevStateSetter = _pendingStateSetter;
      _pendingStateSetter = (P p, S s) => stateSetter(p, prevStateSetter(p, s));
    } else
      _pendingStateSetter = stateSetter;
  }

  Map<String, dynamic> _findContext() {
    VNode current = parent;
    while (current != null) {
      if (current.vNodeType == VNodeTypes.Component)
        return (current as Component<dynamic, dynamic>).context;
      current = current.parent;
    }
    return <String, dynamic>{};
  }
}
