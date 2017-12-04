# A dart library for building user interfaces for the web, inspired by reactjs

For building declarative, component based web user interfaces in dart.

Provides a rich library of typed virtual elements for svg & standard html.

Supports defining custom components with an interface similar to react. All of the same lifecycle methods are supported.

Built with async rendering in mind from the start.

## What makes this virtual dom framework different?

The [generator](generator/) is what makes wui builder unique.
The generator generates virtual dom element builder for each Element type definied
in the dart html/svg packages. Each virtual dom element builder as typed setters for each
setter in the relative html/svg Element. This makes it easy to write resilient componenents.

wui_builder also supports async rendering to avoid blocking the main thread on large updates.
Async updeates only processes on idle callbacks, which means the rendering job & layout will be split
across multiple frames.

Note, requestIdleCallback is not supported by all browsers at this time and wui_builder does NOT include a polyfill at this time.
Synchronous rendering still works on all browsers.

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
class HelloWorld extends PComponent<Null> {
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

class HelloWorld extends PComponent<HelloWorldProps> {
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

## Stateful components

```dart
class HelloWorldState {
    String text;
}

class HelloWorld extends SComponent<HelloWorldState> {
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
        setState((_, previousState) => new HelloWorldState()
            ..text = '$previousState again');
    }
}

// instantiate the component, it does not require any props
// so null is passed to the constructor
final component = new HelloWorld(null);

// render the virtual element into a container
render(component, querySelector('#container'));
```

## Async Rendering

Using updateOnIdle or in leu of update or setStateOnIdle in lue of setState will kick off an update that only processes on idle callbacks. Feel free to use a mix of update and updateOnIdle in your application.

