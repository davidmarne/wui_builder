// ignore_for_file: constant_identifier_names

const version = '0.5.0';

const keys = r'''
import 'dart:html';

import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/components.dart';

// KeysExample shows a two list of stateful components that can be
// reordered. The keyed list preserves the state for a row when it is
// moved, whild the non-keyed list does not. Each row has an string
// representing it a prop value and another integer representing
// a state value.
class KeysExample extends NComponent {
  @override
  VNode render() => Vdiv()
    ..className = 'columns'
    ..children = [
      Vdiv()
        ..className = 'column'
        ..children = [
          ReorderableList(true),
        ],
      Vdiv()
        ..className = 'column'
        ..children = [
          ReorderableList(false),
        ],
    ];
}

class ReorderableListState {
  List<String> items;
  String selected;
}

class ReorderableList extends Component<bool, ReorderableListState> {
  ReorderableList(bool isKeyed) : super(isKeyed);

  @override
  ReorderableListState getInitialState() => ReorderableListState()
    ..items = ['foo', 'bar', 'baz']
    ..selected = 'foo';

  @override
  VNode render() => Vnav()
    ..className = 'panel'
    ..children = _panelItems();

  bool get _isKeyed => props;

  Iterable<VNode> _panelItems() => [
        _heading(),
        _controls(),
      ]..addAll(_items());

  VNode _heading() => Vp()
    ..className = 'panel-heading'
    ..text = _isKeyed ? 'Keyed' : 'Not Keyed';

  VNode _controls() => Vp()
    ..className = 'panel-tabs'
    ..children = [
      Va()
        ..onClick = _onMoveUp
        ..text = 'Move Up',
      Va()
        ..onClick = _onMoveDown
        ..text = 'Move Down',
    ];

  Iterable<VNode> _items() => state.items.map(
        (item) => ReorderableListItem(
            _isKeyed ? item : null, // give it a non-null key if props is true
            ReorderableListItemProps()
              ..isSelected = item == state.selected
              ..item = item
              ..onSelect = _onSelect),
      );

  void _onMoveUp(Event e) {
    setState(_moveUp);
  }

  void _onMoveDown(Event e) {
    setState(_moveDown);
  }

  void _onSelect(String item) {
    setState((_, prevState) => ReorderableListState()
      ..selected = item
      ..items = prevState.items);
  }

  ReorderableListState _moveUp(bool props, ReorderableListState prevState) {
    final selectedIndex = prevState.items.indexOf(prevState.selected);
    if (selectedIndex == 0) return prevState;
    final newList = prevState.items.toList();
    newList[selectedIndex] = newList[selectedIndex - 1];
    newList[selectedIndex - 1] = prevState.selected;
    return ReorderableListState()
      ..selected = prevState.selected
      ..items = newList;
  }

  ReorderableListState _moveDown(bool props, ReorderableListState prevState) {
    final selectedIndex = prevState.items.indexOf(prevState.selected);
    if (selectedIndex == prevState.items.length - 1) return prevState;
    final newList = prevState.items.toList();
    newList[selectedIndex] = newList[selectedIndex + 1];
    newList[selectedIndex + 1] = prevState.selected;
    return ReorderableListState()
      ..selected = prevState.selected
      ..items = newList;
  }
}

typedef void OnSelect(String item);

class ReorderableListItemProps {
  String item;
  bool isSelected;
  OnSelect onSelect;
}

class ReorderableListItem extends Component<ReorderableListItemProps, int> {
  ReorderableListItem(String key, ReorderableListItemProps props)
      : super(props, key: key);

  @override
  int getInitialState() => 0;

  @override
  VNode render() => Va()
    ..className = 'panel-block ${props.isSelected ? "is-active" : ""}'
    ..onClick = _onItemSelect
    ..children = [
      Vspan()..text = 'props: ${props.item}, state: $state',
      Va()
        ..className = 'button'
        ..text = 'increment state'
        ..onClick = _increment,
    ];

  void _onItemSelect(Event e) {
    props.onSelect(props.item);
  }

  void _increment(Event e) {
    setState((_, prevState) => prevState + 1);
  }
}

''';

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
VNode tweet() => Varticle()
  ..className = 'media'
  ..children = [
    avatar(),
    tweetBody(),
  ];

VNode avatar() => Vfigure()
  ..className = 'media-left'
  ..children = [
    Vp()
      ..className = 'image is-64x64'
      ..children = [
        VImageElement()
          ..src =
              'https://pbs.twimg.com/profile_images/585565077207678977/N_eNSBXi_400x400.jpg'
      ]
  ];

VNode tweetBody() => Vdiv()
  ..className = 'media-content'
  ..children = [
    tweetContent(),
    tweetIcons(),
  ];

