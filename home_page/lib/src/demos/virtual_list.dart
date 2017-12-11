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
  VirtualScrollState getInitialState() =>
      new VirtualScrollState()..chunkTop = 0;

  @override
  VNode render() => new VDivElement()
    ..styleBuilder = _containerStyleBuilder
    ..onScroll = _onScroll
    ..children = _items;

  Iterable<VDivElement> get _items {
    final chunkStartIndex = state.chunkTop ~/ itemHeight;
    return new List<VDivElement>.generate(
      itemsPerChunk,
      (i) => new VDivElement()
        ..styleBuilder = _itemStyleBuilder(i + chunkStartIndex)
        ..text = 'item ${i + chunkStartIndex}',
    )..insert(0, _scrollCapture());
  }

  VDivElement _scrollCapture() =>
      new VDivElement()..styleBuilder = _scrollCaptureStyleBuilder;

  void _scrollCaptureStyleBuilder(CssStyleDeclaration builder) {
    builder
      ..position = 'absolute'
      ..top = '0px'
      ..opacity = '0'
      ..left = '0px'
      ..width = '100%'
      ..maxHeight = '${containerVirtualHeight}px'
      ..height = '${containerVirtualHeight}px';
  }

  void _containerStyleBuilder(CssStyleDeclaration builder) {
    builder
      ..height = '${containerHeight}px'
      ..width = '${containerWidth}px'
      ..overflow = 'auto'
      ..position = 'relative';
  }

  StyleBuilder _itemStyleBuilder(int index) => (builder) {
        builder
          ..height = '${itemHeight}px'
          ..width = '${itemWidth}px'
          ..position = 'absolute'
          ..top = '${index * itemHeight}px';
      };

  void _onScroll(Event e) {
    final chunkTop = ref.scrollTop - (ref.scrollTop % containerHeight);
    if (state.chunkTop != chunkTop)
      setStateOnAnimationFrame((nextProps, prevState) =>
          new VirtualScrollState()..chunkTop = chunkTop);
  }
}
