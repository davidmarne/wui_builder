part of wui_builder;

abstract class VNode {
  Element ref;
  VNode parent;
  dynamic key;
}

typedef void EventHandler<T>(T event);

typedef void StyleBuilder(CssStyleDeclaration style);
