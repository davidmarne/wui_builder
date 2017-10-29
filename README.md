# A dart library for building user interfaces for the web, inspired by reactjs

For building declarative, component based web user interfaces in dart.

Provides a rich library of typed virtual elements.

Supports defining custom components with an interface similar to react. All of the same lifecycle methods are supported.

## What makes this virtual dom framework different?

The [generator](generator/) is what makes wui builder unique.
The generator generates virtual dom element builder for each Element type definied
in the dart html package. Each virtual dom element builder as typed setters for each
setter in the relative html Element.

This makes it easy to write resilient componenents.

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
class HelloWorld extends Component<Null, Null> {
    HelloWorld(props) : super(props);

    @override
    VNode render(props, state) => new VDivElement()
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

class HelloWorld extends Component<HelloWorldProps, Null> {
    HelloWorld(props) : super(props);

    @override
    VNode render(props, state) => new VDivElement()
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

class HelloWorld extends Component<Null, HelloWorldState> {
    HelloWorld(props) : super(props);

    @override
    VNode render(props, state) => new VDivElement()
        ..text = state.text
        ..onClick = _onClick;

    @override
    HelloWorldState getInitialState(_) => new HelloWorldState()
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