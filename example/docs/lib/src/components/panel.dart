import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import '../routes/routes.dart';

class Panel extends NComponent {
  History __history;
  History get _history => __history ?? findHistoryInContext(context);

  @override
  VNode render() => new Vaside()
    ..className = 'menu'
    ..children = [
      _menuLabel('Basic Concepts'),
      _containerMenuItem([
        _terminalMenuItem('Hello World', DocsRoutes.helloWorld),
        _terminalMenuItem('Props', DocsRoutes.props),
        _terminalMenuItem('State', DocsRoutes.state),
      ]),
      _menuLabel('Advanced Concepts'),
      _containerMenuItem([
        _terminalMenuItem('Keys', DocsRoutes.keys),
        _terminalMenuItem('Routing', DocsRoutes.routing),
        _terminalMenuItem('Wif', DocsRoutes.wif),
        _terminalMenuItem(
            'Updating on Animation Frame', DocsRoutes.animationFrame),
        _terminalMenuItem(
            'Updating on Idle Callbacks', DocsRoutes.idleCallback),
        _terminalMenuItem('Context', DocsRoutes.context),
        _terminalMenuItem('Immutability', DocsRoutes.immutability),
        _terminalMenuItem('High order components', DocsRoutes.hocs),
        _terminalMenuItem('Functional', DocsRoutes.functional),
      ]),
      _menuLabel('Examples'),
      _containerMenuItem([
        _terminalMenuItem('Sierpinski Triangle', DocsRoutes.triangle),
        _terminalMenuItem('Virtual Scroll', DocsRoutes.virtualList),
      ]),
    ];

  VNode _menuLabel(String text) => new Vp()
    ..className = 'menu-label'
    ..text = text;

  VNode _containerMenuItem(Iterable<Vli> children) => new Vul()
    ..className = 'menu-list'
    ..children = children;

  Vli _terminalMenuItem(String text, String route) => new Vli()
    ..children = [
      new Va()
        ..text = text
        ..onClick = (_) => _updateRoute(route),
    ];

  void _updateRoute(String route) {
    _history.push(route);
  }
}
