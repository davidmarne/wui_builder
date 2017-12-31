// ignore_for_file: constant_identifier_names

const version = '0.0.0';

const functional = r'''
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// Functional components are simply functions that
// return VNodes, rather than writing classes.
//
// You can use HOCs in the functional package to get
// create functional components with lifecycle or state.

// tweet is a function that returns a VNode that renders
// a bulma media object
VNode tweet() => new Varticle()
  ..className = 'media'
  ..children = [
    trumpDumbFace(),
    tweetBody(),
  ];

VNode trumpDumbFace() => new Vfigure()
  ..className = 'media-left'
  ..children = [
    new Vp()
      ..className = 'image is-64x64'
      ..children = [
        new VImageElement()
          ..src =
              'http://dqyfp485dhq1yoa92v2k6m13.wpengine.netdna-cdn.com/wp-content/uploads/2015/11/when-he-said-that-it-was-all-very-strange-500x376.png'
      ]
  ];

VNode tweetBody() => new Vdiv()
  ..className = 'media-content'
  ..children = [
    tweetContent(),
    tweetIcons(),
  ];

VNode tweetContent() => new Vdiv()
  ..className = 'content'
  ..children = [
    new Vp()
      ..children = [
        new Vstrong()..text = 'Donald J. Trump',
        new Vsmall()..text = ' @realDonaldTrump',
        new Vdiv()..text = 'Despite the constant negative press covfefe'
      ]
  ];

VNode tweetIcons() => new Vnav()
  ..className = 'level is-mobile'
  ..children = [
    new Vdiv()
      ..className = 'level-left'
      ..children = [
        tweetIcon('reply'),
        tweetIcon('retweet'),
        tweetIcon('heart'),
      ]
  ];

VNode tweetIcon(String icon) => new Va()
  ..className = 'level-item'
  ..children = [
    new Vspan()
      ..className = 'icon is-small'
      ..children = [new Vi()..className = 'fa fa-$icon']
  ];

''';

const state_example = r'''
import 'dart:html';

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// StateExampleState is a class that contains the state
// of the component. In this case the state object contains
// a single integer, clickCount, gets incremented each time
// the button is clicked
class StateExampleState {
  int clickCount;
}

class StateExample extends SComponent<StateExampleState> {
  // getInitialState is overriden to set the initial
  // click count to 0
  @override
  StateExampleState getInitialState() =>
      new StateExampleState()..clickCount = 0;

  @override
  VNode render() => new VButtonElement()
    ..text = 'Hello World x${state.clickCount}!'
    ..onClick = _onClick;

  // a click handler that calls set state to increment
  // state.clickCount when the button is clicked
  void _onClick(MouseEvent e) {
    setState((nextProps, prevState) =>
        new StateExampleState()..clickCount = prevState.clickCount + 1);
  }
}

''';

const immutability = r'''
import 'dart:html';

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// Immutability is the concept of never mutating the objects
// that drive your view. This means to move to the next state
// or pass new props your should create a new instance of your
// props/state object. In this example one button mutates the
// ChildProps and one creates button creates a new instance.
// Since Child implements shouldComponentUpdate to perform an
// equality check on the props, it will not update if the mutable
// button is clicked, but it will update if the immutable button is clicked.
//
// ChildProps is a class that contains the state
// of the component, which will be passed to the child
// components as props.
class ChildProps {
  int clickCount;
}

class ImmutabilityExample extends SComponent<ChildProps> {
  // getInitialState is overriden to set the initial
  // click count to 0
  @override
  ChildProps getInitialState() => new ChildProps()..clickCount = 0;

  @override
  VNode render() => new VDivElement()
    ..children = [
      new VButtonElement()
        ..text = 'Immutable Update'
        ..onClick = _immutableUpdate,
      new VButtonElement()
        ..text = 'Mutable Update'
        ..onClick = _mutableUpdate,
      new VDivElement()..text = 'ChildProps.clickCount ${state.clickCount}',
      new Child(state), // wrap the child with the pure hoc
    ];

  // _immutableUpdate creates a new instance of ChildProps. This
  // will cause the identity of the props object sent
  // to the child to change after this update
  void _immutableUpdate(MouseEvent e) {
    setState((nextProps, prevState) =>
        new ChildProps()..clickCount = prevState.clickCount + 1);
  }

  // _mutableUpdate mutates the current state object. This
  // will not cause the identity of the props object sent
  // to the child to change after this update
  void _mutableUpdate(MouseEvent e) {
    state.clickCount++;
    setState((nextProps, prevState) => state);
  }
}

class Child extends PComponent<ChildProps> {
  Child(ChildProps props) : super(props);

  // only update if the props have different identities
  // this will prevent the text from updating after
  // the parent performs _mutableUpdate
  @override
  bool shouldComponentUpdate(nextProps, nextState) => props != nextProps;

  @override
  VNode render() =>
      new VDivElement()..text = 'props.clickCount: ${props.clickCount}';
}

''';

