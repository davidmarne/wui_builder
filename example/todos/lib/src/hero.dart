// import 'package:wui_builder/functional.dart';
import 'package:wui_builder/wui_builder.dart';

class HeroProps {
  int remaining;
}

// FunctionalComponent hero(HeroProps props) => pure<HeroProps>(_hero);

VNode hero(HeroProps props) => new Vsection()
  ..className = 'hero is-primary'
  ..children = [
    new VDivElement()
      ..className = 'hero-body'
      ..children = [
        new VDivElement()
          ..className = 'container'
          ..children = [
            new Vh1()
              ..className = 'title'
              ..text = 'Todos',
            new Vh2()
              ..className = 'subtitle'
              ..text = props.remaining == 0
                  ? 'You got nothin to do'
                  : 'You have ${props.remaining} pending todos',
          ]
      ]
  ];
