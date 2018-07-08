import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

const numRows = 5000;

// IdleCallbackExample has a button that updates all `numRows` rows
// synchronsouly and one that does so on idle callbacks. You
// will notice the button animation is quicker to decompress with
// idle callback because the main thread is allowed to work between
// the start of the update and the update finishing.
class IdleCallbackExample extends SComponent<int> {
  @override
  VNode render() => VDivElement()
    ..styleBuilder = (StyleBuilder()
      ..overflow = 'scroll'
      ..maxHeight = '1000px')
    ..children = [
      _buttonGroup(),
      _table(),
    ];

  @override
  int getInitialState() => 0;

  VNode _buttonGroup() => VDivElement()
    ..children = [
      VButtonElement()
        ..text = 'dart vdom update sync'
        ..onClick = _update,
      VButtonElement()
        ..text = 'dart vdom update async'
        ..onClick = _updateOnIdle,
    ];

  void _update(dynamic _) {
    setState((_, prevState) => prevState + 1);
  }

  void _updateOnIdle(dynamic _) {
    setStateOnIdle((_, prevState) => prevState + 1);
  }

  VNode _table() => VTableElement()
    ..children = List<VNode>.generate(
        numRows,
        (i) => VTableRowElement()
          ..children = [
            Vtd()..text = 'row $i col 1 update ${state} | ',
            Vtd()..text = 'row $i col 2 update ${state} | ',
            Vtd()..text = 'row $i col 3 update ${state}',
          ]);
}
