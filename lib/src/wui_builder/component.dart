part of wui_builder;

typedef S StateSetter<P, S>(P props, S prevState);

abstract class PropComponent<P> extends Component<P, Null, dynamic> {
  PropComponent(P props) : super(props);
}

abstract class StatefulComponent<P, S> extends Component<P, S, dynamic> {
  StatefulComponent(P props) : super(props);
}

abstract class Component<P, S, C> extends VNode {
  final vNodeType = VNodeTypes.Component;

  P _props;
  S _state;
  C __context;

  VNode _renderResult;
  StateSetter<P, S> _pendingStateSetter;
  _UpdateTracker _pendingUpdateTracker;

  Component(this._props) {
    _state = getInitialState();
  }

  P get props => _props;
  S get state => _state;
  C get context => __context ??= _context;
  C get _context {
    VNode current = parent;
    while (current != null) {
      if (current.vNodeType == VNodeTypes.Component)
        return (current as Component<dynamic, dynamic, C>).context;
      current = current.parent;
    }
    return null;
  }

  VNode render();

  S getInitialState() => null;

  void componentWillMount() {}
  void componentDidMount() {}
  void componentWillUnmount() {}
  bool shouldComponentUpdate(P nextProps, S nextState) => true;
  void componentWillUpdate(P nextProps, S nextState) {}
  void componentDidUpdate(P prevProps, S prevState) {}

  @mustCallSuper
  void update({StateSetter<P, S> stateSetter}) {
    _updateStateSetter(stateSetter);
    _pendingUpdateTracker = new _UpdateTracker.sync(ref, this, _state);
    _update(_pendingUpdateTracker);
  }

  @experimental
  @mustCallSuper
  void updateOnIdle({StateSetter<P, S> stateSetter}) {
    _updateStateSetter(stateSetter);
    _pendingUpdateTracker = new _UpdateTracker.async(ref, this, _state);
    _queueNewUpdate(_pendingUpdateTracker);
  }

  void _updateStateSetter(StateSetter<P, S> stateSetter) {
    _pendingUpdateTracker?.cancel();
    // if there is already a _pendingStateSetter combine it with stateSetter
    if (_pendingStateSetter != null && stateSetter != null) {
      final prevStateSetter = _pendingStateSetter;
      _pendingStateSetter = (P p, S s) {
        print('s update $s');
        return stateSetter(p, prevStateSetter(p, s));
      };
    } else if (stateSetter != null) _pendingStateSetter = stateSetter;
  }

  void _render() {
    _renderResult = render();
  }
}
