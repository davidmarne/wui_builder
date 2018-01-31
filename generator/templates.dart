import 'parsing.dart';

String styleBiulderEnums(Iterable<Setter> setters) {
  final buffer = new StringBuffer();
  for (var i = 0; i < setters.length; i++) {
    buffer.write('const ${setters.elementAt(i).name}StyleKey = $i;\n');
  }
  return buffer.toString();
}

String styleBuilder(Iterable<Setter> setters) => '''
  class StyleBuilder {
    final _setStyle = <int, String>{};

    ${stylesDeclarationTemplate(setters)}
  }

  void _updateStyle(Element ele, int key, String value) {
    switch (key) {
      ${updateStylesSwitchTemplate(setters)}
    }
  }''';

String stylesDeclarationTemplate(Iterable<Setter> setters) => setters.fold(
    '', (code, setter) => '$code\n${styleDeclarationTemplate(setter)}');

String styleDeclarationTemplate(Setter setter) => '''
  ${setter.type} get ${setter.name} => _setStyle[${setter.name}StyleKey];
  set ${setter.name}(${setter.type} v) {
      _setStyle[${setter.name}StyleKey] = v;
  }''';

String updateStylesSwitchTemplate(Iterable<Setter> setters) => setters.fold(
    '', (code, setter) => '$code\n${updateStyleSwitchTemplate(setter)}');

String updateStyleSwitchTemplate(Setter setter) => '''
    case ${setter.name}StyleKey:
      ele.style.${setter.name} = value;
      break;''';

String vElementAttributesEnums(
    String classElementName, Iterable<Setter> setters) {
  final buffer = new StringBuffer();
  for (var i = 0; i < setters.length; i++) {
    buffer.write(
        'const ${setters.elementAt(i).name}${classElementName}Attribute = $i;\n');
  }
  if (classElementName == 'Element')
    buffer
        .write('const text${classElementName}Attribute = ${setters.length};\n');
  return buffer.toString();
}

String vElementEventsEnums(Iterable<VEvent> events) {
  final buffer = new StringBuffer();
  for (var i = 0; i < events.length; i++) {
    buffer.write('const ${events.elementAt(i).name}Event = $i;\n');
  }
  return buffer.toString();
}

String vElement(Iterable<Setter> setters, Iterable<VEvent> events) => '''
  abstract class VElement<E extends Element> extends VNode {
    @override
    VNodeTypes get vNodeType => VNodeTypes.element;

    var _setValuesElement = <int, dynamic>{};
    var _setSubs = <int, EventHandler>{};
    var _eventSubs = <int, StreamSubscription>{};

    E elementFactory();
    
    Map<String, String> attributes;
    StyleBuilder styleBuilder;

    var _children = <VNode>[];
    List<VNode> get children => _children;
    set children(Iterable<VNode> c) {
      _children = c.toList();
    }
    
    ${attributeDeclarationTemplate('Element', new Setter('text', 'String', ''))}

    ${attributesDeclarationTemplate('Element', setters)}

    ${eventsDeclarationTemplate(events)}

    @protected
    void applyAttributesToElement(E ele) {
      if (styleBuilder != null) styleBuilder._setStyle.forEach((k, v) => _updateStyle(ele, k, v));
      if (attributes != null) attributes.forEach((k, v) => _updateCustomAttribute(ele, k, v));
      _setValuesElement.forEach((k, dynamic v) => _updateAttribute(ele, k, v));
    }

    @protected
    void updateElementAttributes(covariant VElement<E> prev, E ele) {
      if (prev.styleBuilder != null) {
        if( styleBuilder == null) {
          prev.styleBuilder._setStyle.forEach((k, v) {
            _updateStyle(ele, k, '');
          });
        } else {
          prev.styleBuilder._setStyle.forEach((k, v) {
            final newValue = styleBuilder._setStyle[k];
            if (newValue != v)
              _updateStyle(ele, k, newValue);
          });
        }
      } else if (styleBuilder != null) {
        styleBuilder._setStyle.forEach((k, v) => _updateStyle(ele, k, v));
      }

      if (prev.attributes != null) {
        if (attributes == null) 
          prev.attributes.forEach((k, v) {
            _updateCustomAttribute(ele, k, '');
          });
        else {
          prev.attributes.forEach((k, v) {
            final newValue = attributes[k];
            if (newValue != v)
              _updateCustomAttribute(ele, k, newValue);
          });
        }
      } else if (attributes != null) {
        attributes.forEach((k, v) => _updateCustomAttribute(ele, k, v));
      }

      prev._setValuesElement.forEach((k, dynamic v) {
        final dynamic newValue = _setValuesElement[k];
        if (newValue != v)
          _updateAttribute(ele, k, newValue);
      });

      prev.styleBuilder = styleBuilder;
      prev.attributes = attributes;
      prev._setValuesElement = _setValuesElement;
    }

    void _updateAttribute(Element ele, int key, dynamic value) {
      switch(key) {
        case textElementAttribute:
          ${vElementTextSet()}
          break;${updateAttributesSwitchTemplate('Element', setters)}
      }
    }

    void _updateCustomAttribute(Element ele, String key, String value) {
      ele.attributes[key] = value ?? '';
    }

    void applyEventListenersToElement(Element ele) {
      _setSubs.forEach((k, dynamic v) => _applyEventListener(ele, k, v));
    }

    void updateEventListenersToElement(VElement prev, Element ele) {
      prev._setSubs.forEach((k, v) => _removeEventListenerIfNeccessary(prev, k, v));
      prev._setSubs = _setSubs;
      prev._setSubs.forEach((k, v) => prev._applyEventListener(ele, k, v));
    }

    void _applyEventListener(Element ele, int key, dynamic value) {
      if (_eventSubs.containsKey(key)) return;
      switch(key) {
        ${updateEventListenerSwitchBody('Element', events)}
      }
    }

    void _removeEventListenerIfNeccessary(VElement prev, int key, dynamic value) {
      if (_setSubs.containsKey(key)) return;
      prev._eventSubs[key].cancel();
      prev._eventSubs.remove(key);
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
    first.text = value as String;
  } else {
    ele.text = value as String;
  }''';

