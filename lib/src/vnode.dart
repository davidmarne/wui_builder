part of wui_builder;

abstract class VNode {
  Element ref;
}

typedef void EventHandler<T>(T event);

typedef void StyleBuilder(CssStyleDeclaration style);
