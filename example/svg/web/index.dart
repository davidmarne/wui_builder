import 'dart:html';
import 'dart:async';
import 'dart:math';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/vsvg.dart';

void main() {
  render(new Circler(null), querySelector('#container'));
}

class Circler extends Component<Null, int> {
  final center = 500;

  Circler(Null props) : super(props);

  double toRadians(int degree) => degree.toDouble() * PI / 180.0;

  double get cy => (sin(toRadians(state)) * 400) + 500;
  double get cx => (cos(toRadians(state)) * 400) + 500;

  @override
  int getInitialState() => 0;

  @override
  void componentWillMount() {
    new Timer.periodic(new Duration(milliseconds: 16),
        (_) => update(stateSetter: (_, s) => (s + 6) % 360));
  }

  @override
  render() => new VSvgSvgElement()
    ..attributes = {
      'height': '1000',
      'width': '1000',
    }
    ..children = [
      new VCircleElement()
        ..attributes = {
          'cx': '$cx',
          'cy': '$cy',
          'r': '50',
          'stroke': 'black',
          'stroke-width': '3',
          'fill': 'red',
        },
    ];
}
