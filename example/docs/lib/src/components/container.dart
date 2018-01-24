import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import '../routes/routes.dart';
import 'code_view.dart';
import 'nav.dart';
import 'panel.dart';

class ContainerState {
  Route currentRoute;
}

class Container extends SComponent<ContainerState> {
  @override
  ContainerState getInitialState() =>
      new ContainerState()..currentRoute = Route.helloWorld;

  @override
  VNode render() => new VDivElement()
    ..children = [
      new Nav(new NavProps()),
      new VDivElement()
        ..styleBuilder = (new StyleBuilder()..paddingTop = '2rem')
        ..className = 'columns'
        ..children = [
          new VDivElement()
            ..className = 'column is-3 aside hero'
            ..children = [
              new Panel(new PanelProps()
                ..currentRoute = state.currentRoute
                ..updateRoute = _updateRoute),
            ],
          new VDivElement()
            ..className = 'column is-9 hero'
            ..children = [
              new CodeView(
                new CodeViewProps()..route = state.currentRoute,
              )
            ],
        ],
      new Vfooter()
        ..className = 'footer'
        ..children = [
          new VDivElement()
            ..className = 'container'
            ..children = [
              new VDivElement()
                ..className = 'content has-text-centered'
                ..children = [
                  new Vp()
                    ..text =
                        'wui_builder by David Marne. The source code is licensed MIT.',
                  new VAnchorElement()
                    ..href = 'https://bulma.io'
                    ..children = [
                      new VImageElement()
                        ..src = 'https://bulma.io/images/made-with-bulma.png'
                        ..alt = 'Demo page made with Bulma'
                        ..width = 128
                        ..height = 24
                    ]
                ],
            ],
        ],
    ];

  void _updateRoute(Route route) {
    setStateOnAnimationFrame(
        (np, ps) => new ContainerState()..currentRoute = route);
  }
}
