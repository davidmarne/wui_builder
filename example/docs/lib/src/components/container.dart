import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import 'code_view.dart';
import 'nav.dart';
import 'panel.dart';

class Container extends NComponent {
  @override
  VNode render() => new HistoryProvider(
        new VDivElement()
          ..children = [
            new Nav(new NavProps()),
            new VDivElement()
              ..styleBuilder = (new StyleBuilder()..paddingTop = '2rem')
              ..className = 'columns'
              ..children = [
                new VDivElement()
                  ..className = 'column is-3 aside hero'
                  ..children = [
                    new Panel(),
                  ],
                new VDivElement()
                  ..className = 'column is-9 hero'
                  ..children = [new CodeView()],
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
                              ..src =
                                  'https://bulma.io/images/made-with-bulma.png'
                              ..alt = 'Demo page made with Bulma'
                              ..width = 128
                              ..height = 24
                          ]
                      ],
                  ],
              ],
          ],
      );
}
