import 'dart:async';
import 'dart:html';

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

enum LoadingState {
  loggedOut,
  loggingIn,
  loggedIn,
  loggingOut,
}

class WifExample extends SComponent<LoadingState> {
  @override
  LoadingState getInitialState() => LoadingState.loggedOut;

  @override
  VNode render() => new Vdiv()
    ..children = [
      new VButtonElement()
        ..wIf = state == LoadingState.loggedOut
        ..onClick = _onLogIn
        ..text = 'log in',
      new VButtonElement()
        ..wIf = state == LoadingState.loggingIn
        ..disabled = true
        ..text = 'logging in',
      new VButtonElement()
        ..wIf = state == LoadingState.loggedIn
        ..onClick = _onLogOut
        ..text = 'log out',
      new VButtonElement()
        ..wIf = state == LoadingState.loggingOut
        ..disabled = true
        ..text = 'loging out',
    ];

  void _onLogIn(MouseEvent e) {
    print('_onLogIn');
    setStateOnAnimationFrame((nextProps, prevState) => LoadingState.loggingIn);
    new Future<Null>.delayed(const Duration(seconds: 2), () {
      setStateOnAnimationFrame((nextProps, prevState) => LoadingState.loggedIn);
    });
  }

  void _onLogOut(MouseEvent e) {
    print('_onLogOut');
    setStateOnAnimationFrame((nextProps, prevState) => LoadingState.loggingOut);
    new Future<Null>.delayed(const Duration(seconds: 2), () {
      setStateOnAnimationFrame(
          (nextProps, prevState) => LoadingState.loggedOut);
    });
  }
}
