import 'dart:html';

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

const int itemHeight = 20;
const int itemWidth = 200;
const int containerHeight = 400;
const int containerWidth = itemWidth;
const int chunkHeight = containerHeight * 2;
const int itemsPerChunk = chunkHeight ~/ itemHeight;
const int containerVirtualHeight = itemHeight * 100000;

class VirtualScrollState {
  int chunkTop;
}

class VirtualScroll extends SComponent<VirtualScrollState> {
  @override
  VirtualScrollState getInitialState() => VirtualScrollState()..chunkTop = 0;

  @override
  VNode render() => VDivElement()
    ..onScroll = _onScroll
    ..children = _items
    ..styleBuilder = (StyleBuilder()
      ..height = '${containerHeight}px'
      ..width = '${containerWidth}px'
      ..overflow = 'auto'
      ..position = 'relative');

  Iterable<VDivElement> get _items {
    final chunkStartIndex = state.chunkTop ~/ itemHeight;
    return List<VDivElement>.generate(
      itemsPerChunk,
      (i) => VDivElement()
        ..styleBuilder = _itemStyleBuilder(i + chunkStartIndex)
        ..text = 'item ${i + chunkStartIndex}',
    )..insert(0, _scrollCapture());
  }

  VDivElement _scrollCapture() => VDivElement()
    ..styleBuilder = (StyleBuilder()
      ..position = 'absolute'
      ..top = '0px'
      ..opacity = '0'
      ..left = '0px'
      ..width = '100%'
      ..maxHeight = '${containerVirtualHeight}px'
      ..height = '${containerVirtualHeight}px');

  StyleBuilder _itemStyleBuilder(int index) => StyleBuilder()
    ..height = '${itemHeight}px'
    ..width = '${itemWidth}px'
    ..position = 'absolute'
    ..top = '${index * itemHeight}px';

  void _onScroll(Event e) {
    final refElement = ref as Element;
    final chunkTop =
        refElement.scrollTop - (refElement.scrollTop % containerHeight);
    if (state.chunkTop != chunkTop)
      setStateOnAnimationFrame(
          (nextProps, prevState) => VirtualScrollState()..chunkTop = chunkTop);
  }
}
