# A dart library for building user interfaces for the web, inspired by reactjs

For building declarative, component based web user interfaces in dart.

Provides a rich library of typed virtual elements for svg & standard html.

Supports defining custom components with an interface similar to react. All of the same lifecycle methods are supported.

Built with async rendering in mind from the start.

## Documentation and examples

Check out the [documentation on github pages][docs] for an in depth look at the framework

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
- render on idle callbacks for low priority updates that can be split across frames.

However, syncronous updates are also allowed to run on demand, without waiting for an animation frame or idle callback.

### Smart Update Batching

Finally, wui_builder prevents uneccessary updates when multiple updates to the same component are queued before any can process. For example, say I have a component that updates on animation frame, but before the next animation frame is fired setStateOnAnimationFrame is called twice. The update process will only be run once in this case, while allowing both state setter functions to be executed.

Note, requestIdleCallback is not currently supported by all browsers and wui_builder does NOT include a polyfill at this time. Synchronous rendering still works on all browsers. See a compatability chart [here][compatability].

### Syntax

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

[docs]: https://davidmarne.github.io

[compatability]: https://developer.mozilla.org/en-US/docs/Web/API/Window/requestIdleCallback
