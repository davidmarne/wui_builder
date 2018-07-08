import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import '../demo_code_strings/demo_code_strings.dart';

class NavProps {}

class Nav extends PComponent<NavProps> {
  Nav(NavProps props) : super(props);

  @override
  VNode render() => Vnav()
    ..className = 'navbar has-shadow'
    ..children = [
      VDivElement()
        ..className = 'navbar-brand'
        ..children = [
          VAnchorElement()
            ..className = 'navbar-item'
            ..href = 'https://github.com/davidmarne/wui_builder'
            ..children = [
              Vspan()..text = 'wui_builder',
              githubIcon(),
            ]
        ],
      VDivElement()
        ..className = 'navbar-end'
        ..children = [
          VDivElement()
            ..className = 'navbar-item'
            ..text = version,
        ],
    ];

  VNode githubIcon() => Va()
    ..className = 'level-item'
    ..children = [
      Vspan()
        ..className = 'icon is-small'
        ..styleBuilder = (StyleBuilder()..paddingLeft = '5px')
        ..children = [Vi()..className = 'fa fa-github']
    ];
}
