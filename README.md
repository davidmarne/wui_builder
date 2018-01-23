# A dart library for building user interfaces for the web, inspired by reactjs

[![Pub](https://img.shields.io/pub/v/built_redux.svg)](https://pub.dartlang.org/packages/wui_builder)
[![codecov.io](http://codecov.io/github/davidmarne/wui_builder/coverage.svg?branch=master)](http://codecov.io/github/davidmarne/wui_builder?branch=master)

For building declarative, component based web user interfaces in dart.

Provides a rich library of typed virtual elements for svg & standard html.

Supports defining custom components with an interface similar to react. All of the same lifecycle methods are supported.

Built with async rendering in mind from the start.

## Documentation and examples

Check out the [documentation on github pages][docs] for an in depth look at the framework

## What makes this virtual dom framework different?

It's written in dart. Plus:

### Generated virtual dom elements

The [generator](generator/) is the most unique feature of wui_builder. The generator generates virtual dom element builder for each Element type definied in the dart html and svg packages. Each virtual dom element builder provides the same typed setters as its corresponding html/svg Element. This makes it easy to write resilient componenents.

### Configurable Update Scheduling

Next, wui_builder supports iterative rendering to avoid blocking the main thread on large updates. Iterative updates only processes on idle callbacks, which means the rendering job & layout will be split across multiple frames. wui_builder gives power to the developer to decide when components should render. It allows the developer can decide if a component updates syncronously,on animation frame, or on and idle callback. Ideally, a component will either:

- render on animation frame for high priority updates that must finish. updates from mulitiple components can be batch rendered on animation frames.
- render on idle callbacks for low priority updates that can be split across frames.

However, syncronous updates are also allowed to run on demand, without waiting for an animation frame or idle callback.

### Smart Update Batching

Finally, wui_builder prevents uneccessary updates when multiple updates to the same component are queued before any can process. For example, say I have a component that updates on animation frame, but before a given animation frame is fired setStateOnAnimationFrame is called twice. The update process will only be run once in this case, while allowing both state setter functions to be executed.

Note, requestIdleCallback is not currently supported by all browsers and wui_builder does NOT include a polyfill at this time. Synchronous rendering still works on all browsers. See a compatability chart [here][compatability].

## Syntax

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

## Motivation

It started as a fun project to help learn about virtual doms.
However, there is motivation to keep progressing because:

- I really hate JS.
- I quite like dart.
- I don't like un-typed templates, so angular ain't my jam.
- over_react has some downsides:
  - it incurs a large performance burden due to js interop & map lookups
  - it has to adapt to a js api, which can be difficult due to differences in the languages

[docs]: https://davidmarne.github.io

[compatability]: https://developer.mozilla.org/en-US/docs/Web/API/Window/requestIdleCallback
