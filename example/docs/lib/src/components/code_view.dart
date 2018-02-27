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
import '../demos/vif_example.dart';
import '../demos/virtual_list.dart';
import '../routes/routes.dart';

@immutable
class CodeViewContentProps {
  final String route;
  final String code;
  final VNode content;
  const CodeViewContentProps(this.route, this.code, this.content);
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
  VNode render() => new Router(routes: [
        new Route(
          path: DocsRoutes.helloWorld,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.helloWorld,
                hello_world,
                new HelloWorld(),
              ),
          useAsDefault: true,
        ),
        new Route(
          path: DocsRoutes.props,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.props,
                props_example,
                new PropsExample('Hello World!'),
              ),
        ),
        new Route(
          path: DocsRoutes.state,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.state,
                state_example,
                new StateExample(),
              ),
        ),
        new Route(
          path: DocsRoutes.animationFrame,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.animationFrame,
                animation_frame,
                new AnimationFrame(),
              ),
        ),
        new Route(
          path: DocsRoutes.idleCallback,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.idleCallback,
                idle_callback,
                new IdleCallbackExample(),
              ),
        ),
        new Route(
          path: DocsRoutes.keys,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.keys,
                keys,
                new KeysExample(),
              ),
        ),
        new Route(
          path: DocsRoutes.vif,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.vif,
                vif_example,
                new VifExample(),
              ),
        ),
        new Route(
          path: DocsRoutes.routing,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.routing,
                routing,
                new RoutingExample(),
              ),
        ),
        new Route(
          path: DocsRoutes.routingDepth1,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.routing,
                routing,
                new RoutingExample(),
              ),
        ),
        new Route(
          path: DocsRoutes.routingDepth2,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.routing,
                routing,
                new RoutingExample(),
              ),
        ),
        new Route(
          path: DocsRoutes.context,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.context,
                context,
                new ContextParent(),
              ),
        ),
        new Route(
          path: DocsRoutes.immutability,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.immutability,
                immutability,
                new ImmutabilityExample(),
              ),
        ),
        new Route(
          path: DocsRoutes.hocs,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.hocs,
                hocs,
                new HOCExample(),
              ),
        ),
        new Route(
          path: DocsRoutes.functional,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.functional,
                functional,
                tweet(),
              ),
        ),
        new Route(
          path: DocsRoutes.triangle,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.triangle,
                triangle,
                new TransformContainer(),
              ),
        ),
        new Route(
          path: DocsRoutes.virtualList,
          componentFactory: (params) => new CodeViewContent(
                DocsRoutes.virtualList,
                virtual_list,
                new VirtualScroll(),
              ),
        ),
      ]);
}
