# A dart library for building user interfaces for the web, inspired by reactjs

For building declarative, component based web user interfaces in dart.

Provides a rich library of typed virtual elements for svg & standard html.

Supports defining custom components with an interface similar to react. All of the same lifecycle methods are supported.

Built with async rendering in mind from the start.

## What makes this virtual dom framework different?

### Generated virtual dom elements

The [generator](generator/) is the first thing that makes wui builder unique.
The generator generates virtual dom element builder for each Element type definied
in the dart html/svg packages. Each virtual dom element builder as typed setters for each
setter in the relative html/svg Element. This makes it easy to write resilient componenents.

### Configurable Update Scheduling

Next, wui_builder supports iterative rendering to avoid blocking the main thread on large updates.
Iterative updates only processes on idle callbacks, which means the rendering job & layout will be split
across multiple frames. wui_builder gives power to the developer to decide when components should render. This means the developer can decide if a component updates syncronously, on animation frame, or on and idle callback. Ideally, a component will either:

- render on animation frame for high priority updates that must finish. updates from mulitiple components can be batch rendered on animation frames.
- render on idle callbacks for low priority updates that can be split across frames. these updates can be cancelled by proceeding updates if the shouldAbort option is true.

However, syncronous updates are also allowed to run on demand, without waiting for an animation frame or idle callback.

### Smart Update Batching

Finally, wui_builder prevents uneccessary updates when multiple updates to the same component are queued before any can process. For example, say I have a component that updates on animation frame, but before the next animation frame is fired setStateOnAnimationFrame is called twice. The update process will only be run once in this case, while allowing both state setter functions to be executed.

Note, requestIdleCallback is not supported by all browsers at this time and wui_builder does NOT include a polyfill at this time. Synchronous rendering still works on all browsers.

## Hello world

```dart
// component is a virtual dom node
final component = new VDivElement()
    ..text = 'Hello world';

// render the virtual element into a container
render(component, querySelector('#container'));
```

## Custom components

```dart
class HelloWorld extends PropComponent<Null> {
    HelloWorld(props) : super(props);

    @override
    VNode render() => new VDivElement()
        ..text = 'Hello world';
}

// instantiate the component, it does not require any props
// so null is passed to the constructor
final component = new HelloWorld(null);

// render the virtual element into a container
render(component, querySelector('#container'));
```

## Passing props to custom components

```dart
class HelloWorldProps {
    String text;
}

class HelloWorld extends PropComponent<HelloWorldProps> {
    HelloWorld(props) : super(props);

    @override
    VNode render() => new VDivElement()
        ..text = props.text;
}

// instantiate the component, pass it an instance of HelloWorldProps
final component = new HelloWorld(
    new HelloWorldProps()
        ..text = 'Hello world',
    );

// render the virtual element into a container
render(component, querySelector('#container'));
```

## Stateful components - immediate synchronous updates

```dart
class HelloWorldState {
    String text;
}

class HelloWorld extends Component<Null, HelloWorldState> {
    HelloWorld(props) : super(props);

    @override
    VNode render() => new VDivElement()
        ..text = state.text
        ..onClick = _onClick;

    @override
    HelloWorldState getInitialState() => new HelloWorldState()
        ..text = 'Hello world';

    void _onClick(_) {
        // update the state, causing the component to redraw
        update((_, previousState) => new HelloWorldState()
            ..text = '$previousState again');
    }
}

// instantiate the component, it does not require any props
// so null is passed to the constructor
final component = new HelloWorld(null);

// render the virtual element into a container
render(component, querySelector('#container'));
```

## Stateful components - synchronous updates on animation frame

```dart
class HelloWorldState {
    String text;
}

class HelloWorld extends Component<Null, HelloWorldState> {
    HelloWorld(props) : super(props);

    @override
    VNode render() => new VDivElement()
        ..text = state.text
        ..onClick = _onClick;

    @override
    HelloWorldState getInitialState() => new HelloWorldState()
        ..text = 'Hello world';

    void _onClick(_) {
        // update the state, causing the component to redraw on the next frame
        setStateOnAnimationFrame((_, previousState) => new HelloWorldState()
            ..text = '$previousState again');
    }
}

// instantiate the component, it does not require any props
// so null is passed to the constructor
final component = new HelloWorld(null);

// render the virtual element into a container
render(component, querySelector('#container'));
```

## Stateful components - iterative updates on idle callback

```dart
class HelloWorldState {
    String text;
}

class HelloWorld extends Component<Null, HelloWorldState> {
    HelloWorld(props) : super(props);

    @override
    VNode render() => new VDivElement()
        ..text = state.text
        ..onClick = _onClick;

    @override
    HelloWorldState getInitialState() => new HelloWorldState()
        ..text = 'Hello world';

    void _onClick(_) {
        // update the state, causing the component to redraw on the next idle callback
        setStateOnIdle((_, previousState) => new HelloWorldState()
            ..text = '$previousState again');
    }
}

// instantiate the component, it does not require any props
// so null is passed to the constructor
final component = new HelloWorld(null);

// render the virtual element into a container
render(component, querySelector('#container'));
