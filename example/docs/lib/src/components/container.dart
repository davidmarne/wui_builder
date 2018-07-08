import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import 'code_view.dart';
import 'nav.dart';
import 'panel.dart';

class Container extends NComponent {
  @override
  VNode render() => HistoryProvider(
        child: VDivElement()
          ..children = [
            Nav(NavProps()),
            VDivElement()
              ..styleBuilder = (StyleBuilder()..paddingTop = '2rem')
              ..className = 'columns'
              ..children = [
                VDivElement()
                  ..className = 'column is-3 aside hero'
                  ..children = [
                    Panel(),
                  ],
                VDivElement()
                  ..className = 'column is-9 hero'
                  ..children = [CodeView()],
              ],
            Vfooter()
              ..className = 'footer'
              ..children = [
                VDivElement()
                  ..className = 'container'
                  ..children = [
                    VDivElement()
                      ..className = 'content has-text-centered'
                      ..children = [
                        Vp()
                          ..text =
                              'wui_builder by David Marne. The source code is licensed MIT.',
                        VAnchorElement()
                          ..href = 'https://bulma.io'
                          ..children = [
                            VImageElement()
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
