import 'parsing.dart';

String vElement(Iterable<Setter> setters, Iterable<VEvent> events) => '''
  typedef void RemoveIfNecessary(String k, dynamic value);
  abstract class VElement<E extends Element> extends VNode {
    @override
    VNodeTypes get vNodeType => VNodeTypes.element;

    final _setValues = <String, dynamic>{};
    final _customAttributes = <String, String>{};
    final _style = <String, String>{};
    final _setSubs = <String, EventHandler>{};

    E elementFactory();
    
    bool shouldUpdateSubs = false;

    // TODO: gen builder for css style
    StyleBuilder styleBuilder;

    var _children = <VNode>[];
    List<VNode> get children => _children;
    set children(Iterable<VNode> c) {
      _children = c.toList();
    }

    ${attributeDeclarationTemplate(new Setter('text', 'String', ''))}

    ${attributesDeclarationTemplate(setters)}

    ${eventsDeclarationTemplate(events)}

    @protected
    void applyAttributesToElement(E ele) {
      _style.forEach(_updateStyle);
      _customAttributes.forEach(_updateAttribute);
      _setValues.forEach(_updateAttribute);
    }

    @protected
    void updateElementAttributes(covariant VElement<E> prev, E ele) {
      prev._style.forEach(_updateStyle);
      prev._customAttributes.forEach(_removeAttributeIfNecessary);
      prev._setValues.forEach(_removeAttributeIfNecessary);

      _style.forEach(_updateStyle);
      _customAttributes.forEach(_updateAttribute);
      _setValues.forEach(_updateAttribute);

      prev._style = _style;
      prev._customAttributes = _customAttributes;
      prev._setValues = _setValues;
    }

    void _updateAttribute(String key, dynamic value) {
      switch(key) {
        case 'text':
          ${vElementTextSet()}
          break;
        ${updateAttributesSwitchTemplate(setters)}
        default:

      }
    }

    // TODO: find out if more efficient to do lookups or get values/keys to iterate over
    RemoveIfNecessary _removeAttributeIfNecessary(E ele) => (String key, dynamic value) {
      if (_setValues.containsKey(key)) return;
      switch(key) {
        case 'text':
          // TODO: remove text node
          break;
        ${removeAttributeSwitchBody(setters)}
      }
    }

    void applyEventListenersToElement(Element ele) {
      _setSubs.forEach(_applyEventListener);
    }

    void updateEventListenersToElement(VElement prev, Element ele) {
      _setSubs.forEach(_applyEventListener);

      prev._setSubs.forEach(_removeEventListenerIfNeccessary);

      prev._setSubs = _setSubs;
    }

    void _applyEventListener(String key, dynamic value) {
      switch(key) {
        case 'text':
          ${vElementTextSet()}
          break;
        ${updateEventListenerSwitchBody(setters)}
      }
    }

    RemoveIfNecessary _removeEventListenerIfNeccessary(E ele) => (String key, dynamic value) {
      if (_setValues.containsKey(key)) return;
      switch(key) {
        case 'text':
          // TODO: remove text node
          break;
        ${removeAttributeSwitchBody(setters)}
      }
    }

    void dispose() {
      ${disposeBody(events)}
    }
  }
  ''';

// Workaround: perf is better with this than setting
// the text property directly on the element
String vElementTextSet() => '''
  final first = ele.firstChild;
  if (first != null && first == ele.lastChild && first.nodeType == Node.TEXT_NODE) {
    first.text = text;
  } else {
    ele.text = text;
  }
''';

// Workaround: style is final on the element, so VElements can provide
// a fuction to build the style
String vElementStyleBuilderSet() => '''if (styleBuilder != null) {
      styleBuilder(ele.style);
    }''';

// Workaround: perf is better with this than setting
// the text property directly on the element
String vElementTextUpdate() => '''
  final first = ele.firstChild;
  if (first != null && first == ele.lastChild && first.nodeType == Node.TEXT_NODE) {
    first.text = text;
  } else {
    ele.text = text;
  }
  prev.text = _text;
''';

// Workaround: style is final on the element, so VElements can provide
// a fuction to build the style
String vElementStyleBuilderUpdate() => '''if (styleBuilder != null) {
      ele.setAttribute('style', '');
      styleBuilder(ele.style);
      prev.styleBuilder = styleBuilder;
    } else if (prev.styleBuilder != null) {
      prev.styleBuilder = null;
    }''';

// Workaround: elements that have multple factories can use this
// to create a custom velements for extra constructors
String customFactoryElement(
        String constructorName, String classElementName, String lib) =>
    '''
  class V$constructorName extends VElement<$classElementName> {
    @override
    $classElementName elementFactory() => new $classElementName.$constructorName();
  }''';

