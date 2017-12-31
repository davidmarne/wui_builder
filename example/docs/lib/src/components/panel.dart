import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import '../routes/routes.dart';

typedef void UpdateRoute(Route route);

class PanelProps {
  UpdateRoute updateRoute;
  Route currentRoute;
}

class Panel extends PComponent<PanelProps> {
  Panel(PanelProps props) : super(props);

  @override
  VNode render() => new Vaside()
    ..className = 'menu'
    ..children = [
      menuLabel('Basic Concepts'),
      containerMenuItem([
        terminalMenuItem('Hello World', Route.helloWorld),
        terminalMenuItem('Props', Route.props),
        terminalMenuItem('State', Route.state),
      ]),
      menuLabel('Advanced Concepts'),
      containerMenuItem([
        terminalMenuItem('Updating on Animation Frame', Route.animationFrame),
        terminalMenuItem('Updating on Idle Callbacks', Route.idleCallback),
        terminalMenuItem('Context', Route.context),
        terminalMenuItem('Immutability', Route.immutability),
        terminalMenuItem('High order components', Route.hocs),
        terminalMenuItem('Functional', Route.functional),
      ]),
      menuLabel('Examples'),
      containerMenuItem([
        terminalMenuItem('Sierpinski Triangle', Route.triangle),
        terminalMenuItem('Virtual Scroll', Route.virtualList),
      ]),
    ];

  VNode menuLabel(String text) => new Vp()
    ..className = 'menu-label'
    ..text = text;

  VNode containerMenuItem(Iterable<Vli> children) => new Vul()
    ..className = 'menu-list'
    ..children = children;

  Vli terminalMenuItem(String text, Route route) => new Vli()
    ..children = [
      new Va()
        ..className = route == props.currentRoute ? 'is-active' : ''
        ..text = text
        ..onClick = (_) => _updateRoute(route),
    ];

  void _updateRoute(Route route) {
    props.updateRoute(route);
  }
}
