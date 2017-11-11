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
  UpdateTracker _pendingUpdateTracker;

  Component(this._props);

  P get props => _props;
  S get state => _state;
  Map<String, dynamic> get context =>
      _context ??= getChildContext()..addAll(_findContext());

  VNode render();

  S getInitialState() => null;
  Map<String, dynamic> getChildContext() => <String, dynamic>{};

  void componentWillMount() {}
  void componentDidMount() {}
  void componentWillUnmount() {}
  bool shouldComponentUpdate(P nextProps, S nextState) => true;
  void componentWillUpdate(P nextProps, S nextState) {}
  void componentDidUpdate(P prevProps, S prevState) {}

  @mustCallSuper
  void update({StateSetter<P, S> stateSetter}) {
    if (stateSetter != null) _updateStateSetter(stateSetter);
    _pendingUpdateTracker = new UpdateTracker.sync(ref, this, _state);
    updateVNode(_pendingUpdateTracker);
  }

  @experimental
  @mustCallSuper
  void updateOnIdle({StateSetter<P, S> stateSetter}) {
    if (stateSetter != null) _updateStateSetter(stateSetter);
    _pendingUpdateTracker = new UpdateTracker.async(ref, this, _state);
    queueNewUpdate(_pendingUpdateTracker);
  }

  void _updateStateSetter(StateSetter<P, S> stateSetter) {
    _pendingUpdateTracker?.cancel();
    // if there is already a _pendingStateSetter combine it with stateSetter
    if (_pendingStateSetter != null) {
      final prevStateSetter = _pendingStateSetter;
      _pendingStateSetter = (P p, S s) => stateSetter(p, prevStateSetter(p, s));
    } else
      _pendingStateSetter = stateSetter;
  }

  void _render() {
    _renderResult = render();
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