// Workaround: elements that don't have tags defined in dart html that we still want
// Workaround: elements that don't have tags defined in dart html that we still want
String generalTagFactoryElement(String constructorName) => '''
  class V$constructorName extends VElement<Element> {
    @override
    Element elementFactory() => new Element.tag(\'$constructorName\');
  }''';

// TODO: generate typed constructor
// TODO: generate hashCode
String vElementSubclass(
  String classElementName,
  String superclass,
  Iterable<Setter> setters,
  String lib,
) =>
    '''
  class V$classElementName extends V$superclass<$classElementName> {
    @override
    $classElementName elementFactory() => new $classElementName();

    ${attributesDeclarationTemplate(setters)}

    @override
    @protected
    void applyAttributesToElement($classElementName ele) {
      super.applyAttributesToElement(ele);
      ${attributesSetTemplate(setters)}
    }

    @override
    @protected
    void updateElementAttributes(V$classElementName prev, $classElementName ele) {
      super.updateElementAttributes(prev, ele);
      ${attributesUpdateTemplate(setters)}
    }
  }
''';

String vElementAbstractSubclass(
  String classElementName,
  String superclass,
  Iterable<Setter> setters,
  String lib,
) =>
    '''
  abstract class V$classElementName<T extends $classElementName> extends  V$superclass<T> {
    ${attributesDeclarationTemplate(setters)}

    @override
    @protected
    void applyAttributesToElement(T ele) {
      super.applyAttributesToElement(ele);
      ${attributesSetTemplate(setters)}
    }

    @override
    @protected
    void updateElementAttributes(covariant V$classElementName<T> prev, T ele) {
      super.updateElementAttributes(prev, ele);
      ${attributesUpdateTemplate(setters)}
    }
  }
''';

String attributesDeclarationTemplate(Iterable<Setter> setters) => setters.fold(
    '', (code, setter) => '$code\n${attributeDeclarationTemplate(setter)}');

String updateAttributesSwitchTemplate(Iterable<Setter> setters) => setters.fold(
    '', (code, setter) => '$code\n${updateAttributeSwitchTemplate(setter)}');

String attributesUpdateTemplate(Iterable<Setter> setters) => setters.fold(
    '', (code, setter) => '$code\n${attributeUpdateTemplate(setter)}');

String attributeDeclarationTemplate(Setter setter) => '''
  ${setter.type} get ${setter.name} => _setValues[\'${setter.name}\'};
  set ${setter.name}(${setter.type} v) {
      _setValues[\'${setter.name}\'] = v;
  }''';

String updateAttributeSwitchTemplate(Setter setter) => '''
    case \'${setter.name}\': 
      ele.${setter.name} = value as ${setter.type};
      break;
  ''';

String attributeUpdateTemplate(Setter setter) =>
    '''if (_${setter.name} != prev._${setter.name}) {
      ele.${setter.name} = _${setter.name};
      prev.${setter.name} = _${setter.name};
    }''';

String eventsDeclarationTemplate(Iterable<VEvent> events) => events.fold(
    '', (code, event) => '$code\n${eventDeclarationTemplate(event)}');

String eventsSetTemplate(Iterable<VEvent> events) =>
    events.fold('', (code, event) => '$code\n${eventSetTemplate(event)}');

String eventsUpdateTemplate(Iterable<VEvent> events) =>
    events.fold('', (code, event) => '$code\n${eventUpdateTemplate(event)}');

String eventDeclarationTemplate(VEvent event) => '''
    StreamSubscription _${event.name}Sub;
    bool _${event.name}Set = false;
    ${event.type} _${event.name};
    ${event.type} get ${event.name} => _${event.name};
    set ${event.name}(${event.type} v) {
        _${event.name} = v;
        _${event.name}Set = true;
        shouldUpdateSubs = true;
    }''';

String eventSetTemplate(VEvent event) =>
    'if (_${event.name}Set) _${event.name}Sub = ele.${event.name}.listen((e) => ${event.name}(e));';

String eventUpdateTemplate(VEvent event) => '''
    if (_${event.name}Set) {
      if (!prev._${event.name}Set) {
        prev._${event.name} = _${event.name};
        prev._${event.name}Sub = ele.${event.name}.listen((e) => ${event.name}(e));
      } else if (prev.${event.name} != ${event.name}) {
        prev._${event.name} = _${event.name};
      }
    } else if (prev._${event.name}Set) {
      prev._${event.name}Sub.cancel();
      prev._${event.name}Sub = null;
      prev._${event.name}Set = false;
    }''';

String disposeBody(Iterable<VEvent> events) =>
    events.fold('', (code, event) => '$code\n_${event.name}Sub?.cancel();');
