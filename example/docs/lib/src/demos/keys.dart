import 'dart:html';

import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/components.dart';

// KeysExample shows a two list of stateful components that can be
// reordered. The keyed list preserves the state for a row when it is
// moved, whild the non-keyed list does not. Each row has an string
// representing it a prop value and another integer representing
// a state value.
class KeysExample extends NComponent {
  @override
  VNode render() => Vdiv()
    ..className = 'columns'
    ..children = [
      Vdiv()
        ..className = 'column'
        ..children = [
          ReorderableList(true),
        ],
      Vdiv()
        ..className = 'column'
        ..children = [
          ReorderableList(false),
        ],
    ];
}

class ReorderableListState {
  List<String> items;
  String selected;
}

class ReorderableList extends Component<bool, ReorderableListState> {
  ReorderableList(bool isKeyed) : super(isKeyed);

  @override
  ReorderableListState getInitialState() => ReorderableListState()
    ..items = ['foo', 'bar', 'baz']
    ..selected = 'foo';

  @override
  VNode render() => Vnav()
    ..className = 'panel'
    ..children = _panelItems();

  bool get _isKeyed => props;

  Iterable<VNode> _panelItems() => [
        _heading(),
        _controls(),
      ]..addAll(_items());

  VNode _heading() => Vp()
    ..className = 'panel-heading'
    ..text = _isKeyed ? 'Keyed' : 'Not Keyed';

  VNode _controls() => Vp()
    ..className = 'panel-tabs'
    ..children = [
      Va()
        ..onClick = _onMoveUp
        ..text = 'Move Up',
      Va()
        ..onClick = _onMoveDown
        ..text = 'Move Down',
    ];

  Iterable<VNode> _items() => state.items.map(
        (item) => ReorderableListItem(
            _isKeyed ? item : null, // give it a non-null key if props is true
            ReorderableListItemProps()
              ..isSelected = item == state.selected
              ..item = item
              ..onSelect = _onSelect),
      );

  void _onMoveUp(Event e) {
    setState(_moveUp);
  }

  void _onMoveDown(Event e) {
    setState(_moveDown);
  }

  void _onSelect(String item) {
    setState((_, prevState) => ReorderableListState()
      ..selected = item
      ..items = prevState.items);
  }

  ReorderableListState _moveUp(bool props, ReorderableListState prevState) {
    final selectedIndex = prevState.items.indexOf(prevState.selected);
    if (selectedIndex == 0) return prevState;
    final newList = prevState.items.toList();
    newList[selectedIndex] = newList[selectedIndex - 1];
    newList[selectedIndex - 1] = prevState.selected;
    return ReorderableListState()
      ..selected = prevState.selected
      ..items = newList;
  }

  ReorderableListState _moveDown(bool props, ReorderableListState prevState) {
    final selectedIndex = prevState.items.indexOf(prevState.selected);
    if (selectedIndex == prevState.items.length - 1) return prevState;
    final newList = prevState.items.toList();
    newList[selectedIndex] = newList[selectedIndex + 1];
    newList[selectedIndex + 1] = prevState.selected;
    return ReorderableListState()
      ..selected = prevState.selected
      ..items = newList;
  }
}

typedef void OnSelect(String item);

class ReorderableListItemProps {
  String item;
  bool isSelected;
  OnSelect onSelect;
}

class ReorderableListItem extends Component<ReorderableListItemProps, int> {
  ReorderableListItem(String key, ReorderableListItemProps props)
      : super(props, key: key);

  @override
  int getInitialState() => 0;

  @override
  VNode render() => Va()
    ..className = 'panel-block ${props.isSelected ? "is-active" : ""}'
    ..onClick = _onItemSelect
    ..children = [
      Vspan()..text = 'props: ${props.item}, state: $state',
      Va()
        ..className = 'button'
        ..text = 'increment state'
        ..onClick = _increment,
    ];

  void _onItemSelect(Event e) {
    props.onSelect(props.item);
  }

  void _increment(Event e) {
    setState((_, prevState) => prevState + 1);
  }
}