const context = r'''
import 'dart:html';

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

class ContextParent extends PComponent<Null> {
  ContextParent(Null props) : super(props);

  // adds the theme to context when the component is created
  @override
  Map<String, dynamic> getChildContext() => <String, dynamic>{
        themeContextKey: new Theme()..color = 'purple',
      };

  @override
  VNode render() => new ContextChild(new ContextChildProps()
    ..message = 'Hello World! What color will i be? Let me check the context.');
}

class ContextChildProps {
  String message;
}

// ContextChild reads the theme from context and used
// it to render the background color of the text.
class ContextChild extends PCComponent<ContextChildProps, Theme> {
  ContextChild(ContextChildProps props) : super(props);

  // A method inherited from PCComponent -> CComponent
  // that declares the context key to use to look up Theme
  @override
  String get contextKey => themeContextKey;

  @override
  VNode render() => new VDivElement()
    ..text = props.message
    ..styleBuilder = _styleBuilder;

  void _styleBuilder(CssStyleDeclaration builder) {
    builder.color = contextValue.color;
  }
}

''';

const animation_frame = r'''
import 'dart:math';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/components.dart';
import 'package:wui_builder/vsvg.dart';

class AnimationFrame extends SComponent<int> {
  final center = 500;

  @override
  int getInitialState() => 0;

  // beforeAnimationFrame is overriden to queue a state
  // update to run on the proceeding animation frame.
  // Here we set the state to a degree value that represents
  // 6 more degrees than the last state
  @override
  BeforeAnimationFrame get beforeAnimationFrame => () {
        setStateOnAnimationFrame((_, s) => (s + 6) % 360);
      };

  @override
  VNode render() => new VSvgSvgElement()
    ..attributes = {
      'height': '1000',
      'width': '1000',
    }
    ..children = [
      new VCircleElement()
        ..attributes = {
          'cx': '$_cx',
          'cy': '$_cy',
          'r': '50',
          'stroke': 'black',
          'stroke-width': '3',
          'fill': 'red',
        },
    ];

  double _toRadians(int degree) => degree.toDouble() * PI / 180.0;
  double get _cy => (sin(_toRadians(state)) * 400) + 500;
  double get _cx => (cos(_toRadians(state)) * 400) + 500;
}

''';

