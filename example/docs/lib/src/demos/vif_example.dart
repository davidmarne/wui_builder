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

class VifExample extends SComponent<LoadingState> {
  @override
  LoadingState getInitialState() => LoadingState.loggedOut;

  @override
  VNode render() => Vdiv()
    ..children = [
      VButtonElement()
        ..vif = state == LoadingState.loggedOut
        ..onClick = _onLogIn
        ..text = 'log in',
      VButtonElement()
        ..vif = state == LoadingState.loggingIn
        ..disabled = true
        ..text = 'logging in',
      VButtonElement()
        ..vif = state == LoadingState.loggedIn
        ..onClick = _onLogOut
        ..text = 'log out',
      VButtonElement()
        ..vif = state == LoadingState.loggingOut
        ..disabled = true
        ..text = 'logging out',
    ];

  void _onLogIn(MouseEvent e) {
    setStateOnAnimationFrame((nextProps, prevState) => LoadingState.loggingIn);
    Future<Null>.delayed(const Duration(seconds: 2), () {
      setStateOnAnimationFrame((nextProps, prevState) => LoadingState.loggedIn);
    });
  }

  void _onLogOut(MouseEvent e) {
    setStateOnAnimationFrame((nextProps, prevState) => LoadingState.loggingOut);
    Future<Null>.delayed(const Duration(seconds: 2), () {
      setStateOnAnimationFrame(
          (nextProps, prevState) => LoadingState.loggedOut);
    });
  }
}
