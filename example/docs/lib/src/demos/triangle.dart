import 'dart:async';
import 'dart:html';

import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/components.dart';

// This example demos the combination of setStateOnAnimationFrame
// and setStateOnIdle together. The TransformContainer updates
// the transform, which is high priority, every animation frame. While
// the CounterStateHOC updates the numbers on each dot on idle callbacks.
// This prevents the updating of the numbers from making the transform
// animation chunky.

// TransformContainer manages updating the css transform
class TransformContainer extends SComponent<int> {
  final int start;
  TransformContainer() : start = DateTime.now().millisecondsSinceEpoch;

  @override
  int getInitialState() => DateTime.now().millisecondsSinceEpoch;

  @override
  BeforeAnimationFrame get beforeAnimationFrame => () {
        setStateOnAnimationFrame(
            (_, s) => DateTime.now().millisecondsSinceEpoch - start);
      };

  StyleBuilder _styleBuilder() {
    final t = (state / 1000) % 10;
    final scale = 1 + (t > 5 ? 10 - t : t) / 10;
    final transform = 'scaleX(${scale / 2.1}) scaleY(0.7) translateZ(0.1px)';

    return StyleBuilder()
      ..transform = transform
      ..position = 'absolute'
      ..transformOrigin = '0 0'
      ..left = '50%'
      ..top = '50%'
      ..width = '10px'
      ..height = '10px'
      ..background = '#eee';
  }

  // UpdateBlocker prevents the whole component tree from rerendering
  // every frame. We only want to update the style on the first
  // VDivElement every frame
  @override
  VNode render() => VDivElement()
    ..styleBuilder = _styleBuilder()
    ..children = [
      UpdateBlocker(
        child: VDivElement()
          ..children = [
            CounterStateHOC(),
          ],
      ),
    ];
}

// CounterStateHOC is a high order component that mananges
// increasing the number on each dot every second
class CounterStateHOC extends SComponent<int> {
  @override
  int getInitialState() => 0;

  @override
  void componentDidMount() {
    Timer.periodic(const Duration(seconds: 1),
        (_) => setStateOnIdle((_, prevState) => (prevState % 10) + 1));
  }

  @override
  VNode render() => SierpinskiTriangle(
        SierpinskiTriangleProps()
          ..x = 0.0
          ..y = 0.0
          ..s = 1000.0
          ..seconds = state,
      );
}

class SierpinskiTriangleProps {
  double x;
  double y;
  double s;
  int seconds;
}

class SierpinskiTriangle extends PComponent<SierpinskiTriangleProps> {
  final targetSize = 25.0;

  SierpinskiTriangle(SierpinskiTriangleProps props) : super(props);

  @override
  bool shouldComponentUpdate(nextProps, _) => !(props.x == nextProps.x &&
      props.y == nextProps.y &&
      props.s == nextProps.s &&
      props.seconds == nextProps.seconds);

  @override
  VNode render() {
    if (props.s < targetSize)
      return Dot(
        DotProps()
          ..x = props.x - (targetSize / 2.0)
          ..y = props.y - (targetSize / 2.0)
          ..size = targetSize
          ..text = '${props.seconds}',
      );

    final e = window.performance.now() + 0.8;
    while (window.performance.now() < e) {
      // Artificially long execution time.
    }

    final s = props.s / 2;
    return VDivElement()
      ..children = [
        SierpinskiTriangle(
          SierpinskiTriangleProps()
            ..x = props.x
            ..y = props.y - (s / 2.0)
            ..s = s
            ..seconds = props.seconds,
        ),
        SierpinskiTriangle(
          SierpinskiTriangleProps()
            ..x = props.x - s
            ..y = props.y + (s / 2.0)
            ..s = s
            ..seconds = props.seconds,
        ),
        SierpinskiTriangle(
          SierpinskiTriangleProps()
            ..x = props.x + s
            ..y = props.y + (s / 2.0)
            ..s = s
            ..seconds = props.seconds,
        ),
      ];
  }
}

class DotProps {
  double size;
  double x;
  double y;
  String text;
}

class Dot extends Component<DotProps, Null> {
  final center = 500;

  Dot(DotProps props) : super(props);

  StyleBuilder _styleBuilder() {
    final s = props.size * 1.3;
    return StyleBuilder()
      ..position = 'absolute'
      ..background = '#61dafb'
      ..font = 'normal 15px sans-serif'
      ..textAlign = 'center'
      ..cursor = 'pointer'
      ..width = '${s}px'
      ..height = '${s}px'
      ..left = '${props.x}px'
      ..top = '${props.y}px'
      ..borderRadius = '${s / 2}px'
      ..lineHeight = '${s}px';
  }

  @override
  VNode render() => VDivElement()
    ..styleBuilder = _styleBuilder()
    ..text = props.text;
}