const hocs = r'''
import 'dart:html';

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// High Order Components (HOCs) wrap other components
// to provide additional functionality. In this case
// PureHOC wraps another component, and only updates
// if the props of the child change. HOCs are generally
// used when writing functional components, but as this
// example shows, they can be written as classes as well.
class PureHOC extends PComponent<Component> {
  PureHOC(Component props) : super(props);

  @override
  bool shouldComponentUpdate(nextProps, __) => props.props != nextProps.props;

  @override
  VNode render() => props;
}

// ChildProps is a class that contains the state
// of the component, which will be passed to the child
// components as props.
class ChildProps {
  int clickCount;
}

class HOCExample extends SComponent<ChildProps> {
  // getInitialState is overriden to set the initial
  // click count to 0
  @override
  ChildProps getInitialState() => new ChildProps()..clickCount = 0;

  @override
  VNode render() => new VDivElement()
    ..children = [
      new VButtonElement()
        ..text = 'Immutable Update'
        ..onClick = _immutableUpdate,
      new VButtonElement()
        ..text = 'Mutable Update'
        ..onClick = _mutableUpdate,
      new VDivElement()..text = 'ChildProps.clickCount ${state.clickCount}',
      new PureHOC(new Child(state)), // wrap the child with the pure hoc
    ];

  // _immutableUpdate creates a new instance of ChildProps. This
  // will cause the identity of the props object sent
  // to the child to change after this update
  void _immutableUpdate(MouseEvent e) {
    setState((nextProps, prevState) =>
        new ChildProps()..clickCount = prevState.clickCount + 1);
  }

  // _mutableUpdate mutates the current state object. This
  // will not cause the identity of the props object sent
  // to the child to change after this update
  void _mutableUpdate(MouseEvent e) {
    state.clickCount++;
    setState((nextProps, prevState) => state);
  }
}

// Note, unlike the immutability example, this component does not
// implment shouldComponentUpdate. The HOC provides that shouldComponentUpdate
// check for Child.
class Child extends PComponent<ChildProps> {
  Child(ChildProps props) : super(props);

  @override
  VNode render() =>
      new VDivElement()..text = 'props.clickCount: ${props.clickCount}';
}

''';

const virtual_list = r'''
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

''';

const props_example = r'''
import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// PropsExampleProps is a class that is passed to the
// PropsExample component on instantiation. Props provide
// components with any data they need to render. In this
// case it contains a message to render into a div
class PropsExampleProps {
  String message;
}

// Hello world is a component that simply renders
// the message property from its props object into a div
class PropsExample extends PComponent<PropsExampleProps> {
  PropsExample(PropsExampleProps props) : super(props);

  @override
  VNode render() => new VDivElement()..text = props.message;
}

''';

