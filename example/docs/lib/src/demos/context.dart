import 'package:meta/meta.dart';
import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// context is a map, and themeContextKey is the key into
// that map where Theme is the value
String themeContextKey = 'themeContextKey';

// Theme is an object that ContextParent adds to context.
// This adds Theme to a map that is available to all decendent
// components. IMPORTANT: updated context will not be reflected
// in proceeding child updates. In order to force the children
// to invalidate its contenxt the children must be re-keyed
// to force a full on re-render
class Theme {
  String color;
}

class ContextParent extends NComponent {
  // adds the theme to context when the component is created
  @override
  Map<String, dynamic> getChildContext() => <String, dynamic>{
        themeContextKey: Theme()..color = 'purple',
      };

  @override
  VNode render() => ContextChild(
      message: 'Hello World! What color will i be? Let me check the context.');
}

// ContextChild reads the theme from context and used
// it to render the background color of the text.
class ContextChild extends PCComponent<String, Theme> {
  ContextChild({
    @required String message,
  }) : super(message);

  // A method inherited from PCComponent -> CComponent
  // that declares the context key to use to look up Theme
  @override
  String get contextKey => themeContextKey;

  @override
  VNode render() => VDivElement()
    ..text = props
    ..styleBuilder = (StyleBuilder()..color = contextValue.color);
}
