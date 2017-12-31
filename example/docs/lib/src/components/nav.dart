import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import '../demo_code_strings/demo_code_strings.dart';

class NavProps {}

class Nav extends PComponent<NavProps> {
  Nav(NavProps props) : super(props);

  @override
  VNode render() => new Vnav()
    ..className = 'navbar has-shadow'
    ..children = [
      new VDivElement()
        ..className = 'navbar-brand'
        ..children = [
          new VAnchorElement()
            ..className = 'navbar-item'
            ..href = 'https://github.com/davidmarne/wui_builder'
            ..children = [
              new Vspan()..text = 'wui_builder',
              githubIcon(),
            ]
        ],
      new VDivElement()
        ..className = 'navbar-end'
        ..children = [
          new VDivElement()
            ..className = 'navbar-item'
            ..text = version,
        ],
    ];

  VNode githubIcon() => new Va()
    ..className = 'level-item'
    ..children = [
      new Vspan()
        ..className = 'icon is-small'
        ..styleBuilder = ((s) => s..paddingLeft = '5px')
        ..children = [new Vi()..className = 'fa fa-github']
    ];
}