const triangle = r'''
import 'dart:async';
import 'dart:html';

import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/components.dart';

// This example demos the combination of setStateOnAnimationFrame
// and setStateOnIdle together. The TransformContainer updates
// the transform, which is high priority, every animation frame. While
// the CounterStateHOC updates the numbers on each dot on idle callbacks.
// This prevents the updating of the numbers from making the transform
// animation chunky.

// TransformContainer manages updating the css transform
class TransformContainer extends SComponent<int> {
  final int start;
  TransformContainer() : start = new DateTime.now().millisecondsSinceEpoch;

  @override
  int getInitialState() => new DateTime.now().millisecondsSinceEpoch;

  @override
  BeforeAnimationFrame get beforeAnimationFrame => () {
        setStateOnAnimationFrame(
            (_, s) => new DateTime.now().millisecondsSinceEpoch - start);
      };

  void _styleBuilder(CssStyleDeclaration styleBuilder) {
    final t = (state / 1000) % 10;
    final scale = 1 + (t > 5 ? 10 - t : t) / 10;
    final transform = 'scaleX(${scale / 2.1}) scaleY(0.7) translateZ(0.1px)';

    styleBuilder
      ..transform = transform
      ..position = 'absolute'
      ..transformOrigin = '0 0'
      ..left = '50%'
      ..top = '50%'
      ..width = '10px'
      ..height = '10px'
      ..background = '#eee';
  }

  // UpdateBlocker prevents the whole component tree from rerendering
  // every frame. We only want to update the style on the first
  // VDivElement every frame
  @override
  VNode render() => new VDivElement()
    ..styleBuilder = _styleBuilder
    ..children = [
      new UpdateBlocker(
        new VDivElement()
          ..children = [
            new CounterStateHOC(),
          ],
      ),
    ];
}

// CounterStateHOC is a high order component that mananges
// increasing the number on each dot every second
class CounterStateHOC extends SComponent<int> {
  @override
  int getInitialState() => 0;

  @override
  void componentDidMount() {
    new Timer.periodic(const Duration(seconds: 1),
        (_) => setStateOnIdle((_, prevState) => (prevState % 10) + 1));
  }

  @override
  VNode render() => new SierpinskiTriangle(
        new SierpinskiTriangleProps()
          ..x = 0.0
          ..y = 0.0
          ..s = 1000.0
          ..seconds = state,
      );
}

class SierpinskiTriangleProps {
  double x;
  double y;
  double s;
  int seconds;
}

class SierpinskiTriangle extends PComponent<SierpinskiTriangleProps> {
  final targetSize = 25.0;

  SierpinskiTriangle(SierpinskiTriangleProps props) : super(props);

  @override
  bool shouldComponentUpdate(nextProps, _) => !(props.x == nextProps.x &&
      props.y == nextProps.y &&
      props.s == nextProps.s &&
      props.seconds == nextProps.seconds);

  @override
  VNode render() {
    if (props.s < targetSize)
      return new Dot(
        new DotProps()
          ..x = props.x - (targetSize / 2.0)
          ..y = props.y - (targetSize / 2.0)
          ..size = targetSize
          ..text = '${props.seconds}',
      );

    final e = window.performance.now() + 0.8;
    while (window.performance.now() < e) {
      // Artificially long execution time.
    }

    final s = props.s / 2;
    return new VDivElement()
      ..children = [
        new SierpinskiTriangle(
          new SierpinskiTriangleProps()
            ..x = props.x
            ..y = props.y - (s / 2.0)
            ..s = s
            ..seconds = props.seconds,
        ),
        new SierpinskiTriangle(
          new SierpinskiTriangleProps()
            ..x = props.x - s
            ..y = props.y + (s / 2.0)
            ..s = s
            ..seconds = props.seconds,
        ),
        new SierpinskiTriangle(
          new SierpinskiTriangleProps()
            ..x = props.x + s
            ..y = props.y + (s / 2.0)
            ..s = s
            ..seconds = props.seconds,
        ),
      ];
  }
}

class DotProps {
  double size;
  double x;
  double y;
  String text;
}

class Dot extends Component<DotProps, Null> {
  final center = 500;

  Dot(DotProps props) : super(props);

  void _styleBuilder(CssStyleDeclaration b) {
    final s = props.size * 1.3;
    b
      ..position = 'absolute'
      ..background = '#61dafb'
      ..font = 'normal 15px sans-serif'
      ..textAlign = 'center'
      ..cursor = 'pointer'
      ..width = '${s}px'
      ..height = '${s}px'
      ..left = '${props.x}px'
      ..top = '${props.y}px'
      ..borderRadius = '${s / 2}px'
      ..lineHeight = '${s}px';
  }

  @override
  VNode render() => new VDivElement()
    ..styleBuilder = _styleBuilder
    ..text = props.text;
}

''';

const idle_callback = r'''
import 'dart:html';

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

const numRows = 5000;

// IdleCallbackExample has a button that updates all `numRows` rows
// synchronsouly and one that does so on idle callbacks. You
// will notice the button animation is quicker to decompress with
// idle callback because the main thread is allowed to work between
// the start of the update and the update finishing.
class IdleCallbackExample extends SComponent<int> {
  @override
  VNode render() => new VDivElement()
    ..styleBuilder = _containerStyleBuilder
    ..children = [
      _buttonGroup(),
      _table(),
    ];

  @override
  int getInitialState() => 0;

  VNode _buttonGroup() => new VDivElement()
    ..children = [
      new VButtonElement()
        ..text = 'dart vdom update sync'
        ..onClick = _update,
      new VButtonElement()
        ..text = 'dart vdom update async'
        ..onClick = _updateOnIdle,
    ];

  void _update(dynamic _) {
    setState((_, prevState) => prevState + 1);
  }

  void _updateOnIdle(dynamic _) {
    setStateOnIdle((_, prevState) => prevState + 1);
  }

  VNode _table() => new VTableElement()
    ..children = new List<VNode>.generate(
        numRows,
        (i) => new VTableRowElement()
          ..children = [
            new Vtd()..text = 'row $i col 1 update ${state} | ',
            new Vtd()..text = 'row $i col 2 update ${state} | ',
            new Vtd()..text = 'row $i col 3 update ${state}',
          ]);

  void _containerStyleBuilder(CssStyleDeclaration builder) {
    builder
      ..overflow = 'scroll'
      ..maxHeight = '1000px';
  }
}

''';

const hello_world = r'''
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

''';
