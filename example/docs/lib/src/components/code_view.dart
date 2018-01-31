import 'package:meta/meta.dart';
import 'package:prettify/prettify.dart';
import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

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
import '../demos/routing.dart';
import '../demos/state_example.dart';
import '../demos/triangle.dart';
import '../demos/virtual_list.dart';
import '../demos/wif_example.dart';
import '../routes/routes.dart';

@immutable
class CodeViewContentProps {
  final String route;
  final String code;
  final VNode content;
  CodeViewContentProps(this.route, this.code, this.content);
}

class CodeViewContent extends PComponent<CodeViewContentProps> {
  CodeViewContent(String route, String code, VNode content)
      : super(new CodeViewContentProps(route, code, content));

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
            ..text = props.code
        ],
      new VDivElement()
        ..className = 'column is-6 hero'
        ..children = [props.content],
    ];
}

class CodeView extends NComponent {
  @override
  VNode render() => new Router([
        new Route(
          DocsRoutes.helloWorld,
          (params) => new CodeViewContent(
                DocsRoutes.helloWorld,
                hello_world,
                new HelloWorld(),
              ),
          useAsDefault: true,
        ),
        new Route(
          DocsRoutes.props,
          (params) => new CodeViewContent(
                DocsRoutes.props,
                props_example,
                new PropsExample('Hello World!'),
              ),
        ),
        new Route(
          DocsRoutes.state,
          (params) => new CodeViewContent(
                DocsRoutes.state,
                state_example,
                new StateExample(),
              ),
        ),
        new Route(
          DocsRoutes.animationFrame,
          (params) => new CodeViewContent(
                DocsRoutes.animationFrame,
                animation_frame,
                new AnimationFrame(),
              ),
        ),
        new Route(
          DocsRoutes.idleCallback,
          (params) => new CodeViewContent(
                DocsRoutes.idleCallback,
                idle_callback,
                new IdleCallbackExample(),
              ),
        ),
        new Route(
          DocsRoutes.keys,
          (params) => new CodeViewContent(
                DocsRoutes.keys,
                keys,
                new KeysExample(),
              ),
        ),
        new Route(
          DocsRoutes.wif,
          (params) => new CodeViewContent(
                DocsRoutes.wif,
                wif_example,
                new WifExample(),
              ),
        ),
        new Route(
          DocsRoutes.routing,
          (params) => new CodeViewContent(
                DocsRoutes.routing,
                routing,
                new RoutingExample(),
              ),
        ),
        new Route(
          DocsRoutes.routingDepth1,
          (params) => new CodeViewContent(
                DocsRoutes.routing,
                routing,
                new RoutingExample(),
              ),
        ),
        new Route(
          DocsRoutes.routingDepth2,
          (params) => new CodeViewContent(
                DocsRoutes.routing,
                routing,
                new RoutingExample(),
              ),
        ),
        new Route(
          DocsRoutes.context,
          (params) => new CodeViewContent(
                DocsRoutes.context,
                context,
                new ContextParent(),
              ),
        ),
        new Route(
          DocsRoutes.immutability,
          (params) => new CodeViewContent(
                DocsRoutes.immutability,
                immutability,
                new ImmutabilityExample(),
              ),
        ),
        new Route(
          DocsRoutes.hocs,
          (params) => new CodeViewContent(
                DocsRoutes.hocs,
                hocs,
                new HOCExample(),
              ),
        ),
        new Route(
          DocsRoutes.functional,
          (params) => new CodeViewContent(
                DocsRoutes.functional,
                functional,
                tweet(),
              ),
        ),
        new Route(
          DocsRoutes.triangle,
          (params) => new CodeViewContent(
                DocsRoutes.triangle,
                triangle,
                new TransformContainer(),
              ),
        ),
        new Route(
          DocsRoutes.virtualList,
          (params) => new CodeViewContent(
                DocsRoutes.virtualList,
                virtual_list,
                new VirtualScroll(),
              ),
        ),
      ]);
}
