import 'dart:async';
import 'dart:html';

import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/components.dart';

const targetSize = 25.0;

void main() {
  render(new App(null), querySelector('#container'));
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

  void _styleBuilder(CssStyleDeclaration b) {
    final s = props.size * 1.3;
    b
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
  VNode render() => new VDivElement()
    ..styleBuilder = _styleBuilder
    ..text = props.text;
}

class SierpinskiTriangleProps {
  double x;
  double y;
  double s;
  int seconds;
}

class SierpinskiTriangle extends Component<SierpinskiTriangleProps, Null> {
  SierpinskiTriangle(SierpinskiTriangleProps props) : super(props);

  @override
  bool shouldComponentUpdate(nextProps, _) => !(props.x == nextProps.x &&
      props.y == nextProps.y &&
      props.s == nextProps.s &&
      props.seconds == nextProps.seconds);

  @override
  VNode render() {
    if (props.s < targetSize)
      return new Dot(
        new DotProps()
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
    return new VDivElement()
      ..children = [
        new SierpinskiTriangle(
          new SierpinskiTriangleProps()
            ..x = props.x
            ..y = props.y - (s / 2.0)
            ..s = s
            ..seconds = props.seconds,
        ),
        new SierpinskiTriangle(
          new SierpinskiTriangleProps()
            ..x = props.x - s
            ..y = props.y + (s / 2.0)
            ..s = s
            ..seconds = props.seconds,
        ),
        new SierpinskiTriangle(
          new SierpinskiTriangleProps()
            ..x = props.x + s
            ..y = props.y + (s / 2.0)
            ..s = s
            ..seconds = props.seconds,
        ),
      ];
  }
}

class CounterStateHOC extends Component<Null, int> {
  CounterStateHOC(Null props) : super(props);

  @override
  int getInitialState() => 0;

  @override
  void componentDidMount() {
    new Timer.periodic(const Duration(seconds: 1),
        (_) => setStateOnIdle((_, prevState) => (prevState % 10) + 1));
  }

  @override
  VNode render() => new SierpinskiTriangle(
        new SierpinskiTriangleProps()
          ..x = 0.0
          ..y = 0.0
          ..s = 1000.0
          ..seconds = state,
      );
}

class App extends Component<Null, int> {
  final int start;
  App(Null props)
      : start = new DateTime.now().millisecondsSinceEpoch,
        super(props);

  @override
  int getInitialState() => new DateTime.now().millisecondsSinceEpoch;

  @override
  BeforeAnimationFrame get beforeAnimationFrame => () {
        setStateOnAnimationFrame(
            (_, s) => new DateTime.now().millisecondsSinceEpoch - start);
      };

  void _styleBuilder(CssStyleDeclaration styleBuilder) {
    final t = (state / 1000) % 10;
    final scale = 1 + (t > 5 ? 10 - t : t) / 10;
    final transform = 'scaleX(${scale / 2.1}) scaleY(0.7) translateZ(0.1px)';

    styleBuilder
      ..transform = transform
      ..position = 'absolute'
      ..transformOrigin = '0 0'
      ..left = '50%'
      ..top = '50%'
      ..width = '10px'
      ..height = '10px'
      ..background = '#eee';
  }

  @override
  VNode render() => new VDivElement()
    ..styleBuilder = _styleBuilder
    ..children = [
      new UpdateBlocker(
        new VDivElement()
          ..children = [
            new CounterStateHOC(null),
          ],
      ),
    ];
}
