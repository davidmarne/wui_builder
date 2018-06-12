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
      : super(CodeViewContentProps(route, code, content));

  @override
  void componentDidMount() {
    prettyPrint();
  }

  @override
  void componentDidUpdate(prevP, prevS) {
    prettyPrint();
  }

  @override
  VNode render() => VDivElement()
    ..className = 'columns'
    ..children = [
      VDivElement()
        ..className = 'column is-6 aside hero'
        ..children = [
          VPreElement()
            ..key = props.route
            ..className = 'prettyprint lang-dart'
            ..text = props.code
        ],
      VDivElement()
        ..className = 'column is-6 hero'
        ..children = [props.content],
    ];
}

class CodeView extends NComponent {
  @override
  VNode render() => Router(routes: [
        Route(
          path: DocsRoutes.helloWorld,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.helloWorld,
                hello_world,
                HelloWorld(),
              ),
          useAsDefault: true,
        ),
        Route(
          path: DocsRoutes.props,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.props,
                props_example,
                PropsExample('Hello World!'),
              ),
        ),
        Route(
          path: DocsRoutes.state,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.state,
                state_example,
                StateExample(),
              ),
        ),
        Route(
          path: DocsRoutes.animationFrame,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.animationFrame,
                animation_frame,
                AnimationFrame(),
              ),
        ),
        Route(
          path: DocsRoutes.idleCallback,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.idleCallback,
                idle_callback,
                IdleCallbackExample(),
              ),
        ),
        Route(
          path: DocsRoutes.keys,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.keys,
                keys,
                KeysExample(),
              ),
        ),
        Route(
          path: DocsRoutes.vif,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.vif,
                vif_example,
                VifExample(),
              ),
        ),
        Route(
          path: DocsRoutes.routing,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.routing,
                routing,
                RoutingExample(),
              ),
        ),
        Route(
          path: DocsRoutes.routingDepth1,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.routing,
                routing,
                RoutingExample(),
              ),
        ),
        Route(
          path: DocsRoutes.routingDepth2,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.routing,
                routing,
                RoutingExample(),
              ),
        ),
        Route(
          path: DocsRoutes.context,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.context,
                context,
                ContextParent(),
              ),
        ),
        Route(
          path: DocsRoutes.immutability,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.immutability,
                immutability,
                ImmutabilityExample(),
              ),
        ),
        Route(
          path: DocsRoutes.hocs,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.hocs,
                hocs,
                HOCExample(),
              ),
        ),
        Route(
          path: DocsRoutes.functional,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.functional,
                functional,
                tweet(),
              ),
        ),
        Route(
          path: DocsRoutes.triangle,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.triangle,
                triangle,
                TransformContainer(),
              ),
        ),
        Route(
          path: DocsRoutes.virtualList,
          componentFactory: (params) => CodeViewContent(
                DocsRoutes.virtualList,
                virtual_list,
                VirtualScroll(),
              ),
        ),
      ]);
}
