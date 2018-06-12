import 'dart:math';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/components.dart';
import 'package:wui_builder/vsvg.dart';

class AnimationFrame extends SComponent<int> {
  final center = 500;

  @override
  int getInitialState() => 0;

  // beforeAnimationFrame is overriden to queue a state
  // update to run on the proceeding animation frame.
  // Here we set the state to a degree value that represents
  // 6 more degrees than the last state
  @override
  BeforeAnimationFrame get beforeAnimationFrame => () {
        setStateOnAnimationFrame((_, s) => (s + 6) % 360);
      };

  @override
  VNode render() => VSvgSvgElement()
    ..attributes = {
      'height': '1000',
      'width': '1000',
    }
    ..children = [
      VCircleElement()
        ..attributes = {
          'cx': '$_cx',
          'cy': '$_cy',
          'r': '50',
          'stroke': 'black',
          'stroke-width': '3',
          'fill': 'red',
        },
    ];

  double _toRadians(int degree) => degree.toDouble() * pi / 180.0;
  double get _cy => (sin(_toRadians(state)) * 400) + 500;
  double get _cx => (cos(_toRadians(state)) * 400) + 500;
}
