import 'parsing.dart';

String vElement(Iterable<Setter> setters, Iterable<VEvent> events) => '''
  abstract class VElement<E extends Element> extends VNode {
    @override
    VNodeTypes get vNodeType => VNodeTypes.element;

    var _setValues = <String, dynamic>{};
    var _setSubs = <String, EventHandler>{};
    var _style = <String, String>{};
    var _eventSubs = <String, StreamSubscription>{};
    var attributes = <String, String>{};

    E elementFactory();
    
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
     // _style.forEach(_updateStyle);
      attributes.forEach((k, v) => _updateCustomAttribute(ele, k, v));
      _setValues.forEach((k, dynamic v) => _updateAttribute(ele, k, v));
    }

    @protected
    void updateElementAttributes(covariant VElement<E> prev, E ele) {
      //prev._style.forEach(_updateStyle);
      prev.attributes.forEach((k, v) => _removeCustomAttributeIfNecessary(ele, k, v));
      prev._setValues.forEach((k, dynamic v) => _removeAttributeIfNecessary(ele, k, v));

      //_style.forEach(_updateStyle);
      attributes.forEach((k, v) => _updateCustomAttribute(ele, k, v));
      _setValues.forEach((k, dynamic v) => _updateAttribute(ele, k, v));

      prev._style = _style;
      prev.attributes = attributes;
      prev._setValues = _setValues;
    }

    void _updateAttribute(Element ele, String key, dynamic value) {
      switch(key) {
        case 'text':
          ${vElementTextSet()}
          break;
        ${updateAttributesSwitchTemplate(setters)}
      }
    }

    void _updateCustomAttribute(Element ele, String key, dynamic value) {
      ele.attributes[key] = value as String;
    }

    void _removeAttributeIfNecessary(E ele, String key, dynamic value) {
      if (_setValues.containsKey(key)) return;
      switch(key) {
        case 'text':
          // TODO: remove text node
          break;
        ${removeAttributeSwitchBody(setters)}
      }
    }

    void _removeCustomAttributeIfNecessary(E ele, String key, dynamic value) {
      if (attributes.containsKey(key)) return;
        ele.attributes[key] = null;
    }

    void applyEventListenersToElement(Element ele) {
      _setSubs.forEach((k, dynamic v) => _applyEventListener(ele, k, v));
    }

    void updateEventListenersToElement(VElement prev, Element ele) {
      _setSubs.forEach((k, v) => _applyEventListener(ele, k, v));
      prev._setSubs.forEach(_removeEventListenerIfNeccessary);
      prev._setSubs = _setSubs;
      prev._eventSubs = _eventSubs;
    }

    void _applyEventListener(Element ele, String key, dynamic value) {
      switch(key) {
        ${updateEventListenerSwitchBody(events)}
      }
    }

    void _removeEventListenerIfNeccessary(String key, dynamic value) {
      if (_setSubs.containsKey(key)) return;
      _eventSubs[key].cancel();
      _eventSubs[key] = null;
    }

    void dispose() {
      for (final sub in _eventSubs.values)
        sub.cancel();
      _eventSubs = null;
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
      attributesSetTemplate(setters)
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
      attributesSetTemplate(setters)
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

String removeAttributeSwitchBody(Iterable<Setter> setters) => setters.fold(
    '', (code, setter) => '$code\n${removeAttributeSwitchTemplate(setter)}');

String removeEventListenerSwitchBody(Iterable<VEvent> events) => events.fold(
    '', (code, event) => '$code\n${removeEventListenerSwitchTemplate(event)}');

String attributesUpdateTemplate(Iterable<Setter> setters) => setters.fold(
    '', (code, setter) => '$code\n${attributeUpdateTemplate(setter)}');

String updateEventListenerSwitchBody(Iterable<VEvent> events) => events.fold(
    '', (code, event) => '$code\n${updateEventListenerSwitchTemplate(event)}');

String attributeDeclarationTemplate(Setter setter) => '''
  ${setter.type} get ${setter.name} => _setValues[\'${setter.name}\'] as ${setter.type};
  set ${setter.name}(${setter.type} v) {
      _setValues[\'${setter.name}\'] = v;
  }''';

String updateAttributeSwitchTemplate(Setter setter) => '''
    case \'${setter.name}\': 
      ele.${setter.name} = value as ${setter.type};
      break;
  ''';

String removeAttributeSwitchTemplate(Setter setter) => '''
    case \'${setter.name}\': 
      ele.${setter.name} = null;
      break;
  ''';

String removeEventListenerSwitchTemplate(VEvent event) => '''
  case \'${event.name}\': 
    _eventSubs[\'${event.name}\'].cancel();
    _eventSubs[\'${event.name}\'] = null;
    break;
''';

String attributeUpdateTemplate(Setter setter) =>
    '''if (_${setter.name} != prev._${setter.name}) {
      ele.${setter.name} = _${setter.name};
      prev.${setter.name} = _${setter.name};
    }''';

String updateEventListenerSwitchTemplate(VEvent event) => '''
    case \'${event.name}\': 
      _eventSubs[\'${event.name}\'] = ele.${event.name}.listen(_setSubs[\'${event.name}\'] as ${event.type});
      break;
  ''';
String eventsDeclarationTemplate(Iterable<VEvent> events) => events.fold(
    '', (code, event) => '$code\n${eventDeclarationTemplate(event)}');

String eventsSetTemplate(Iterable<VEvent> events) =>
    events.fold('', (code, event) => '$code\n${eventSetTemplate(event)}');

String eventsUpdateTemplate(Iterable<VEvent> events) =>
    events.fold('', (code, event) => '$code\n${eventUpdateTemplate(event)}');

String eventDeclarationTemplate(VEvent event) => '''
    ${event.type} get ${event.name} => _setValues[\'${event.name}\'] as ${event.type};
    set ${event.name}(${event.type} v) {
        _setSubs[\'${event.name}\'] = v;
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