VNode tweetContent() => Vdiv()
  ..className = 'content'
  ..children = [
    Vp()
      ..children = [
        Vstrong()..text = 'KANYE WEST',
        Vsmall()..text = ' @kanyewest',
        Vdiv()
          ..text = 'I\'m not even gon lie to you. I love me so much right now'
      ]
  ];

VNode tweetIcons() => Vnav()
  ..className = 'level is-mobile'
  ..children = [
    Vdiv()
      ..className = 'level-left'
      ..children = [
        tweetIcon('reply'),
        tweetIcon('retweet'),
        tweetIcon('heart'),
      ]
  ];

VNode tweetIcon(String icon) => Va()
  ..className = 'level-item'
  ..children = [
    Vspan()
      ..className = 'icon is-small'
      ..children = [Vi()..className = 'fa fa-$icon']
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
  StateExampleState getInitialState() => StateExampleState()..clickCount = 0;

  @override
  VNode render() => VButtonElement()
    ..text = 'Hello World x${state.clickCount}!'
    ..onClick = _onClick;

  // a click handler that calls set state to increment
  // state.clickCount when the button is clicked
  void _onClick(MouseEvent e) {
    setState((nextProps, prevState) =>
        StateExampleState()..clickCount = prevState.clickCount + 1);
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
  ChildProps getInitialState() => ChildProps()..clickCount = 0;

  @override
  VNode render() => VDivElement()
    ..children = [
      VButtonElement()
        ..text = 'Immutable Update'
        ..onClick = _immutableUpdate,
      VButtonElement()
        ..text = 'Mutable Update'
        ..onClick = _mutableUpdate,
      VDivElement()..text = 'ChildProps.clickCount ${state.clickCount}',
      Child(state), // wrap the child with the pure hoc
    ];

  // _immutableUpdate creates a new instance of ChildProps. This
  // will cause the identity of the props object sent
  // to the child to change after this update
  void _immutableUpdate(MouseEvent e) {
    setState((nextProps, prevState) =>
        ChildProps()..clickCount = prevState.clickCount + 1);
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
      VDivElement()..text = 'props.clickCount: ${props.clickCount}';
}

''';

const vif_example = r'''
import 'dart:async';
import 'dart:html';

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

enum LoadingState {
  loggedOut,
  loggingIn,
  loggedIn,
  loggingOut,
}

class VifExample extends SComponent<LoadingState> {
  @override
  LoadingState getInitialState() => LoadingState.loggedOut;

  @override
  VNode render() => Vdiv()
    ..children = [
      VButtonElement()
        ..vif = state == LoadingState.loggedOut
        ..onClick = _onLogIn
        ..text = 'log in',
      VButtonElement()
        ..vif = state == LoadingState.loggingIn
        ..disabled = true
        ..text = 'logging in',
      VButtonElement()
        ..vif = state == LoadingState.loggedIn
        ..onClick = _onLogOut
        ..text = 'log out',
      VButtonElement()
        ..vif = state == LoadingState.loggingOut
        ..disabled = true
        ..text = 'loging out',
    ];

  void _onLogIn(MouseEvent e) {
    setStateOnAnimationFrame((nextProps, prevState) => LoadingState.loggingIn);
    Future<Null>.delayed(const Duration(seconds: 2), () {
      setStateOnAnimationFrame((nextProps, prevState) => LoadingState.loggedIn);
    });
  }

  void _onLogOut(MouseEvent e) {
    setStateOnAnimationFrame((nextProps, prevState) => LoadingState.loggingOut);
    Future<Null>.delayed(const Duration(seconds: 2), () {
      setStateOnAnimationFrame(
          (nextProps, prevState) => LoadingState.loggedOut);
    });
  }
}

''';

const context = r'''
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
  VNode render() => VSvgSvgElement()
    ..attributes = {
      'height': '1000',
      'width': '1000',
    }
    ..children = [
      VCircleElement()
        ..attributes = {
          'cx': '$_cx',
          'cy': '$_cy',
          'r': '50',
          'stroke': 'black',
          'stroke-width': '3',
          'fill': 'red',
        },
    ];

  double _toRadians(int degree) => degree.toDouble() * pi / 180.0;
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
  ChildProps getInitialState() => ChildProps()..clickCount = 0;

  @override
  VNode render() => VDivElement()
    ..children = [
      VButtonElement()
        ..text = 'Immutable Update'
        ..onClick = _immutableUpdate,
      VButtonElement()
        ..text = 'Mutable Update'
        ..onClick = _mutableUpdate,
      VDivElement()..text = 'ChildProps.clickCount ${state.clickCount}',
      PureHOC(
        Child(state),
      ), // wrap the child with the pure hoc
    ];

  // _immutableUpdate creates a instance of ChildProps. This
  // will cause the identity of the props object sent
  // to the child to change after this update
  void _immutableUpdate(MouseEvent e) {
    setState((nextProps, prevState) =>
        ChildProps()..clickCount = prevState.clickCount + 1);
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
      VDivElement()..text = 'props.clickCount: ${props.clickCount}';
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
  VirtualScrollState getInitialState() => VirtualScrollState()..chunkTop = 0;

  @override
  VNode render() => VDivElement()
    ..onScroll = _onScroll
    ..children = _items
    ..styleBuilder = (StyleBuilder()
      ..height = '${containerHeight}px'
      ..width = '${containerWidth}px'
      ..overflow = 'auto'
      ..position = 'relative');

  Iterable<VDivElement> get _items {
    final chunkStartIndex = state.chunkTop ~/ itemHeight;
    return List<VDivElement>.generate(
      itemsPerChunk,
      (i) => VDivElement()
        ..styleBuilder = _itemStyleBuilder(i + chunkStartIndex)
        ..text = 'item ${i + chunkStartIndex}',
    )..insert(0, _scrollCapture());
  }

  VDivElement _scrollCapture() => VDivElement()
    ..styleBuilder = (StyleBuilder()
      ..position = 'absolute'
      ..top = '0px'
      ..opacity = '0'
      ..left = '0px'
      ..width = '100%'
      ..maxHeight = '${containerVirtualHeight}px'
      ..height = '${containerVirtualHeight}px');

  StyleBuilder _itemStyleBuilder(int index) => StyleBuilder()
    ..height = '${itemHeight}px'
    ..width = '${itemWidth}px'
    ..position = 'absolute'
    ..top = '${index * itemHeight}px';

  void _onScroll(Event e) {
    final refElement = ref as Element;
    final chunkTop =
        refElement.scrollTop - (refElement.scrollTop % containerHeight);
    if (state.chunkTop != chunkTop)
      setStateOnAnimationFrame(
          (nextProps, prevState) => VirtualScrollState()..chunkTop = chunkTop);
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
  final String message;
  PropsExampleProps(this.message);
}

// Hello world is a component that simply renders
// the message property from its props object into a div
class PropsExample extends PComponent<PropsExampleProps> {
  PropsExample(String message) : super(PropsExampleProps(message));

  @override
  VNode render() => VDivElement()..text = props.message;
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
  TransformContainer() : start = DateTime.now().millisecondsSinceEpoch;

  @override
  int getInitialState() => DateTime.now().millisecondsSinceEpoch;

  @override
  BeforeAnimationFrame get beforeAnimationFrame => () {
        setStateOnAnimationFrame(
            (_, s) => DateTime.now().millisecondsSinceEpoch - start);
      };

  StyleBuilder _styleBuilder() {
    final t = (state / 1000) % 10;
    final scale = 1 + (t > 5 ? 10 - t : t) / 10;
    final transform = 'scaleX(${scale / 2.1}) scaleY(0.7) translateZ(0.1px)';

    return StyleBuilder()
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
  VNode render() => VDivElement()
    ..styleBuilder = _styleBuilder()
    ..children = [
      UpdateBlocker(
        child: VDivElement()
          ..children = [
            CounterStateHOC(),
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
    Timer.periodic(const Duration(seconds: 1),
        (_) => setStateOnIdle((_, prevState) => (prevState % 10) + 1));
  }

  @override
  VNode render() => SierpinskiTriangle(
        SierpinskiTriangleProps()
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
      return Dot(
        DotProps()
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
    return VDivElement()
      ..children = [
        SierpinskiTriangle(
          SierpinskiTriangleProps()
            ..x = props.x
            ..y = props.y - (s / 2.0)
            ..s = s
            ..seconds = props.seconds,
        ),
        SierpinskiTriangle(
          SierpinskiTriangleProps()
            ..x = props.x - s
            ..y = props.y + (s / 2.0)
            ..s = s
            ..seconds = props.seconds,
        ),
        SierpinskiTriangle(
          SierpinskiTriangleProps()
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

  StyleBuilder _styleBuilder() {
    final s = props.size * 1.3;
    return StyleBuilder()
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
  VNode render() => VDivElement()
    ..styleBuilder = _styleBuilder()
    ..text = props.text;
}

''';

const idle_callback = r'''
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
  VNode render() => VDivElement()
    ..styleBuilder = (StyleBuilder()
      ..overflow = 'scroll'
      ..maxHeight = '1000px')
    ..children = [
      _buttonGroup(),
      _table(),
    ];

  @override
  int getInitialState() => 0;

  VNode _buttonGroup() => VDivElement()
    ..children = [
      VButtonElement()
        ..text = 'dart vdom update sync'
        ..onClick = _update,
      VButtonElement()
        ..text = 'dart vdom update async'
        ..onClick = _updateOnIdle,
    ];

  void _update(dynamic _) {
    setState((_, prevState) => prevState + 1);
  }

  void _updateOnIdle(dynamic _) {
    setStateOnIdle((_, prevState) => prevState + 1);
  }

  VNode _table() => VTableElement()
    ..children = List<VNode>.generate(
        numRows,
        (i) => VTableRowElement()
          ..children = [
            Vtd()..text = 'row $i col 1 update ${state} | ',
            Vtd()..text = 'row $i col 2 update ${state} | ',
            Vtd()..text = 'row $i col 3 update ${state}',
          ]);
}

''';

const hello_world = r'''
import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// Hello world is a component that simply renders
// the text 'hello world' in a div. It takes no props,
// and it has no state, which is why we use NComponent rather than Component
class HelloWorld extends NComponent {
  // render is the method the only method your component
  // must implement. It returns a VNode, which is a virtual
  // node in the virtual dom, that represents a node in the real
  // dom. In this case the VDivElement is a VNode that represents
  // a div in the actual dom with text that says 'Hello World'
  @override
  VNode render() => VDivElement()..text = 'Hello World!';
}

''';

const routing = r'''
import 'dart:html' hide History;
import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

class ExampleRoutes {
  static const routeA = '/routing/route_a';
  static const routeB = '/routing/route_b';
  // routeC contains a variable, pathvar, in the route
  static const routeC = '/routing/route_c/:pathvar';
}

// RoutingExample is a component that conditionally renders
// one of 3 components, based on the current route
class RoutingExample extends NComponent {
  @override
  VNode render() => Vdiv()
    ..children = [
      _navBar(),
      _routeContent(),
    ];

  // Router is used to conditionally render components based on
  // the current route.
  //
  // The Router component takes an Iterable of Routes. A Route
  // defines a path to match on and a component factory to be
  // invoked when the corresponding path is matched.
  VNode _routeContent() => Router(routes: [
        Route(
          path: ExampleRoutes.routeA,
          componentFactory: (params) => RouteAComponent(),
          useAsDefault: true, // if no route is matched this route will be used
        ),
        Route(
          path: ExampleRoutes.routeB,
          componentFactory: (params) => RouteBComponent(),
        ),
        Route(
          path: ExampleRoutes.routeC,
          // routeC has a param, pathvar, which is read from the params
          // map and pass to RouteCComponent via props
          componentFactory: (params) => RouteCComponent(params['pathvar']),
        ),
      ]);

  VNode _navBar() => Vnav()
    ..className = 'navbar'
    ..children = [
      Vdiv()
        ..className = 'navbar-menu'
        ..children = [
          Vdiv()
            ..className = 'navbar-start'
            ..children = [
              Va()
                ..className = 'navbar-item'
                ..onClick = _onRouteAClicked
                ..text = 'go to /routing/route_a',
              Va()
                ..className = 'navbar-item'
                ..onClick = _onRouteBClicked
                ..text = 'go to /routing/route_b',
              Va()
                ..className = 'navbar-item'
                ..onClick = _onRouteC1Clicked
                ..text = 'go to /routing/route_c/1',
              Va()
                ..className = 'navbar-item'
                ..onClick = _onRouteC2Clicked
                ..text = 'go to /routing/route_c/2'
            ]
        ]
    ];

  void _onRouteAClicked(Event e) {
    _updateRoute(ExampleRoutes.routeA);
  }

  void _onRouteBClicked(Event e) {
    _updateRoute(ExampleRoutes.routeB);
  }

  void _onRouteC1Clicked(Event e) {
    _updateRoute(ExampleRoutes.routeC.replaceFirst(':pathvar', '1'));
  }

  void _onRouteC2Clicked(Event e) {
    _updateRoute(ExampleRoutes.routeC.replaceFirst(':pathvar', '2'));
  }

  // History is added to the context by wrapping including a HistoryProvider
  // above in the component tree (not shown in example). If a HistoryProvider
  // is not a parent in the component tree, Router cannot be used.
  History __history;
  History get _history => __history ?? findHistoryInContext(context);

  void _updateRoute(String route) {
    _history.push(route);
  }
}

class RouteAComponent extends NComponent {
  @override
  VNode render() => Vdiv()..text = 'route a component';
}

class RouteBComponent extends NComponent {
  @override
  VNode render() => Vdiv()..text = 'route b component';
}

class RouteCComponent extends PComponent<String> {
  RouteCComponent(String props) : super(props);

  @override
  VNode render() => Vdiv()..text = 'route c component. pathvar: $props';
}

''';