// Workaround: style is final on the element, so VElements can provide
// a fuction to build the style
String vElementStyleBuilderSet() => '''if (styleBuilder != null) {
      styleBuilder(ele.style);
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

String vElementSubclass(
  String classElementName,
  String superclass,
  Iterable<Setter> setters,
) =>
    '''
  class V$classElementName extends V$superclass<$classElementName> {
    @override
    $classElementName elementFactory() => new $classElementName();

    ${vElementSubclassBody(classElementName, setters)}
  }''';

String vElementSubclassBody(
  String classElementName,
  Iterable<Setter> setters,
) =>
    setters.isEmpty
        ? ''
        : '''var _setValues${classElementName} = <int, dynamic>{};

    ${attributesDeclarationTemplate(classElementName, setters)}

    @override
    @protected
    void applyAttributesToElement($classElementName ele) {
      _setValues${classElementName}.forEach((k, dynamic v) => _updateAttribute$classElementName(ele, k, v));
      super.applyAttributesToElement(ele);
    }

    @override
    @protected
    void updateElementAttributes(V$classElementName prev, $classElementName ele) {
      prev._setValues${classElementName}.forEach((k, dynamic v) {
        final dynamic newValue = _setValues${classElementName}[k];
        if (v != newValue)
          _updateAttribute$classElementName(ele, k, newValue);
      });
      prev._setValues${classElementName} = _setValues${classElementName};
      super.updateElementAttributes(prev, ele);
    }

    void _updateAttribute$classElementName($classElementName ele, int key, dynamic value) {
      switch(key) {
        ${updateAttributesSwitchTemplate(classElementName, setters)}
      }
    }''';

String vElementAbstractSubclass(
  String classElementName,
  String superclass,
  Iterable<Setter> setters,
) =>
    '''
  abstract class V$classElementName<T extends $classElementName> extends  V$superclass<T> {
    ${vElementAbstractSubclassBody(classElementName, setters)}
  }''';

String vElementAbstractSubclassBody(
  String classElementName,
  Iterable<Setter> setters,
) =>
    setters.isEmpty
        ? ''
        : '''var _setValues${classElementName} = <int, dynamic>{};

    ${attributesDeclarationTemplate(classElementName, setters)}

    @override
    @protected
    void applyAttributesToElement(T ele) {
      _setValues${classElementName}.forEach((k, dynamic v) => _updateAttribute$classElementName(ele, k, v));
      super.applyAttributesToElement(ele);
    }

    @override
    @protected
    void updateElementAttributes(covariant V$classElementName<T> prev, T ele) {
      prev._setValues${classElementName}.forEach((k, dynamic v) {
        final dynamic newValue = _setValues${classElementName}[k];
        if (v != newValue)
          _updateAttribute$classElementName(ele, k, newValue);
      });
      prev._setValues${classElementName} = _setValues${classElementName};
      super.updateElementAttributes(prev, ele);
    }

    void _updateAttribute$classElementName($classElementName ele, int key, dynamic value) {
      switch(key) {
        ${updateAttributesSwitchTemplate(classElementName, setters)}
      }
    }''';

String attributesDeclarationTemplate(
        String className, Iterable<Setter> setters) =>
    setters.fold(
        '',
        (code, setter) =>
            '$code\n${attributeDeclarationTemplate(className, setter)}');

String updateAttributesSwitchTemplate(
        String className, Iterable<Setter> setters) =>
    setters.fold(
        '',
        (code, setter) =>
            '$code\n${updateAttributeSwitchTemplate(className, setter)}');

String updateEventListenerSwitchBody(
        String className, Iterable<VEvent> events) =>
    events.fold(
        '',
        (code, event) =>
            '$code\n${updateEventListenerSwitchTemplate(className, event)}');

String attributeDeclarationTemplate(String className, Setter setter) => '''
  ${setter.type} get ${setter.name} => _setValues${className}[${setter.name}${className}Attribute] as ${setter.type};
  set ${setter.name}(${setter.type} v) {
      _setValues${className}[${setter.name}${className}Attribute] = v;
  }''';

String updateAttributeSwitchTemplate(String className, Setter setter) => '''
    case ${setter.name}${className}Attribute:
      ele.${setter.name} = value as ${setter.type};
      break;''';

String updateEventListenerSwitchTemplate(String className, VEvent event) => '''
    case ${event.name}Event: 
      _eventSubs[${event.name}Event] = ele.${event.name}.listen((e) => ${event.name}(e));
      break;''';

String eventsDeclarationTemplate(Iterable<VEvent> events) => events.fold(
    '', (code, event) => '$code\n${eventDeclarationTemplate(event)}');

String eventsSetTemplate(Iterable<VEvent> events) =>
    events.fold('', (code, event) => '$code\n${eventSetTemplate(event)}');

String eventDeclarationTemplate(VEvent event) => '''
    ${event.type} get ${event.name} => _setSubs[${event.name}Event] as ${event.type};
    set ${event.name}(${event.type} v) {
        _setSubs[${event.name}Event] = v;
    }''';

String eventSetTemplate(VEvent event) =>
    'if (_${event.name}Set) _${event.name}Sub = ele.${event.name}.listen((e) => ${event.name}(e));';
