part of wui_builder;

typedef S StateSetter<P, S>(P props, S prevState);

abstract class Component<P, S> extends VNode {
  P _props;
  S _state;

  VNode _renderResult;
  StateSetter<P, S> _pendingStateSetter;
  Deadline _pendingDeadline;

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
    var prevState = _state;

    // an update has been called since this render cycle was invoked
    if (_pendingDeadline != null) {
      // update the state to what it would have been if the update did process
      if (_pendingStateSetter != null) {
        _state = _pendingStateSetter(_props, _state);
        prevState = _state;
        _pendingStateSetter = null;
      }

      // cancel the pending update to the component now, since we are updating
      // it during this update cycle
      _pendingDeadline.cancel();

      // if the pending deadline hasn't started doing work null it out
      // otherwise let it finish its call stack and null itself out
      if (_pendingDeadline.hasNotStarted) _pendingDeadline = null;
    }

    _state = stateSetter == null ? prevState : stateSetter(_props, prevState);
    final newResult = render(_props, _state);
    componentWillUpdate(_props, _props, prevState, _state);
    _updateNode(ref.parent, ref, newResult, _renderResult);
    componentDidUpdate(_props, _props, prevState, _state);
    _renderResult = newResult;
  }

  @experimental
  @mustCallSuper
  void updateOnIdle({StateSetter<P, S> stateSetter}) {
    if (_pendingDeadline != null) {
      // update the state to what it would have been if the update did process
      if (_pendingStateSetter != null) {
        _state = _pendingStateSetter(_props, _state);
        _pendingStateSetter = null;
      }

      // cancel the pending update to the component now, since we are updating
      // it during this update cycle
      _pendingDeadline.cancel();

      // if the pending deadline hasn't started doing work null it out
      // otherwise let it finish its call stack and null itself out
      if (_pendingDeadline.hasNotStarted) _pendingDeadline = null;
    }

    // save off the pending stateSetter so any previously invoked async updaters
    // can call it in their update.
    _pendingStateSetter = stateSetter;

    // save off the requestIdleCallback id so any previously invoked async updaters
    // can cancel this update.
    int pendingWorkId;
    pendingWorkId = window.requestIdleCallback(
      (idleDeadline) async {
        // update the idleDeadline
        _pendingDeadline.refresh(idleDeadline);

        final prevState = _state;
        final prevRenderResult = _renderResult;

        if (_pendingStateSetter != null) {
          _state = _pendingStateSetter(_props, _state);
          _pendingStateSetter = null;
        }

        _renderResult = render(_props, _state);
        componentWillUpdate(_props, _props, prevState, _state);
        await _updateNodeAsync(
          _pendingDeadline,
          ref.parent,
          ref,
          _renderResult,
          prevRenderResult,
        );
        componentDidUpdate(_props, _props, prevState, _state);

        // if the latest update is this kill the reference
        if (_pendingDeadline.initialWorkId == pendingWorkId) {
          _pendingDeadline = null;
        }
      },
    );

    _pendingDeadline = new Deadline(pendingWorkId);
  }

  void _render(P props, S state) {
    _renderResult = render(props, state);
  }
}
