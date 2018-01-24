import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:prettify/prettify.dart';

import '../demo_code_strings/demo_code_strings.dart';
import '../demos/animation_frame.dart';
import '../demos/context.dart';
import '../demos/functional.dart';
import '../demos/hello_world.dart';
import '../demos/hocs.dart';
import '../demos/idle_callback.dart';
import '../demos/immutability.dart';
import '../demos/keys.dart';
import '../demos/props_example.dart';
import '../demos/state_example.dart';
import '../demos/triangle.dart';
import '../demos/virtual_list.dart';
import '../routes/routes.dart';

class CodeViewProps {
  Route route;
}

class CodeView extends PComponent<CodeViewProps> {
  CodeView(CodeViewProps props) : super(props);

  @override
  void componentDidMount() {
    prettyPrint();
  }

  @override
  void componentDidUpdate(prevP, prevS) {
    prettyPrint();
  }

  @override
  VNode render() => new VDivElement()
    ..className = 'columns'
    ..children = [
      new VDivElement()
        ..className = 'column is-6 aside hero'
        ..children = [
          new VPreElement()
            ..key = props.route
            ..className = 'prettyprint lang-dart'
            ..text = codeContent()
        ],
      new VDivElement()
        ..className = 'column is-6 hero'
        ..children = [currentExample()],
    ];

  VNode currentExample() {
    switch (props.route) {
      case Route.helloWorld:
        return new HelloWorld();
      case Route.props:
        return new PropsExample(
            new PropsExampleProps()..message = 'Hello World!');
      case Route.state:
        return new StateExample();
      case Route.animationFrame:
        return new AnimationFrame();
      case Route.idleCallback:
        return new IdleCallbackExample();
      case Route.keys:
        return new KeysExample();
      case Route.context:
        return new ContextParent();
      case Route.immutability:
        return new ImmutabilityExample();
      case Route.hocs:
        return new HOCExample();
      case Route.functional:
        return tweet();
      case Route.triangle:
        return new TransformContainer();
      case Route.virtualList:
        return new VirtualScroll();
    }
    return new VDivElement()..text = 'throw';
  }

  String codeContent() {
    switch (props.route) {
      case Route.helloWorld:
        return hello_world;
      case Route.props:
        return props_example;
      case Route.state:
        return state_example;
      case Route.animationFrame:
        return animation_frame;
      case Route.idleCallback:
        return idle_callback;
      case Route.keys:
        return keys;
      case Route.context:
        return context;
      case Route.immutability:
        return immutability;
      case Route.hocs:
        return hocs;
      case Route.functional:
        return functional;
      case Route.triangle:
        return triangle;
      case Route.virtualList:
        return virtual_list;
    }
    return 'throw';
  }
}
