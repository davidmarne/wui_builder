part of wui_builder;

typedef S StateSetter<P, S>(P props, S prevState);

abstract class Component<P, S> extends VNode {
  P _props;
  S _state;

  VNode _renderResult;
  StateSetter<P, S> _pendingStateSetter;
  _UpdateTracker _pendingUpdateTracker;

  Component(this._props) {
    _state = getInitialState(_props);
  }

  P get props => _props;
  S get state => _state;

  VNode render(P props, S state);

  S getInitialState(props) => null;

  void componentWillMount(P props, S state) {}
  void componentDidMount(P props, S state) {}
  void componentWillUnmount(P props, S state) {}
  bool shouldComponentUpdate(
          P prevProps, P nextProps, S prevState, S nextState) =>
      true;
  void componentWillUpdate(
      P prevProps, P nextProps, S prevState, S nextState) {}
  void componentDidUpdate(P prevProps, P nextProps, S prevState, S nextState) {}

  @mustCallSuper
  void update({StateSetter<P, S> stateSetter}) {
    _pendingUpdateTracker?.cancel();
    if (_pendingStateSetter != null)
      _state = _pendingStateSetter(props, _state);
    _pendingStateSetter = stateSetter;
    _pendingUpdateTracker = new _UpdateTracker.sync(ref, this, this);
    _update(_pendingUpdateTracker);
  }

  @experimental
  @mustCallSuper
  void updateOnIdle({StateSetter<P, S> stateSetter}) {
    _pendingUpdateTracker?.cancel();
    if (_pendingStateSetter != null)
      _state = _pendingStateSetter(props, _state);
    _pendingStateSetter = stateSetter;
    _pendingUpdateTracker = new _UpdateTracker.async(ref, this, this);
    _queueNewUpdate(_pendingUpdateTracker);
  }

  void _render(P props, S state) {
    _renderResult = render(props, state);
  }
}
