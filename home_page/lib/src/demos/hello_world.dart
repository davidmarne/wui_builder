import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// Hello world is a component that simply renders
// the text 'hello world' in a div. It takes no props,
// which is why the generic type is Null. It has no state
// which is why we use PComponent rather than Component
class HelloWorld extends PComponent<Null> {
  HelloWorld(Null props) : super(props);

  // render is the method the only method your component
  // must implement. It returns a VNode, which is a virtual
  // node in the virtual dom, that represents a node in the real
  // dom. In this case the VDivElement is a VNode that represents
  // a div in the actual dom with text that says 'Hello World'
  @override
  VNode render() => new VDivElement()..text = 'Hello World!';
}
