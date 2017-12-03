part of component;

typedef S StateSetter<P, S>(P props, S prevState);

abstract class PropComponent<P> extends Component<P, Null> {
  PropComponent(P props) : super(props);
}

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
    _updatePendingTracker(updateTracker);
    runSyncUpdate(updateTracker);
  }

  @experimental
  @mustCallSuper
  void updateOnIdle({bool shouldAbort: false}) {
    final updateTracker = new UpdateTracker.async(ref, this, shouldAbort);
    _updatePendingTracker(updateTracker);
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

  void _updatePendingTracker(UpdateTracker updateTracker) {
    // cancel any other pending updates if:
    // 1. The pending tracker's shouldAbort property is true
    // 2. The pending update has not even started yet
    UpdateTracker currentUpdateTracker;
    for (var i = 0; i < _pendingUpdateTrackers.length;) {
      currentUpdateTracker = _pendingUpdateTrackers[i];
      if (currentUpdateTracker.shouldAbort ||
          !currentUpdateTracker.hasStarted) {
        // TODO: inverse this and just don't add this update
        currentUpdateTracker.cancel();
        _pendingUpdateTrackers.removeAt(i);
        continue;
      }
      i++;
    }
    _pendingUpdateTrackers.add(updateTracker);
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
