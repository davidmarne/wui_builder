import 'dart:html';
import 'package:meta/meta.dart';
import 'wui_builder.dart' show VElement;
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields

abstract class VHtmlElement<T extends HtmlElement> extends VElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeHtmlElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VHtmlElement<T> prev, T ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryHtmlElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeHtmlElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeHtmlElement(HtmlElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryHtmlElement(
      HtmlElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VAnchorElement extends VHtmlElement<AnchorElement> {
  @override
  AnchorElement elementFactory() => new AnchorElement();

  var _setValues = <String, dynamic>{};

  String get download => _setValues['download'] as String;
  set download(String v) {
    _setValues['download'] = v;
  }

  String get hreflang => _setValues['hreflang'] as String;
  set hreflang(String v) {
    _setValues['hreflang'] = v;
  }

  String get referrerpolicy => _setValues['referrerpolicy'] as String;
  set referrerpolicy(String v) {
    _setValues['referrerpolicy'] = v;
  }

  String get rel => _setValues['rel'] as String;
  set rel(String v) {
    _setValues['rel'] = v;
  }

  String get target => _setValues['target'] as String;
  set target(String v) {
    _setValues['target'] = v;
  }

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  String get hash => _setValues['hash'] as String;
  set hash(String v) {
    _setValues['hash'] = v;
  }

  String get host => _setValues['host'] as String;
  set host(String v) {
    _setValues['host'] = v;
  }

  String get hostname => _setValues['hostname'] as String;
  set hostname(String v) {
    _setValues['hostname'] = v;
  }

  String get href => _setValues['href'] as String;
  set href(String v) {
    _setValues['href'] = v;
  }

  String get password => _setValues['password'] as String;
  set password(String v) {
    _setValues['password'] = v;
  }

  String get pathname => _setValues['pathname'] as String;
  set pathname(String v) {
    _setValues['pathname'] = v;
  }

  String get port => _setValues['port'] as String;
  set port(String v) {
    _setValues['port'] = v;
  }

  String get protocol => _setValues['protocol'] as String;
  set protocol(String v) {
    _setValues['protocol'] = v;
  }

  String get search => _setValues['search'] as String;
  set search(String v) {
    _setValues['search'] = v;
  }

  String get username => _setValues['username'] as String;
  set username(String v) {
    _setValues['username'] = v;
  }

  @override
  void applyAttributesToElement(AnchorElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeAnchorElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VAnchorElement prev, AnchorElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryAnchorElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeAnchorElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeAnchorElement(
      AnchorElement ele, String key, dynamic value) {
    switch (key) {
      case 'download':
        ele.download = value as String;
        break;

      case 'hreflang':
        ele.hreflang = value as String;
        break;

      case 'referrerpolicy':
        ele.referrerpolicy = value as String;
        break;

      case 'rel':
        ele.rel = value as String;
        break;

      case 'target':
        ele.target = value as String;
        break;

      case 'type':
        ele.type = value as String;
        break;

      case 'hash':
        ele.hash = value as String;
        break;

      case 'host':
        ele.host = value as String;
        break;

      case 'hostname':
        ele.hostname = value as String;
        break;

      case 'href':
        ele.href = value as String;
        break;

      case 'password':
        ele.password = value as String;
        break;

      case 'pathname':
        ele.pathname = value as String;
        break;

      case 'port':
        ele.port = value as String;
        break;

      case 'protocol':
        ele.protocol = value as String;
        break;

      case 'search':
        ele.search = value as String;
        break;

      case 'username':
        ele.username = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryAnchorElement(
      AnchorElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'download':
        ele.download = null;
        break;

      case 'hreflang':
        ele.hreflang = null;
        break;

      case 'referrerpolicy':
        ele.referrerpolicy = null;
        break;

      case 'rel':
        ele.rel = null;
        break;

      case 'target':
        ele.target = null;
        break;

      case 'type':
        ele.type = null;
        break;

      case 'hash':
        ele.hash = null;
        break;

      case 'host':
        ele.host = null;
        break;

      case 'hostname':
        ele.hostname = null;
        break;

      case 'href':
        ele.href = null;
        break;

      case 'password':
        ele.password = null;
        break;

      case 'pathname':
        ele.pathname = null;
        break;

      case 'port':
        ele.port = null;
        break;

      case 'protocol':
        ele.protocol = null;
        break;

      case 'search':
        ele.search = null;
        break;

      case 'username':
        ele.username = null;
        break;
    }
  }
}

class VAreaElement extends VHtmlElement<AreaElement> {
  @override
  AreaElement elementFactory() => new AreaElement();

  var _setValues = <String, dynamic>{};

  String get alt => _setValues['alt'] as String;
  set alt(String v) {
    _setValues['alt'] = v;
  }

  String get coords => _setValues['coords'] as String;
  set coords(String v) {
    _setValues['coords'] = v;
  }

  String get referrerpolicy => _setValues['referrerpolicy'] as String;
  set referrerpolicy(String v) {
    _setValues['referrerpolicy'] = v;
  }

  String get shape => _setValues['shape'] as String;
  set shape(String v) {
    _setValues['shape'] = v;
  }

  String get target => _setValues['target'] as String;
  set target(String v) {
    _setValues['target'] = v;
  }

  String get hash => _setValues['hash'] as String;
  set hash(String v) {
    _setValues['hash'] = v;
  }

  String get host => _setValues['host'] as String;
  set host(String v) {
    _setValues['host'] = v;
  }

  String get hostname => _setValues['hostname'] as String;
  set hostname(String v) {
    _setValues['hostname'] = v;
  }

  String get href => _setValues['href'] as String;
  set href(String v) {
    _setValues['href'] = v;
  }

  String get password => _setValues['password'] as String;
  set password(String v) {
    _setValues['password'] = v;
  }

  String get pathname => _setValues['pathname'] as String;
  set pathname(String v) {
    _setValues['pathname'] = v;
  }

  String get port => _setValues['port'] as String;
  set port(String v) {
    _setValues['port'] = v;
  }

  String get protocol => _setValues['protocol'] as String;
  set protocol(String v) {
    _setValues['protocol'] = v;
  }

  String get search => _setValues['search'] as String;
  set search(String v) {
    _setValues['search'] = v;
  }

  String get username => _setValues['username'] as String;
  set username(String v) {
    _setValues['username'] = v;
  }

  @override
  void applyAttributesToElement(AreaElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeAreaElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VAreaElement prev, AreaElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryAreaElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeAreaElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeAreaElement(AreaElement ele, String key, dynamic value) {
    switch (key) {
      case 'alt':
        ele.alt = value as String;
        break;

      case 'coords':
        ele.coords = value as String;
        break;

      case 'referrerpolicy':
        ele.referrerpolicy = value as String;
        break;

      case 'shape':
        ele.shape = value as String;
        break;

      case 'target':
        ele.target = value as String;
        break;

      case 'hash':
        ele.hash = value as String;
        break;

      case 'host':
        ele.host = value as String;
        break;

      case 'hostname':
        ele.hostname = value as String;
        break;

      case 'href':
        ele.href = value as String;
        break;

      case 'password':
        ele.password = value as String;
        break;

      case 'pathname':
        ele.pathname = value as String;
        break;

      case 'port':
        ele.port = value as String;
        break;

      case 'protocol':
        ele.protocol = value as String;
        break;

      case 'search':
        ele.search = value as String;
        break;

      case 'username':
        ele.username = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryAreaElement(
      AreaElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'alt':
        ele.alt = null;
        break;

      case 'coords':
        ele.coords = null;
        break;

      case 'referrerpolicy':
        ele.referrerpolicy = null;
        break;

      case 'shape':
        ele.shape = null;
        break;

      case 'target':
        ele.target = null;
        break;

      case 'hash':
        ele.hash = null;
        break;

      case 'host':
        ele.host = null;
        break;

      case 'hostname':
        ele.hostname = null;
        break;

      case 'href':
        ele.href = null;
        break;

      case 'password':
        ele.password = null;
        break;

      case 'pathname':
        ele.pathname = null;
        break;

      case 'port':
        ele.port = null;
        break;

      case 'protocol':
        ele.protocol = null;
        break;

      case 'search':
        ele.search = null;
        break;

      case 'username':
        ele.username = null;
        break;
    }
  }
}

class VAudioElement extends VMediaElement<AudioElement> {
  @override
  AudioElement elementFactory() => new AudioElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(AudioElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeAudioElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VAudioElement prev, AudioElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryAudioElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeAudioElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeAudioElement(
      AudioElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryAudioElement(
      AudioElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VBRElement extends VHtmlElement<BRElement> {
  @override
  BRElement elementFactory() => new BRElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(BRElement ele) {
    _setValues.forEach((k, dynamic v) => _updateAttributeBRElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VBRElement prev, BRElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryBRElement(ele, k, v));
    _setValues.forEach((k, dynamic v) => _updateAttributeBRElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeBRElement(BRElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryBRElement(
      BRElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VBaseElement extends VHtmlElement<BaseElement> {
  @override
  BaseElement elementFactory() => new BaseElement();

  var _setValues = <String, dynamic>{};

  String get href => _setValues['href'] as String;
  set href(String v) {
    _setValues['href'] = v;
  }

  String get target => _setValues['target'] as String;
  set target(String v) {
    _setValues['target'] = v;
  }

  @override
  void applyAttributesToElement(BaseElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeBaseElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VBaseElement prev, BaseElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryBaseElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeBaseElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeBaseElement(BaseElement ele, String key, dynamic value) {
    switch (key) {
      case 'href':
        ele.href = value as String;
        break;

      case 'target':
        ele.target = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryBaseElement(
      BaseElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'href':
        ele.href = null;
        break;

      case 'target':
        ele.target = null;
        break;
    }
  }
}

class VBodyElement extends VHtmlElement<BodyElement> {
  @override
  BodyElement elementFactory() => new BodyElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(BodyElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeBodyElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VBodyElement prev, BodyElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryBodyElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeBodyElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeBodyElement(BodyElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryBodyElement(
      BodyElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VButtonElement extends VHtmlElement<ButtonElement> {
  @override
  ButtonElement elementFactory() => new ButtonElement();

  var _setValues = <String, dynamic>{};

  bool get autofocus => _setValues['autofocus'] as bool;
  set autofocus(bool v) {
    _setValues['autofocus'] = v;
  }

  bool get disabled => _setValues['disabled'] as bool;
  set disabled(bool v) {
    _setValues['disabled'] = v;
  }

  String get formAction => _setValues['formAction'] as String;
  set formAction(String v) {
    _setValues['formAction'] = v;
  }

  String get formEnctype => _setValues['formEnctype'] as String;
  set formEnctype(String v) {
    _setValues['formEnctype'] = v;
  }

  String get formMethod => _setValues['formMethod'] as String;
  set formMethod(String v) {
    _setValues['formMethod'] = v;
  }

  bool get formNoValidate => _setValues['formNoValidate'] as bool;
  set formNoValidate(bool v) {
    _setValues['formNoValidate'] = v;
  }

  String get formTarget => _setValues['formTarget'] as String;
  set formTarget(String v) {
    _setValues['formTarget'] = v;
  }

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  String get value => _setValues['value'] as String;
  set value(String v) {
    _setValues['value'] = v;
  }

  @override
  void applyAttributesToElement(ButtonElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeButtonElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VButtonElement prev, ButtonElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryButtonElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeButtonElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeButtonElement(
      ButtonElement ele, String key, dynamic value) {
    switch (key) {
      case 'autofocus':
        ele.autofocus = value as bool;
        break;

      case 'disabled':
        ele.disabled = value as bool;
        break;

      case 'formAction':
        ele.formAction = value as String;
        break;

      case 'formEnctype':
        ele.formEnctype = value as String;
        break;

      case 'formMethod':
        ele.formMethod = value as String;
        break;

      case 'formNoValidate':
        ele.formNoValidate = value as bool;
        break;

      case 'formTarget':
        ele.formTarget = value as String;
        break;

      case 'name':
        ele.name = value as String;
        break;

      case 'type':
        ele.type = value as String;
        break;

      case 'value':
        ele.value = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryButtonElement(
      ButtonElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'autofocus':
        ele.autofocus = null;
        break;

      case 'disabled':
        ele.disabled = null;
        break;

      case 'formAction':
        ele.formAction = null;
        break;

      case 'formEnctype':
        ele.formEnctype = null;
        break;

      case 'formMethod':
        ele.formMethod = null;
        break;

      case 'formNoValidate':
        ele.formNoValidate = null;
        break;

      case 'formTarget':
        ele.formTarget = null;
        break;

      case 'name':
        ele.name = null;
        break;

      case 'type':
        ele.type = null;
        break;

      case 'value':
        ele.value = null;
        break;
    }
  }
}

class VCanvasElement extends VHtmlElement<CanvasElement> {
  @override
  CanvasElement elementFactory() => new CanvasElement();

  var _setValues = <String, dynamic>{};

  int get height => _setValues['height'] as int;
  set height(int v) {
    _setValues['height'] = v;
  }

  int get width => _setValues['width'] as int;
  set width(int v) {
    _setValues['width'] = v;
  }

  @override
  void applyAttributesToElement(CanvasElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeCanvasElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VCanvasElement prev, CanvasElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryCanvasElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeCanvasElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeCanvasElement(
      CanvasElement ele, String key, dynamic value) {
    switch (key) {
      case 'height':
        ele.height = value as int;
        break;

      case 'width':
        ele.width = value as int;
        break;
    }
  }

  void _removeAttributeIfNecessaryCanvasElement(
      CanvasElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'height':
        ele.height = null;
        break;

      case 'width':
        ele.width = null;
        break;
    }
  }
}

class VContentElement extends VHtmlElement<ContentElement> {
  @override
  ContentElement elementFactory() => new ContentElement();

  var _setValues = <String, dynamic>{};

  String get select => _setValues['select'] as String;
  set select(String v) {
    _setValues['select'] = v;
  }

  @override
  void applyAttributesToElement(ContentElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeContentElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VContentElement prev, ContentElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryContentElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeContentElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeContentElement(
      ContentElement ele, String key, dynamic value) {
    switch (key) {
      case 'select':
        ele.select = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryContentElement(
      ContentElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'select':
        ele.select = null;
        break;
    }
  }
}

class VDListElement extends VHtmlElement<DListElement> {
  @override
  DListElement elementFactory() => new DListElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(DListElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDListElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VDListElement prev, DListElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryDListElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDListElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeDListElement(
      DListElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryDListElement(
      DListElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VDataListElement extends VHtmlElement<DataListElement> {
  @override
  DataListElement elementFactory() => new DataListElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(DataListElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDataListElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VDataListElement prev, DataListElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryDataListElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDataListElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeDataListElement(
      DataListElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryDataListElement(
      DataListElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VDetailsElement extends VHtmlElement<DetailsElement> {
  @override
  DetailsElement elementFactory() => new DetailsElement();

  var _setValues = <String, dynamic>{};

  bool get open => _setValues['open'] as bool;
  set open(bool v) {
    _setValues['open'] = v;
  }

  @override
  void applyAttributesToElement(DetailsElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDetailsElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VDetailsElement prev, DetailsElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryDetailsElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDetailsElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeDetailsElement(
      DetailsElement ele, String key, dynamic value) {
    switch (key) {
      case 'open':
        ele.open = value as bool;
        break;
    }
  }

  void _removeAttributeIfNecessaryDetailsElement(
      DetailsElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'open':
        ele.open = null;
        break;
    }
  }
}

abstract class VDialogElement<T extends DialogElement> extends VHtmlElement<T> {
  var _setValues = <String, dynamic>{};

  bool get open => _setValues['open'] as bool;
  set open(bool v) {
    _setValues['open'] = v;
  }

  String get returnValue => _setValues['returnValue'] as String;
  set returnValue(String v) {
    _setValues['returnValue'] = v;
  }

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDialogElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VDialogElement<T> prev, T ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryDialogElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDialogElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeDialogElement(
      DialogElement ele, String key, dynamic value) {
    switch (key) {
      case 'open':
        ele.open = value as bool;
        break;

      case 'returnValue':
        ele.returnValue = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryDialogElement(
      DialogElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'open':
        ele.open = null;
        break;

      case 'returnValue':
        ele.returnValue = null;
        break;
    }
  }
}

class VDivElement extends VHtmlElement<DivElement> {
  @override
  DivElement elementFactory() => new DivElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(DivElement ele) {
    _setValues.forEach((k, dynamic v) => _updateAttributeDivElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VDivElement prev, DivElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryDivElement(ele, k, v));
    _setValues.forEach((k, dynamic v) => _updateAttributeDivElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeDivElement(DivElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryDivElement(
      DivElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VEmbedElement extends VHtmlElement<EmbedElement> {
  @override
  EmbedElement elementFactory() => new EmbedElement();

  var _setValues = <String, dynamic>{};

  String get height => _setValues['height'] as String;
  set height(String v) {
    _setValues['height'] = v;
  }

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  String get src => _setValues['src'] as String;
  set src(String v) {
    _setValues['src'] = v;
  }

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  String get width => _setValues['width'] as String;
  set width(String v) {
    _setValues['width'] = v;
  }

  @override
  void applyAttributesToElement(EmbedElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeEmbedElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VEmbedElement prev, EmbedElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryEmbedElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeEmbedElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeEmbedElement(
      EmbedElement ele, String key, dynamic value) {
    switch (key) {
      case 'height':
        ele.height = value as String;
        break;

      case 'name':
        ele.name = value as String;
        break;

      case 'src':
        ele.src = value as String;
        break;

      case 'type':
        ele.type = value as String;
        break;

      case 'width':
        ele.width = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryEmbedElement(
      EmbedElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'height':
        ele.height = null;
        break;

      case 'name':
        ele.name = null;
        break;

      case 'src':
        ele.src = null;
        break;

      case 'type':
        ele.type = null;
        break;

      case 'width':
        ele.width = null;
        break;
    }
  }
}

class VFieldSetElement extends VHtmlElement<FieldSetElement> {
  @override
  FieldSetElement elementFactory() => new FieldSetElement();

  var _setValues = <String, dynamic>{};

  bool get disabled => _setValues['disabled'] as bool;
  set disabled(bool v) {
    _setValues['disabled'] = v;
  }

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  @override
  void applyAttributesToElement(FieldSetElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFieldSetElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VFieldSetElement prev, FieldSetElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFieldSetElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFieldSetElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFieldSetElement(
      FieldSetElement ele, String key, dynamic value) {
    switch (key) {
      case 'disabled':
        ele.disabled = value as bool;
        break;

      case 'name':
        ele.name = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryFieldSetElement(
      FieldSetElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'disabled':
        ele.disabled = null;
        break;

      case 'name':
        ele.name = null;
        break;
    }
  }
}

class VFormElement extends VHtmlElement<FormElement> {
  @override
  FormElement elementFactory() => new FormElement();

  var _setValues = <String, dynamic>{};

  String get acceptCharset => _setValues['acceptCharset'] as String;
  set acceptCharset(String v) {
    _setValues['acceptCharset'] = v;
  }

  String get action => _setValues['action'] as String;
  set action(String v) {
    _setValues['action'] = v;
  }

  String get autocomplete => _setValues['autocomplete'] as String;
  set autocomplete(String v) {
    _setValues['autocomplete'] = v;
  }

  String get encoding => _setValues['encoding'] as String;
  set encoding(String v) {
    _setValues['encoding'] = v;
  }

  String get enctype => _setValues['enctype'] as String;
  set enctype(String v) {
    _setValues['enctype'] = v;
  }

  String get method => _setValues['method'] as String;
  set method(String v) {
    _setValues['method'] = v;
  }

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  bool get noValidate => _setValues['noValidate'] as bool;
  set noValidate(bool v) {
    _setValues['noValidate'] = v;
  }

  String get target => _setValues['target'] as String;
  set target(String v) {
    _setValues['target'] = v;
  }

  @override
  void applyAttributesToElement(FormElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFormElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VFormElement prev, FormElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryFormElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFormElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFormElement(FormElement ele, String key, dynamic value) {
    switch (key) {
      case 'acceptCharset':
        ele.acceptCharset = value as String;
        break;

      case 'action':
        ele.action = value as String;
        break;

      case 'autocomplete':
        ele.autocomplete = value as String;
        break;

      case 'encoding':
        ele.encoding = value as String;
        break;

      case 'enctype':
        ele.enctype = value as String;
        break;

      case 'method':
        ele.method = value as String;
        break;

      case 'name':
        ele.name = value as String;
        break;

      case 'noValidate':
        ele.noValidate = value as bool;
        break;

      case 'target':
        ele.target = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryFormElement(
      FormElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'acceptCharset':
        ele.acceptCharset = null;
        break;

      case 'action':
        ele.action = null;
        break;

      case 'autocomplete':
        ele.autocomplete = null;
        break;

      case 'encoding':
        ele.encoding = null;
        break;

      case 'enctype':
        ele.enctype = null;
        break;

      case 'method':
        ele.method = null;
        break;

      case 'name':
        ele.name = null;
        break;

      case 'noValidate':
        ele.noValidate = null;
        break;

      case 'target':
        ele.target = null;
        break;
    }
  }
}

class VHRElement extends VHtmlElement<HRElement> {
  @override
  HRElement elementFactory() => new HRElement();

  var _setValues = <String, dynamic>{};

  String get color => _setValues['color'] as String;
  set color(String v) {
    _setValues['color'] = v;
  }

  @override
  void applyAttributesToElement(HRElement ele) {
    _setValues.forEach((k, dynamic v) => _updateAttributeHRElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VHRElement prev, HRElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryHRElement(ele, k, v));
    _setValues.forEach((k, dynamic v) => _updateAttributeHRElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeHRElement(HRElement ele, String key, dynamic value) {
    switch (key) {
      case 'color':
        ele.color = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryHRElement(
      HRElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'color':
        ele.color = null;
        break;
    }
  }
}

class VHeadElement extends VHtmlElement<HeadElement> {
  @override
  HeadElement elementFactory() => new HeadElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(HeadElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeHeadElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VHeadElement prev, HeadElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryHeadElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeHeadElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeHeadElement(HeadElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryHeadElement(
      HeadElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VHeadingElement<T extends HeadingElement>
    extends VHtmlElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeHeadingElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VHeadingElement<T> prev, T ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryHeadingElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeHeadingElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeHeadingElement(
      HeadingElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryHeadingElement(
      HeadingElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VHtmlHtmlElement extends VHtmlElement<HtmlHtmlElement> {
  @override
  HtmlHtmlElement elementFactory() => new HtmlHtmlElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(HtmlHtmlElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeHtmlHtmlElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VHtmlHtmlElement prev, HtmlHtmlElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryHtmlHtmlElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeHtmlHtmlElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeHtmlHtmlElement(
      HtmlHtmlElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryHtmlHtmlElement(
      HtmlHtmlElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VIFrameElement extends VHtmlElement<IFrameElement> {
  @override
  IFrameElement elementFactory() => new IFrameElement();

  var _setValues = <String, dynamic>{};

  bool get allowFullscreen => _setValues['allowFullscreen'] as bool;
  set allowFullscreen(bool v) {
    _setValues['allowFullscreen'] = v;
  }

  String get height => _setValues['height'] as String;
  set height(String v) {
    _setValues['height'] = v;
  }

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  String get referrerpolicy => _setValues['referrerpolicy'] as String;
  set referrerpolicy(String v) {
    _setValues['referrerpolicy'] = v;
  }

  String get src => _setValues['src'] as String;
  set src(String v) {
    _setValues['src'] = v;
  }

  String get srcdoc => _setValues['srcdoc'] as String;
  set srcdoc(String v) {
    _setValues['srcdoc'] = v;
  }

  String get width => _setValues['width'] as String;
  set width(String v) {
    _setValues['width'] = v;
  }

  @override
  void applyAttributesToElement(IFrameElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeIFrameElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VIFrameElement prev, IFrameElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryIFrameElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeIFrameElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeIFrameElement(
      IFrameElement ele, String key, dynamic value) {
    switch (key) {
      case 'allowFullscreen':
        ele.allowFullscreen = value as bool;
        break;

      case 'height':
        ele.height = value as String;
        break;

      case 'name':
        ele.name = value as String;
        break;

      case 'referrerpolicy':
        ele.referrerpolicy = value as String;
        break;

      case 'src':
        ele.src = value as String;
        break;

      case 'srcdoc':
        ele.srcdoc = value as String;
        break;

      case 'width':
        ele.width = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryIFrameElement(
      IFrameElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'allowFullscreen':
        ele.allowFullscreen = null;
        break;

      case 'height':
        ele.height = null;
        break;

      case 'name':
        ele.name = null;
        break;

      case 'referrerpolicy':
        ele.referrerpolicy = null;
        break;

      case 'src':
        ele.src = null;
        break;

      case 'srcdoc':
        ele.srcdoc = null;
        break;

      case 'width':
        ele.width = null;
        break;
    }
  }
}

class VImageElement extends VHtmlElement<ImageElement> {
  @override
  ImageElement elementFactory() => new ImageElement();

  var _setValues = <String, dynamic>{};

  String get alt => _setValues['alt'] as String;
  set alt(String v) {
    _setValues['alt'] = v;
  }

  String get crossOrigin => _setValues['crossOrigin'] as String;
  set crossOrigin(String v) {
    _setValues['crossOrigin'] = v;
  }

  int get height => _setValues['height'] as int;
  set height(int v) {
    _setValues['height'] = v;
  }

  bool get isMap => _setValues['isMap'] as bool;
  set isMap(bool v) {
    _setValues['isMap'] = v;
  }

  String get referrerpolicy => _setValues['referrerpolicy'] as String;
  set referrerpolicy(String v) {
    _setValues['referrerpolicy'] = v;
  }

  String get sizes => _setValues['sizes'] as String;
  set sizes(String v) {
    _setValues['sizes'] = v;
  }

  String get src => _setValues['src'] as String;
  set src(String v) {
    _setValues['src'] = v;
  }

  String get srcset => _setValues['srcset'] as String;
  set srcset(String v) {
    _setValues['srcset'] = v;
  }

  String get useMap => _setValues['useMap'] as String;
  set useMap(String v) {
    _setValues['useMap'] = v;
  }

  int get width => _setValues['width'] as int;
  set width(int v) {
    _setValues['width'] = v;
  }

  @override
  void applyAttributesToElement(ImageElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeImageElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VImageElement prev, ImageElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryImageElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeImageElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeImageElement(
      ImageElement ele, String key, dynamic value) {
    switch (key) {
      case 'alt':
        ele.alt = value as String;
        break;

      case 'crossOrigin':
        ele.crossOrigin = value as String;
        break;

      case 'height':
        ele.height = value as int;
        break;

      case 'isMap':
        ele.isMap = value as bool;
        break;

      case 'referrerpolicy':
        ele.referrerpolicy = value as String;
        break;

      case 'sizes':
        ele.sizes = value as String;
        break;

      case 'src':
        ele.src = value as String;
        break;

      case 'srcset':
        ele.srcset = value as String;
        break;

      case 'useMap':
        ele.useMap = value as String;
        break;

      case 'width':
        ele.width = value as int;
        break;
    }
  }

  void _removeAttributeIfNecessaryImageElement(
      ImageElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'alt':
        ele.alt = null;
        break;

      case 'crossOrigin':
        ele.crossOrigin = null;
        break;

      case 'height':
        ele.height = null;
        break;

      case 'isMap':
        ele.isMap = null;
        break;

      case 'referrerpolicy':
        ele.referrerpolicy = null;
        break;

      case 'sizes':
        ele.sizes = null;
        break;

      case 'src':
        ele.src = null;
        break;

      case 'srcset':
        ele.srcset = null;
        break;

      case 'useMap':
        ele.useMap = null;
        break;

      case 'width':
        ele.width = null;
        break;
    }
  }
}

class VInputElement extends VHtmlElement<InputElement> {
  @override
  InputElement elementFactory() => new InputElement();

  var _setValues = <String, dynamic>{};

  String get accept => _setValues['accept'] as String;
  set accept(String v) {
    _setValues['accept'] = v;
  }

  String get alt => _setValues['alt'] as String;
  set alt(String v) {
    _setValues['alt'] = v;
  }

  String get autocapitalize => _setValues['autocapitalize'] as String;
  set autocapitalize(String v) {
    _setValues['autocapitalize'] = v;
  }

  String get autocomplete => _setValues['autocomplete'] as String;
  set autocomplete(String v) {
    _setValues['autocomplete'] = v;
  }

  bool get autofocus => _setValues['autofocus'] as bool;
  set autofocus(bool v) {
    _setValues['autofocus'] = v;
  }

  bool get capture => _setValues['capture'] as bool;
  set capture(bool v) {
    _setValues['capture'] = v;
  }

  bool get checked => _setValues['checked'] as bool;
  set checked(bool v) {
    _setValues['checked'] = v;
  }

  bool get defaultChecked => _setValues['defaultChecked'] as bool;
  set defaultChecked(bool v) {
    _setValues['defaultChecked'] = v;
  }

  String get defaultValue => _setValues['defaultValue'] as String;
  set defaultValue(String v) {
    _setValues['defaultValue'] = v;
  }

  String get dirName => _setValues['dirName'] as String;
  set dirName(String v) {
    _setValues['dirName'] = v;
  }

  bool get disabled => _setValues['disabled'] as bool;
  set disabled(bool v) {
    _setValues['disabled'] = v;
  }

  List<File> get files => _setValues['files'] as List<File>;
  set files(List<File> v) {
    _setValues['files'] = v;
  }

  String get formAction => _setValues['formAction'] as String;
  set formAction(String v) {
    _setValues['formAction'] = v;
  }

  String get formEnctype => _setValues['formEnctype'] as String;
  set formEnctype(String v) {
    _setValues['formEnctype'] = v;
  }

  String get formMethod => _setValues['formMethod'] as String;
  set formMethod(String v) {
    _setValues['formMethod'] = v;
  }

  bool get formNoValidate => _setValues['formNoValidate'] as bool;
  set formNoValidate(bool v) {
    _setValues['formNoValidate'] = v;
  }

  String get formTarget => _setValues['formTarget'] as String;
  set formTarget(String v) {
    _setValues['formTarget'] = v;
  }

  int get height => _setValues['height'] as int;
  set height(int v) {
    _setValues['height'] = v;
  }

  bool get incremental => _setValues['incremental'] as bool;
  set incremental(bool v) {
    _setValues['incremental'] = v;
  }

  bool get indeterminate => _setValues['indeterminate'] as bool;
  set indeterminate(bool v) {
    _setValues['indeterminate'] = v;
  }

  String get inputMode => _setValues['inputMode'] as String;
  set inputMode(String v) {
    _setValues['inputMode'] = v;
  }

  String get max => _setValues['max'] as String;
  set max(String v) {
    _setValues['max'] = v;
  }

  int get maxLength => _setValues['maxLength'] as int;
  set maxLength(int v) {
    _setValues['maxLength'] = v;
  }

  String get min => _setValues['min'] as String;
  set min(String v) {
    _setValues['min'] = v;
  }

  int get minLength => _setValues['minLength'] as int;
  set minLength(int v) {
    _setValues['minLength'] = v;
  }

  bool get multiple => _setValues['multiple'] as bool;
  set multiple(bool v) {
    _setValues['multiple'] = v;
  }

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  String get pattern => _setValues['pattern'] as String;
  set pattern(String v) {
    _setValues['pattern'] = v;
  }

  String get placeholder => _setValues['placeholder'] as String;
  set placeholder(String v) {
    _setValues['placeholder'] = v;
  }

  bool get readOnly => _setValues['readOnly'] as bool;
  set readOnly(bool v) {
    _setValues['readOnly'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  String get selectionDirection => _setValues['selectionDirection'] as String;
  set selectionDirection(String v) {
    _setValues['selectionDirection'] = v;
  }

  int get selectionEnd => _setValues['selectionEnd'] as int;
  set selectionEnd(int v) {
    _setValues['selectionEnd'] = v;
  }

  int get selectionStart => _setValues['selectionStart'] as int;
  set selectionStart(int v) {
    _setValues['selectionStart'] = v;
  }

  int get size => _setValues['size'] as int;
  set size(int v) {
    _setValues['size'] = v;
  }

  String get src => _setValues['src'] as String;
  set src(String v) {
    _setValues['src'] = v;
  }

  String get step => _setValues['step'] as String;
  set step(String v) {
    _setValues['step'] = v;
  }

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  String get value => _setValues['value'] as String;
  set value(String v) {
    _setValues['value'] = v;
  }

  num get valueAsNumber => _setValues['valueAsNumber'] as num;
  set valueAsNumber(num v) {
    _setValues['valueAsNumber'] = v;
  }

  bool get directory => _setValues['directory'] as bool;
  set directory(bool v) {
    _setValues['directory'] = v;
  }

  int get width => _setValues['width'] as int;
  set width(int v) {
    _setValues['width'] = v;
  }

  DateTime get valueAsDate => _setValues['valueAsDate'] as DateTime;
  set valueAsDate(DateTime v) {
    _setValues['valueAsDate'] = v;
  }

  @override
  void applyAttributesToElement(InputElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VInputElement prev, InputElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryInputElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeInputElement(
      InputElement ele, String key, dynamic value) {
    switch (key) {
      case 'accept':
        ele.accept = value as String;
        break;

      case 'alt':
        ele.alt = value as String;
        break;

      case 'autocapitalize':
        ele.autocapitalize = value as String;
        break;

      case 'autocomplete':
        ele.autocomplete = value as String;
        break;

      case 'autofocus':
        ele.autofocus = value as bool;
        break;

      case 'capture':
        ele.capture = value as bool;
        break;

      case 'checked':
        ele.checked = value as bool;
        break;

      case 'defaultChecked':
        ele.defaultChecked = value as bool;
        break;

      case 'defaultValue':
        ele.defaultValue = value as String;
        break;

      case 'dirName':
        ele.dirName = value as String;
        break;

      case 'disabled':
        ele.disabled = value as bool;
        break;

      case 'files':
        ele.files = value as List<File>;
        break;

      case 'formAction':
        ele.formAction = value as String;
        break;

      case 'formEnctype':
        ele.formEnctype = value as String;
        break;

      case 'formMethod':
        ele.formMethod = value as String;
        break;

      case 'formNoValidate':
        ele.formNoValidate = value as bool;
        break;

      case 'formTarget':
        ele.formTarget = value as String;
        break;

      case 'height':
        ele.height = value as int;
        break;

      case 'incremental':
        ele.incremental = value as bool;
        break;

      case 'indeterminate':
        ele.indeterminate = value as bool;
        break;

      case 'inputMode':
        ele.inputMode = value as String;
        break;

      case 'max':
        ele.max = value as String;
        break;

      case 'maxLength':
        ele.maxLength = value as int;
        break;

      case 'min':
        ele.min = value as String;
        break;

      case 'minLength':
        ele.minLength = value as int;
        break;

      case 'multiple':
        ele.multiple = value as bool;
        break;

      case 'name':
        ele.name = value as String;
        break;

      case 'pattern':
        ele.pattern = value as String;
        break;

      case 'placeholder':
        ele.placeholder = value as String;
        break;

      case 'readOnly':
        ele.readOnly = value as bool;
        break;

      case 'required':
        ele.required = value as bool;
        break;

      case 'selectionDirection':
        ele.selectionDirection = value as String;
        break;

      case 'selectionEnd':
        ele.selectionEnd = value as int;
        break;

      case 'selectionStart':
        ele.selectionStart = value as int;
        break;

      case 'size':
        ele.size = value as int;
        break;

      case 'src':
        ele.src = value as String;
        break;

      case 'step':
        ele.step = value as String;
        break;

      case 'type':
        ele.type = value as String;
        break;

      case 'value':
        ele.value = value as String;
        break;

      case 'valueAsNumber':
        ele.valueAsNumber = value as num;
        break;

      case 'directory':
        ele.directory = value as bool;
        break;

      case 'width':
        ele.width = value as int;
        break;

      case 'valueAsDate':
        ele.valueAsDate = value as DateTime;
        break;
    }
  }

  void _removeAttributeIfNecessaryInputElement(
      InputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'accept':
        ele.accept = null;
        break;

      case 'alt':
        ele.alt = null;
        break;

      case 'autocapitalize':
        ele.autocapitalize = null;
        break;

      case 'autocomplete':
        ele.autocomplete = null;
        break;

      case 'autofocus':
        ele.autofocus = null;
        break;

      case 'capture':
        ele.capture = null;
        break;

      case 'checked':
        ele.checked = null;
        break;

      case 'defaultChecked':
        ele.defaultChecked = null;
        break;

      case 'defaultValue':
        ele.defaultValue = null;
        break;

      case 'dirName':
        ele.dirName = null;
        break;

      case 'disabled':
        ele.disabled = null;
        break;

      case 'files':
        ele.files = null;
        break;

      case 'formAction':
        ele.formAction = null;
        break;

      case 'formEnctype':
        ele.formEnctype = null;
        break;

      case 'formMethod':
        ele.formMethod = null;
        break;

      case 'formNoValidate':
        ele.formNoValidate = null;
        break;

      case 'formTarget':
        ele.formTarget = null;
        break;

      case 'height':
        ele.height = null;
        break;

      case 'incremental':
        ele.incremental = null;
        break;

      case 'indeterminate':
        ele.indeterminate = null;
        break;

      case 'inputMode':
        ele.inputMode = null;
        break;

      case 'max':
        ele.max = null;
        break;

      case 'maxLength':
        ele.maxLength = null;
        break;

      case 'min':
        ele.min = null;
        break;

      case 'minLength':
        ele.minLength = null;
        break;

      case 'multiple':
        ele.multiple = null;
        break;

      case 'name':
        ele.name = null;
        break;

      case 'pattern':
        ele.pattern = null;
        break;

      case 'placeholder':
        ele.placeholder = null;
        break;

      case 'readOnly':
        ele.readOnly = null;
        break;

      case 'required':
        ele.required = null;
        break;

      case 'selectionDirection':
        ele.selectionDirection = null;
        break;

      case 'selectionEnd':
        ele.selectionEnd = null;
        break;

      case 'selectionStart':
        ele.selectionStart = null;
        break;

      case 'size':
        ele.size = null;
        break;

      case 'src':
        ele.src = null;
        break;

      case 'step':
        ele.step = null;
        break;

      case 'type':
        ele.type = null;
        break;

      case 'value':
        ele.value = null;
        break;

      case 'valueAsNumber':
        ele.valueAsNumber = null;
        break;

      case 'directory':
        ele.directory = null;
        break;

      case 'width':
        ele.width = null;
        break;

      case 'valueAsDate':
        ele.valueAsDate = null;
        break;
    }
  }
}

abstract class VInputElementBase<T extends InputElementBase>
    extends VElement<T> {
  var _setValues = <String, dynamic>{};

  bool get autofocus => _setValues['autofocus'] as bool;
  set autofocus(bool v) {
    _setValues['autofocus'] = v;
  }

  bool get disabled => _setValues['disabled'] as bool;
  set disabled(bool v) {
    _setValues['disabled'] = v;
  }

  bool get incremental => _setValues['incremental'] as bool;
  set incremental(bool v) {
    _setValues['incremental'] = v;
  }

  bool get indeterminate => _setValues['indeterminate'] as bool;
  set indeterminate(bool v) {
    _setValues['indeterminate'] = v;
  }

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  String get value => _setValues['value'] as String;
  set value(String v) {
    _setValues['value'] = v;
  }

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeInputElementBase(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VInputElementBase<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryInputElementBase(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeInputElementBase(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeInputElementBase(
      InputElementBase ele, String key, dynamic value) {
    switch (key) {
      case 'autofocus':
        ele.autofocus = value as bool;
        break;

      case 'disabled':
        ele.disabled = value as bool;
        break;

      case 'incremental':
        ele.incremental = value as bool;
        break;

      case 'indeterminate':
        ele.indeterminate = value as bool;
        break;

      case 'name':
        ele.name = value as String;
        break;

      case 'value':
        ele.value = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryInputElementBase(
      InputElementBase ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'autofocus':
        ele.autofocus = null;
        break;

      case 'disabled':
        ele.disabled = null;
        break;

      case 'incremental':
        ele.incremental = null;
        break;

      case 'indeterminate':
        ele.indeterminate = null;
        break;

      case 'name':
        ele.name = null;
        break;

      case 'value':
        ele.value = null;
        break;
    }
  }
}

class VHiddenInputElement extends VInputElementBase<HiddenInputElement> {
  @override
  HiddenInputElement elementFactory() => new HiddenInputElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(HiddenInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeHiddenInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VHiddenInputElement prev, HiddenInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryHiddenInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeHiddenInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeHiddenInputElement(
      HiddenInputElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryHiddenInputElement(
      HiddenInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VTextInputElementBase<T extends TextInputElementBase>
    extends VInputElementBase<T> {
  var _setValues = <String, dynamic>{};

  String get autocomplete => _setValues['autocomplete'] as String;
  set autocomplete(String v) {
    _setValues['autocomplete'] = v;
  }

  int get maxLength => _setValues['maxLength'] as int;
  set maxLength(int v) {
    _setValues['maxLength'] = v;
  }

  String get pattern => _setValues['pattern'] as String;
  set pattern(String v) {
    _setValues['pattern'] = v;
  }

  String get placeholder => _setValues['placeholder'] as String;
  set placeholder(String v) {
    _setValues['placeholder'] = v;
  }

  bool get readOnly => _setValues['readOnly'] as bool;
  set readOnly(bool v) {
    _setValues['readOnly'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  int get size => _setValues['size'] as int;
  set size(int v) {
    _setValues['size'] = v;
  }

  String get selectionDirection => _setValues['selectionDirection'] as String;
  set selectionDirection(String v) {
    _setValues['selectionDirection'] = v;
  }

  int get selectionEnd => _setValues['selectionEnd'] as int;
  set selectionEnd(int v) {
    _setValues['selectionEnd'] = v;
  }

  int get selectionStart => _setValues['selectionStart'] as int;
  set selectionStart(int v) {
    _setValues['selectionStart'] = v;
  }

  @override
  void applyAttributesToElement(T ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeTextInputElementBase(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VTextInputElementBase<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTextInputElementBase(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeTextInputElementBase(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTextInputElementBase(
      TextInputElementBase ele, String key, dynamic value) {
    switch (key) {
      case 'autocomplete':
        ele.autocomplete = value as String;
        break;

      case 'maxLength':
        ele.maxLength = value as int;
        break;

      case 'pattern':
        ele.pattern = value as String;
        break;

      case 'placeholder':
        ele.placeholder = value as String;
        break;

      case 'readOnly':
        ele.readOnly = value as bool;
        break;

      case 'required':
        ele.required = value as bool;
        break;

      case 'size':
        ele.size = value as int;
        break;

      case 'selectionDirection':
        ele.selectionDirection = value as String;
        break;

      case 'selectionEnd':
        ele.selectionEnd = value as int;
        break;

      case 'selectionStart':
        ele.selectionStart = value as int;
        break;
    }
  }

  void _removeAttributeIfNecessaryTextInputElementBase(
      TextInputElementBase ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'autocomplete':
        ele.autocomplete = null;
        break;

      case 'maxLength':
        ele.maxLength = null;
        break;

      case 'pattern':
        ele.pattern = null;
        break;

      case 'placeholder':
        ele.placeholder = null;
        break;

      case 'readOnly':
        ele.readOnly = null;
        break;

      case 'required':
        ele.required = null;
        break;

      case 'size':
        ele.size = null;
        break;

      case 'selectionDirection':
        ele.selectionDirection = null;
        break;

      case 'selectionEnd':
        ele.selectionEnd = null;
        break;

      case 'selectionStart':
        ele.selectionStart = null;
        break;
    }
  }
}

class VSearchInputElement extends VTextInputElementBase<SearchInputElement> {
  @override
  SearchInputElement elementFactory() => new SearchInputElement();

  var _setValues = <String, dynamic>{};

  String get dirName => _setValues['dirName'] as String;
  set dirName(String v) {
    _setValues['dirName'] = v;
  }

  @override
  void applyAttributesToElement(SearchInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeSearchInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VSearchInputElement prev, SearchInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessarySearchInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeSearchInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSearchInputElement(
      SearchInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'dirName':
        ele.dirName = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessarySearchInputElement(
      SearchInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'dirName':
        ele.dirName = null;
        break;
    }
  }
}

class VTextInputElement extends VTextInputElementBase<TextInputElement> {
  @override
  TextInputElement elementFactory() => new TextInputElement();

  var _setValues = <String, dynamic>{};

  String get dirName => _setValues['dirName'] as String;
  set dirName(String v) {
    _setValues['dirName'] = v;
  }

  @override
  void applyAttributesToElement(TextInputElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTextInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VTextInputElement prev, TextInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTextInputElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTextInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTextInputElement(
      TextInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'dirName':
        ele.dirName = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryTextInputElement(
      TextInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'dirName':
        ele.dirName = null;
        break;
    }
  }
}

class VUrlInputElement extends VTextInputElementBase<UrlInputElement> {
  @override
  UrlInputElement elementFactory() => new UrlInputElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(UrlInputElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeUrlInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VUrlInputElement prev, UrlInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryUrlInputElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeUrlInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeUrlInputElement(
      UrlInputElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryUrlInputElement(
      UrlInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VTelephoneInputElement
    extends VTextInputElementBase<TelephoneInputElement> {
  @override
  TelephoneInputElement elementFactory() => new TelephoneInputElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(TelephoneInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeTelephoneInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VTelephoneInputElement prev, TelephoneInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTelephoneInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeTelephoneInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTelephoneInputElement(
      TelephoneInputElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryTelephoneInputElement(
      TelephoneInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VEmailInputElement extends VTextInputElementBase<EmailInputElement> {
  @override
  EmailInputElement elementFactory() => new EmailInputElement();

  var _setValues = <String, dynamic>{};

  String get autocomplete => _setValues['autocomplete'] as String;
  set autocomplete(String v) {
    _setValues['autocomplete'] = v;
  }

  bool get autofocus => _setValues['autofocus'] as bool;
  set autofocus(bool v) {
    _setValues['autofocus'] = v;
  }

  int get maxLength => _setValues['maxLength'] as int;
  set maxLength(int v) {
    _setValues['maxLength'] = v;
  }

  bool get multiple => _setValues['multiple'] as bool;
  set multiple(bool v) {
    _setValues['multiple'] = v;
  }

  String get pattern => _setValues['pattern'] as String;
  set pattern(String v) {
    _setValues['pattern'] = v;
  }

  String get placeholder => _setValues['placeholder'] as String;
  set placeholder(String v) {
    _setValues['placeholder'] = v;
  }

  bool get readOnly => _setValues['readOnly'] as bool;
  set readOnly(bool v) {
    _setValues['readOnly'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  int get size => _setValues['size'] as int;
  set size(int v) {
    _setValues['size'] = v;
  }

  @override
  void applyAttributesToElement(EmailInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeEmailInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VEmailInputElement prev, EmailInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryEmailInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeEmailInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeEmailInputElement(
      EmailInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'autocomplete':
        ele.autocomplete = value as String;
        break;

      case 'autofocus':
        ele.autofocus = value as bool;
        break;

      case 'maxLength':
        ele.maxLength = value as int;
        break;

      case 'multiple':
        ele.multiple = value as bool;
        break;

      case 'pattern':
        ele.pattern = value as String;
        break;

      case 'placeholder':
        ele.placeholder = value as String;
        break;

      case 'readOnly':
        ele.readOnly = value as bool;
        break;

      case 'required':
        ele.required = value as bool;
        break;

      case 'size':
        ele.size = value as int;
        break;
    }
  }

  void _removeAttributeIfNecessaryEmailInputElement(
      EmailInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'autocomplete':
        ele.autocomplete = null;
        break;

      case 'autofocus':
        ele.autofocus = null;
        break;

      case 'maxLength':
        ele.maxLength = null;
        break;

      case 'multiple':
        ele.multiple = null;
        break;

      case 'pattern':
        ele.pattern = null;
        break;

      case 'placeholder':
        ele.placeholder = null;
        break;

      case 'readOnly':
        ele.readOnly = null;
        break;

      case 'required':
        ele.required = null;
        break;

      case 'size':
        ele.size = null;
        break;
    }
  }
}

class VPasswordInputElement
    extends VTextInputElementBase<PasswordInputElement> {
  @override
  PasswordInputElement elementFactory() => new PasswordInputElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(PasswordInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributePasswordInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VPasswordInputElement prev, PasswordInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryPasswordInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributePasswordInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributePasswordInputElement(
      PasswordInputElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryPasswordInputElement(
      PasswordInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VRangeInputElementBase<T extends RangeInputElementBase>
    extends VInputElementBase<T> {
  var _setValues = <String, dynamic>{};

  String get max => _setValues['max'] as String;
  set max(String v) {
    _setValues['max'] = v;
  }

  String get min => _setValues['min'] as String;
  set min(String v) {
    _setValues['min'] = v;
  }

  String get step => _setValues['step'] as String;
  set step(String v) {
    _setValues['step'] = v;
  }

  num get valueAsNumber => _setValues['valueAsNumber'] as num;
  set valueAsNumber(num v) {
    _setValues['valueAsNumber'] = v;
  }

  @override
  void applyAttributesToElement(T ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeRangeInputElementBase(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      covariant VRangeInputElementBase<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryRangeInputElementBase(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeRangeInputElementBase(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeRangeInputElementBase(
      RangeInputElementBase ele, String key, dynamic value) {
    switch (key) {
      case 'max':
        ele.max = value as String;
        break;

      case 'min':
        ele.min = value as String;
        break;

      case 'step':
        ele.step = value as String;
        break;

      case 'valueAsNumber':
        ele.valueAsNumber = value as num;
        break;
    }
  }

  void _removeAttributeIfNecessaryRangeInputElementBase(
      RangeInputElementBase ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'max':
        ele.max = null;
        break;

      case 'min':
        ele.min = null;
        break;

      case 'step':
        ele.step = null;
        break;

      case 'valueAsNumber':
        ele.valueAsNumber = null;
        break;
    }
  }
}

class VDateInputElement extends VRangeInputElementBase<DateInputElement> {
  @override
  DateInputElement elementFactory() => new DateInputElement();

  var _setValues = <String, dynamic>{};

  DateTime get valueAsDate => _setValues['valueAsDate'] as DateTime;
  set valueAsDate(DateTime v) {
    _setValues['valueAsDate'] = v;
  }

  bool get readOnly => _setValues['readOnly'] as bool;
  set readOnly(bool v) {
    _setValues['readOnly'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  @override
  void applyAttributesToElement(DateInputElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDateInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VDateInputElement prev, DateInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryDateInputElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDateInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeDateInputElement(
      DateInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'valueAsDate':
        ele.valueAsDate = value as DateTime;
        break;

      case 'readOnly':
        ele.readOnly = value as bool;
        break;

      case 'required':
        ele.required = value as bool;
        break;
    }
  }

  void _removeAttributeIfNecessaryDateInputElement(
      DateInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'valueAsDate':
        ele.valueAsDate = null;
        break;

      case 'readOnly':
        ele.readOnly = null;
        break;

      case 'required':
        ele.required = null;
        break;
    }
  }
}

class VMonthInputElement extends VRangeInputElementBase<MonthInputElement> {
  @override
  MonthInputElement elementFactory() => new MonthInputElement();

  var _setValues = <String, dynamic>{};

  DateTime get valueAsDate => _setValues['valueAsDate'] as DateTime;
  set valueAsDate(DateTime v) {
    _setValues['valueAsDate'] = v;
  }

  bool get readOnly => _setValues['readOnly'] as bool;
  set readOnly(bool v) {
    _setValues['readOnly'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  @override
  void applyAttributesToElement(MonthInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeMonthInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VMonthInputElement prev, MonthInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryMonthInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeMonthInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMonthInputElement(
      MonthInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'valueAsDate':
        ele.valueAsDate = value as DateTime;
        break;

      case 'readOnly':
        ele.readOnly = value as bool;
        break;

      case 'required':
        ele.required = value as bool;
        break;
    }
  }

  void _removeAttributeIfNecessaryMonthInputElement(
      MonthInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'valueAsDate':
        ele.valueAsDate = null;
        break;

      case 'readOnly':
        ele.readOnly = null;
        break;

      case 'required':
        ele.required = null;
        break;
    }
  }
}

class VWeekInputElement extends VRangeInputElementBase<WeekInputElement> {
  @override
  WeekInputElement elementFactory() => new WeekInputElement();

  var _setValues = <String, dynamic>{};

  DateTime get valueAsDate => _setValues['valueAsDate'] as DateTime;
  set valueAsDate(DateTime v) {
    _setValues['valueAsDate'] = v;
  }

  bool get readOnly => _setValues['readOnly'] as bool;
  set readOnly(bool v) {
    _setValues['readOnly'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  @override
  void applyAttributesToElement(WeekInputElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeWeekInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VWeekInputElement prev, WeekInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryWeekInputElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeWeekInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeWeekInputElement(
      WeekInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'valueAsDate':
        ele.valueAsDate = value as DateTime;
        break;

      case 'readOnly':
        ele.readOnly = value as bool;
        break;

      case 'required':
        ele.required = value as bool;
        break;
    }
  }

  void _removeAttributeIfNecessaryWeekInputElement(
      WeekInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'valueAsDate':
        ele.valueAsDate = null;
        break;

      case 'readOnly':
        ele.readOnly = null;
        break;

      case 'required':
        ele.required = null;
        break;
    }
  }
}

class VTimeInputElement extends VRangeInputElementBase<TimeInputElement> {
  @override
  TimeInputElement elementFactory() => new TimeInputElement();

  var _setValues = <String, dynamic>{};

  DateTime get valueAsDate => _setValues['valueAsDate'] as DateTime;
  set valueAsDate(DateTime v) {
    _setValues['valueAsDate'] = v;
  }

  bool get readOnly => _setValues['readOnly'] as bool;
  set readOnly(bool v) {
    _setValues['readOnly'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  @override
  void applyAttributesToElement(TimeInputElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTimeInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VTimeInputElement prev, TimeInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTimeInputElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTimeInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTimeInputElement(
      TimeInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'valueAsDate':
        ele.valueAsDate = value as DateTime;
        break;

      case 'readOnly':
        ele.readOnly = value as bool;
        break;

      case 'required':
        ele.required = value as bool;
        break;
    }
  }

  void _removeAttributeIfNecessaryTimeInputElement(
      TimeInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'valueAsDate':
        ele.valueAsDate = null;
        break;

      case 'readOnly':
        ele.readOnly = null;
        break;

      case 'required':
        ele.required = null;
        break;
    }
  }
}

class VLocalDateTimeInputElement
    extends VRangeInputElementBase<LocalDateTimeInputElement> {
  @override
  LocalDateTimeInputElement elementFactory() => new LocalDateTimeInputElement();

  var _setValues = <String, dynamic>{};

  bool get readOnly => _setValues['readOnly'] as bool;
  set readOnly(bool v) {
    _setValues['readOnly'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  @override
  void applyAttributesToElement(LocalDateTimeInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeLocalDateTimeInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VLocalDateTimeInputElement prev, LocalDateTimeInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryLocalDateTimeInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeLocalDateTimeInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeLocalDateTimeInputElement(
      LocalDateTimeInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'readOnly':
        ele.readOnly = value as bool;
        break;

      case 'required':
        ele.required = value as bool;
        break;
    }
  }

  void _removeAttributeIfNecessaryLocalDateTimeInputElement(
      LocalDateTimeInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'readOnly':
        ele.readOnly = null;
        break;

      case 'required':
        ele.required = null;
        break;
    }
  }
}

class VNumberInputElement extends VRangeInputElementBase<NumberInputElement> {
  @override
  NumberInputElement elementFactory() => new NumberInputElement();

  var _setValues = <String, dynamic>{};

  String get placeholder => _setValues['placeholder'] as String;
  set placeholder(String v) {
    _setValues['placeholder'] = v;
  }

  bool get readOnly => _setValues['readOnly'] as bool;
  set readOnly(bool v) {
    _setValues['readOnly'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  @override
  void applyAttributesToElement(NumberInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeNumberInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VNumberInputElement prev, NumberInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryNumberInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeNumberInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeNumberInputElement(
      NumberInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'placeholder':
        ele.placeholder = value as String;
        break;

      case 'readOnly':
        ele.readOnly = value as bool;
        break;

      case 'required':
        ele.required = value as bool;
        break;
    }
  }

  void _removeAttributeIfNecessaryNumberInputElement(
      NumberInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'placeholder':
        ele.placeholder = null;
        break;

      case 'readOnly':
        ele.readOnly = null;
        break;

      case 'required':
        ele.required = null;
        break;
    }
  }
}

class VRangeInputElement extends VRangeInputElementBase<RangeInputElement> {
  @override
  RangeInputElement elementFactory() => new RangeInputElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(RangeInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeRangeInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VRangeInputElement prev, RangeInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryRangeInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeRangeInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeRangeInputElement(
      RangeInputElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryRangeInputElement(
      RangeInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VCheckboxInputElement extends VInputElementBase<CheckboxInputElement> {
  @override
  CheckboxInputElement elementFactory() => new CheckboxInputElement();

  var _setValues = <String, dynamic>{};

  bool get checked => _setValues['checked'] as bool;
  set checked(bool v) {
    _setValues['checked'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  @override
  void applyAttributesToElement(CheckboxInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeCheckboxInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VCheckboxInputElement prev, CheckboxInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryCheckboxInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeCheckboxInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeCheckboxInputElement(
      CheckboxInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'checked':
        ele.checked = value as bool;
        break;

      case 'required':
        ele.required = value as bool;
        break;
    }
  }

  void _removeAttributeIfNecessaryCheckboxInputElement(
      CheckboxInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'checked':
        ele.checked = null;
        break;

      case 'required':
        ele.required = null;
        break;
    }
  }
}

class VRadioButtonInputElement
    extends VInputElementBase<RadioButtonInputElement> {
  @override
  RadioButtonInputElement elementFactory() => new RadioButtonInputElement();

  var _setValues = <String, dynamic>{};

  bool get checked => _setValues['checked'] as bool;
  set checked(bool v) {
    _setValues['checked'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  @override
  void applyAttributesToElement(RadioButtonInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeRadioButtonInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VRadioButtonInputElement prev, RadioButtonInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryRadioButtonInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeRadioButtonInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeRadioButtonInputElement(
      RadioButtonInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'checked':
        ele.checked = value as bool;
        break;

      case 'required':
        ele.required = value as bool;
        break;
    }
  }

  void _removeAttributeIfNecessaryRadioButtonInputElement(
      RadioButtonInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'checked':
        ele.checked = null;
        break;

      case 'required':
        ele.required = null;
        break;
    }
  }
}

class VFileUploadInputElement
    extends VInputElementBase<FileUploadInputElement> {
  @override
  FileUploadInputElement elementFactory() => new FileUploadInputElement();

  var _setValues = <String, dynamic>{};

  String get accept => _setValues['accept'] as String;
  set accept(String v) {
    _setValues['accept'] = v;
  }

  bool get multiple => _setValues['multiple'] as bool;
  set multiple(bool v) {
    _setValues['multiple'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  List<File> get files => _setValues['files'] as List<File>;
  set files(List<File> v) {
    _setValues['files'] = v;
  }

  @override
  void applyAttributesToElement(FileUploadInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFileUploadInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VFileUploadInputElement prev, FileUploadInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFileUploadInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFileUploadInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFileUploadInputElement(
      FileUploadInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'accept':
        ele.accept = value as String;
        break;

      case 'multiple':
        ele.multiple = value as bool;
        break;

      case 'required':
        ele.required = value as bool;
        break;

      case 'files':
        ele.files = value as List<File>;
        break;
    }
  }

  void _removeAttributeIfNecessaryFileUploadInputElement(
      FileUploadInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'accept':
        ele.accept = null;
        break;

      case 'multiple':
        ele.multiple = null;
        break;

      case 'required':
        ele.required = null;
        break;

      case 'files':
        ele.files = null;
        break;
    }
  }
}

class VSubmitButtonInputElement
    extends VInputElementBase<SubmitButtonInputElement> {
  @override
  SubmitButtonInputElement elementFactory() => new SubmitButtonInputElement();

  var _setValues = <String, dynamic>{};

  String get formAction => _setValues['formAction'] as String;
  set formAction(String v) {
    _setValues['formAction'] = v;
  }

  String get formEnctype => _setValues['formEnctype'] as String;
  set formEnctype(String v) {
    _setValues['formEnctype'] = v;
  }

  String get formMethod => _setValues['formMethod'] as String;
  set formMethod(String v) {
    _setValues['formMethod'] = v;
  }

  bool get formNoValidate => _setValues['formNoValidate'] as bool;
  set formNoValidate(bool v) {
    _setValues['formNoValidate'] = v;
  }

  String get formTarget => _setValues['formTarget'] as String;
  set formTarget(String v) {
    _setValues['formTarget'] = v;
  }

  @override
  void applyAttributesToElement(SubmitButtonInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeSubmitButtonInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VSubmitButtonInputElement prev, SubmitButtonInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessarySubmitButtonInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeSubmitButtonInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSubmitButtonInputElement(
      SubmitButtonInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'formAction':
        ele.formAction = value as String;
        break;

      case 'formEnctype':
        ele.formEnctype = value as String;
        break;

      case 'formMethod':
        ele.formMethod = value as String;
        break;

      case 'formNoValidate':
        ele.formNoValidate = value as bool;
        break;

      case 'formTarget':
        ele.formTarget = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessarySubmitButtonInputElement(
      SubmitButtonInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'formAction':
        ele.formAction = null;
        break;

      case 'formEnctype':
        ele.formEnctype = null;
        break;

      case 'formMethod':
        ele.formMethod = null;
        break;

      case 'formNoValidate':
        ele.formNoValidate = null;
        break;

      case 'formTarget':
        ele.formTarget = null;
        break;
    }
  }
}

class VImageButtonInputElement
    extends VInputElementBase<ImageButtonInputElement> {
  @override
  ImageButtonInputElement elementFactory() => new ImageButtonInputElement();

  var _setValues = <String, dynamic>{};

  String get alt => _setValues['alt'] as String;
  set alt(String v) {
    _setValues['alt'] = v;
  }

  String get formAction => _setValues['formAction'] as String;
  set formAction(String v) {
    _setValues['formAction'] = v;
  }

  String get formEnctype => _setValues['formEnctype'] as String;
  set formEnctype(String v) {
    _setValues['formEnctype'] = v;
  }

  String get formMethod => _setValues['formMethod'] as String;
  set formMethod(String v) {
    _setValues['formMethod'] = v;
  }

  bool get formNoValidate => _setValues['formNoValidate'] as bool;
  set formNoValidate(bool v) {
    _setValues['formNoValidate'] = v;
  }

  String get formTarget => _setValues['formTarget'] as String;
  set formTarget(String v) {
    _setValues['formTarget'] = v;
  }

  int get height => _setValues['height'] as int;
  set height(int v) {
    _setValues['height'] = v;
  }

  String get src => _setValues['src'] as String;
  set src(String v) {
    _setValues['src'] = v;
  }

  int get width => _setValues['width'] as int;
  set width(int v) {
    _setValues['width'] = v;
  }

  @override
  void applyAttributesToElement(ImageButtonInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeImageButtonInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VImageButtonInputElement prev, ImageButtonInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryImageButtonInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeImageButtonInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeImageButtonInputElement(
      ImageButtonInputElement ele, String key, dynamic value) {
    switch (key) {
      case 'alt':
        ele.alt = value as String;
        break;

      case 'formAction':
        ele.formAction = value as String;
        break;

      case 'formEnctype':
        ele.formEnctype = value as String;
        break;

      case 'formMethod':
        ele.formMethod = value as String;
        break;

      case 'formNoValidate':
        ele.formNoValidate = value as bool;
        break;

      case 'formTarget':
        ele.formTarget = value as String;
        break;

      case 'height':
        ele.height = value as int;
        break;

      case 'src':
        ele.src = value as String;
        break;

      case 'width':
        ele.width = value as int;
        break;
    }
  }

  void _removeAttributeIfNecessaryImageButtonInputElement(
      ImageButtonInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'alt':
        ele.alt = null;
        break;

      case 'formAction':
        ele.formAction = null;
        break;

      case 'formEnctype':
        ele.formEnctype = null;
        break;

      case 'formMethod':
        ele.formMethod = null;
        break;

      case 'formNoValidate':
        ele.formNoValidate = null;
        break;

      case 'formTarget':
        ele.formTarget = null;
        break;

      case 'height':
        ele.height = null;
        break;

      case 'src':
        ele.src = null;
        break;

      case 'width':
        ele.width = null;
        break;
    }
  }
}

class VResetButtonInputElement
    extends VInputElementBase<ResetButtonInputElement> {
  @override
  ResetButtonInputElement elementFactory() => new ResetButtonInputElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(ResetButtonInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeResetButtonInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VResetButtonInputElement prev, ResetButtonInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryResetButtonInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeResetButtonInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeResetButtonInputElement(
      ResetButtonInputElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryResetButtonInputElement(
      ResetButtonInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VButtonInputElement extends VInputElementBase<ButtonInputElement> {
  @override
  ButtonInputElement elementFactory() => new ButtonInputElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(ButtonInputElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeButtonInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VButtonInputElement prev, ButtonInputElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryButtonInputElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeButtonInputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeButtonInputElement(
      ButtonInputElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryButtonInputElement(
      ButtonInputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VKeygenElement extends VHtmlElement<KeygenElement> {
  @override
  KeygenElement elementFactory() => new KeygenElement();

  var _setValues = <String, dynamic>{};

  bool get autofocus => _setValues['autofocus'] as bool;
  set autofocus(bool v) {
    _setValues['autofocus'] = v;
  }

  String get challenge => _setValues['challenge'] as String;
  set challenge(String v) {
    _setValues['challenge'] = v;
  }

  bool get disabled => _setValues['disabled'] as bool;
  set disabled(bool v) {
    _setValues['disabled'] = v;
  }

  String get keytype => _setValues['keytype'] as String;
  set keytype(String v) {
    _setValues['keytype'] = v;
  }

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  @override
  void applyAttributesToElement(KeygenElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeKeygenElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VKeygenElement prev, KeygenElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryKeygenElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeKeygenElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeKeygenElement(
      KeygenElement ele, String key, dynamic value) {
    switch (key) {
      case 'autofocus':
        ele.autofocus = value as bool;
        break;

      case 'challenge':
        ele.challenge = value as String;
        break;

      case 'disabled':
        ele.disabled = value as bool;
        break;

      case 'keytype':
        ele.keytype = value as String;
        break;

      case 'name':
        ele.name = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryKeygenElement(
      KeygenElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'autofocus':
        ele.autofocus = null;
        break;

      case 'challenge':
        ele.challenge = null;
        break;

      case 'disabled':
        ele.disabled = null;
        break;

      case 'keytype':
        ele.keytype = null;
        break;

      case 'name':
        ele.name = null;
        break;
    }
  }
}

class VLIElement extends VHtmlElement<LIElement> {
  @override
  LIElement elementFactory() => new LIElement();

  var _setValues = <String, dynamic>{};

  int get value => _setValues['value'] as int;
  set value(int v) {
    _setValues['value'] = v;
  }

  @override
  void applyAttributesToElement(LIElement ele) {
    _setValues.forEach((k, dynamic v) => _updateAttributeLIElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VLIElement prev, LIElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryLIElement(ele, k, v));
    _setValues.forEach((k, dynamic v) => _updateAttributeLIElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeLIElement(LIElement ele, String key, dynamic value) {
    switch (key) {
      case 'value':
        ele.value = value as int;
        break;
    }
  }

  void _removeAttributeIfNecessaryLIElement(
      LIElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'value':
        ele.value = null;
        break;
    }
  }
}

class VLabelElement extends VHtmlElement<LabelElement> {
  @override
  LabelElement elementFactory() => new LabelElement();

  var _setValues = <String, dynamic>{};

  String get htmlFor => _setValues['htmlFor'] as String;
  set htmlFor(String v) {
    _setValues['htmlFor'] = v;
  }

  @override
  void applyAttributesToElement(LabelElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeLabelElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VLabelElement prev, LabelElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryLabelElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeLabelElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeLabelElement(
      LabelElement ele, String key, dynamic value) {
    switch (key) {
      case 'htmlFor':
        ele.htmlFor = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryLabelElement(
      LabelElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'htmlFor':
        ele.htmlFor = null;
        break;
    }
  }
}

class VLegendElement extends VHtmlElement<LegendElement> {
  @override
  LegendElement elementFactory() => new LegendElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(LegendElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeLegendElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VLegendElement prev, LegendElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryLegendElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeLegendElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeLegendElement(
      LegendElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryLegendElement(
      LegendElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VLinkElement extends VHtmlElement<LinkElement> {
  @override
  LinkElement elementFactory() => new LinkElement();

  var _setValues = <String, dynamic>{};

  String get as => _setValues['as'] as String;
  set as(String v) {
    _setValues['as'] = v;
  }

  String get crossOrigin => _setValues['crossOrigin'] as String;
  set crossOrigin(String v) {
    _setValues['crossOrigin'] = v;
  }

  bool get disabled => _setValues['disabled'] as bool;
  set disabled(bool v) {
    _setValues['disabled'] = v;
  }

  String get href => _setValues['href'] as String;
  set href(String v) {
    _setValues['href'] = v;
  }

  String get hreflang => _setValues['hreflang'] as String;
  set hreflang(String v) {
    _setValues['hreflang'] = v;
  }

  String get integrity => _setValues['integrity'] as String;
  set integrity(String v) {
    _setValues['integrity'] = v;
  }

  String get media => _setValues['media'] as String;
  set media(String v) {
    _setValues['media'] = v;
  }

  String get rel => _setValues['rel'] as String;
  set rel(String v) {
    _setValues['rel'] = v;
  }

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  @override
  void applyAttributesToElement(LinkElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeLinkElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VLinkElement prev, LinkElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryLinkElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeLinkElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeLinkElement(LinkElement ele, String key, dynamic value) {
    switch (key) {
      case 'as':
        ele.as = value as String;
        break;

      case 'crossOrigin':
        ele.crossOrigin = value as String;
        break;

      case 'disabled':
        ele.disabled = value as bool;
        break;

      case 'href':
        ele.href = value as String;
        break;

      case 'hreflang':
        ele.hreflang = value as String;
        break;

      case 'integrity':
        ele.integrity = value as String;
        break;

      case 'media':
        ele.media = value as String;
        break;

      case 'rel':
        ele.rel = value as String;
        break;

      case 'type':
        ele.type = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryLinkElement(
      LinkElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'as':
        ele.as = null;
        break;

      case 'crossOrigin':
        ele.crossOrigin = null;
        break;

      case 'disabled':
        ele.disabled = null;
        break;

      case 'href':
        ele.href = null;
        break;

      case 'hreflang':
        ele.hreflang = null;
        break;

      case 'integrity':
        ele.integrity = null;
        break;

      case 'media':
        ele.media = null;
        break;

      case 'rel':
        ele.rel = null;
        break;

      case 'type':
        ele.type = null;
        break;
    }
  }
}

class VMapElement extends VHtmlElement<MapElement> {
  @override
  MapElement elementFactory() => new MapElement();

  var _setValues = <String, dynamic>{};

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  @override
  void applyAttributesToElement(MapElement ele) {
    _setValues.forEach((k, dynamic v) => _updateAttributeMapElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VMapElement prev, MapElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryMapElement(ele, k, v));
    _setValues.forEach((k, dynamic v) => _updateAttributeMapElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMapElement(MapElement ele, String key, dynamic value) {
    switch (key) {
      case 'name':
        ele.name = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryMapElement(
      MapElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'name':
        ele.name = null;
        break;
    }
  }
}

abstract class VMediaElement<T extends MediaElement> extends VHtmlElement<T> {
  var _setValues = <String, dynamic>{};

  bool get autoplay => _setValues['autoplay'] as bool;
  set autoplay(bool v) {
    _setValues['autoplay'] = v;
  }

  bool get controls => _setValues['controls'] as bool;
  set controls(bool v) {
    _setValues['controls'] = v;
  }

  String get crossOrigin => _setValues['crossOrigin'] as String;
  set crossOrigin(String v) {
    _setValues['crossOrigin'] = v;
  }

  num get currentTime => _setValues['currentTime'] as num;
  set currentTime(num v) {
    _setValues['currentTime'] = v;
  }

  bool get defaultMuted => _setValues['defaultMuted'] as bool;
  set defaultMuted(bool v) {
    _setValues['defaultMuted'] = v;
  }

  num get defaultPlaybackRate => _setValues['defaultPlaybackRate'] as num;
  set defaultPlaybackRate(num v) {
    _setValues['defaultPlaybackRate'] = v;
  }

  bool get disableRemotePlayback => _setValues['disableRemotePlayback'] as bool;
  set disableRemotePlayback(bool v) {
    _setValues['disableRemotePlayback'] = v;
  }

  bool get loop => _setValues['loop'] as bool;
  set loop(bool v) {
    _setValues['loop'] = v;
  }

  bool get muted => _setValues['muted'] as bool;
  set muted(bool v) {
    _setValues['muted'] = v;
  }

  num get playbackRate => _setValues['playbackRate'] as num;
  set playbackRate(num v) {
    _setValues['playbackRate'] = v;
  }

  String get preload => _setValues['preload'] as String;
  set preload(String v) {
    _setValues['preload'] = v;
  }

  MediaSession get session => _setValues['session'] as MediaSession;
  set session(MediaSession v) {
    _setValues['session'] = v;
  }

  String get src => _setValues['src'] as String;
  set src(String v) {
    _setValues['src'] = v;
  }

  num get volume => _setValues['volume'] as num;
  set volume(num v) {
    _setValues['volume'] = v;
  }

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMediaElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VMediaElement<T> prev, T ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryMediaElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMediaElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMediaElement(
      MediaElement ele, String key, dynamic value) {
    switch (key) {
      case 'autoplay':
        ele.autoplay = value as bool;
        break;

      case 'controls':
        ele.controls = value as bool;
        break;

      case 'crossOrigin':
        ele.crossOrigin = value as String;
        break;

      case 'currentTime':
        ele.currentTime = value as num;
        break;

      case 'defaultMuted':
        ele.defaultMuted = value as bool;
        break;

      case 'defaultPlaybackRate':
        ele.defaultPlaybackRate = value as num;
        break;

      case 'disableRemotePlayback':
        ele.disableRemotePlayback = value as bool;
        break;

      case 'loop':
        ele.loop = value as bool;
        break;

      case 'muted':
        ele.muted = value as bool;
        break;

      case 'playbackRate':
        ele.playbackRate = value as num;
        break;

      case 'preload':
        ele.preload = value as String;
        break;

      case 'session':
        ele.session = value as MediaSession;
        break;

      case 'src':
        ele.src = value as String;
        break;

      case 'volume':
        ele.volume = value as num;
        break;
    }
  }

  void _removeAttributeIfNecessaryMediaElement(
      MediaElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'autoplay':
        ele.autoplay = null;
        break;

      case 'controls':
        ele.controls = null;
        break;

      case 'crossOrigin':
        ele.crossOrigin = null;
        break;

      case 'currentTime':
        ele.currentTime = null;
        break;

      case 'defaultMuted':
        ele.defaultMuted = null;
        break;

      case 'defaultPlaybackRate':
        ele.defaultPlaybackRate = null;
        break;

      case 'disableRemotePlayback':
        ele.disableRemotePlayback = null;
        break;

      case 'loop':
        ele.loop = null;
        break;

      case 'muted':
        ele.muted = null;
        break;

      case 'playbackRate':
        ele.playbackRate = null;
        break;

      case 'preload':
        ele.preload = null;
        break;

      case 'session':
        ele.session = null;
        break;

      case 'src':
        ele.src = null;
        break;

      case 'volume':
        ele.volume = null;
        break;
    }
  }
}

class VMenuElement extends VHtmlElement<MenuElement> {
  @override
  MenuElement elementFactory() => new MenuElement();

  var _setValues = <String, dynamic>{};

  String get label => _setValues['label'] as String;
  set label(String v) {
    _setValues['label'] = v;
  }

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  @override
  void applyAttributesToElement(MenuElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMenuElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VMenuElement prev, MenuElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryMenuElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMenuElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMenuElement(MenuElement ele, String key, dynamic value) {
    switch (key) {
      case 'label':
        ele.label = value as String;
        break;

      case 'type':
        ele.type = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryMenuElement(
      MenuElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'label':
        ele.label = null;
        break;

      case 'type':
        ele.type = null;
        break;
    }
  }
}

abstract class VMenuItemElement<T extends MenuItemElement>
    extends VHtmlElement<T> {
  var _setValues = <String, dynamic>{};

  bool get checked => _setValues['checked'] as bool;
  set checked(bool v) {
    _setValues['checked'] = v;
  }

  bool get defaultValue => _setValues['defaultValue'] as bool;
  set defaultValue(bool v) {
    _setValues['defaultValue'] = v;
  }

  bool get disabled => _setValues['disabled'] as bool;
  set disabled(bool v) {
    _setValues['disabled'] = v;
  }

  String get icon => _setValues['icon'] as String;
  set icon(String v) {
    _setValues['icon'] = v;
  }

  String get label => _setValues['label'] as String;
  set label(String v) {
    _setValues['label'] = v;
  }

  String get radiogroup => _setValues['radiogroup'] as String;
  set radiogroup(String v) {
    _setValues['radiogroup'] = v;
  }

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMenuItemElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VMenuItemElement<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryMenuItemElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMenuItemElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMenuItemElement(
      MenuItemElement ele, String key, dynamic value) {
    switch (key) {
      case 'checked':
        ele.checked = value as bool;
        break;

      case 'defaultValue':
        ele.defaultValue = value as bool;
        break;

      case 'disabled':
        ele.disabled = value as bool;
        break;

      case 'icon':
        ele.icon = value as String;
        break;

      case 'label':
        ele.label = value as String;
        break;

      case 'radiogroup':
        ele.radiogroup = value as String;
        break;

      case 'type':
        ele.type = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryMenuItemElement(
      MenuItemElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'checked':
        ele.checked = null;
        break;

      case 'defaultValue':
        ele.defaultValue = null;
        break;

      case 'disabled':
        ele.disabled = null;
        break;

      case 'icon':
        ele.icon = null;
        break;

      case 'label':
        ele.label = null;
        break;

      case 'radiogroup':
        ele.radiogroup = null;
        break;

      case 'type':
        ele.type = null;
        break;
    }
  }
}

class VMetaElement extends VHtmlElement<MetaElement> {
  @override
  MetaElement elementFactory() => new MetaElement();

  var _setValues = <String, dynamic>{};

  String get content => _setValues['content'] as String;
  set content(String v) {
    _setValues['content'] = v;
  }

  String get httpEquiv => _setValues['httpEquiv'] as String;
  set httpEquiv(String v) {
    _setValues['httpEquiv'] = v;
  }

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  @override
  void applyAttributesToElement(MetaElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMetaElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VMetaElement prev, MetaElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryMetaElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMetaElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMetaElement(MetaElement ele, String key, dynamic value) {
    switch (key) {
      case 'content':
        ele.content = value as String;
        break;

      case 'httpEquiv':
        ele.httpEquiv = value as String;
        break;

      case 'name':
        ele.name = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryMetaElement(
      MetaElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'content':
        ele.content = null;
        break;

      case 'httpEquiv':
        ele.httpEquiv = null;
        break;

      case 'name':
        ele.name = null;
        break;
    }
  }
}

class VMeterElement extends VHtmlElement<MeterElement> {
  @override
  MeterElement elementFactory() => new MeterElement();

  var _setValues = <String, dynamic>{};

  num get high => _setValues['high'] as num;
  set high(num v) {
    _setValues['high'] = v;
  }

  num get low => _setValues['low'] as num;
  set low(num v) {
    _setValues['low'] = v;
  }

  num get max => _setValues['max'] as num;
  set max(num v) {
    _setValues['max'] = v;
  }

  num get min => _setValues['min'] as num;
  set min(num v) {
    _setValues['min'] = v;
  }

  num get optimum => _setValues['optimum'] as num;
  set optimum(num v) {
    _setValues['optimum'] = v;
  }

  num get value => _setValues['value'] as num;
  set value(num v) {
    _setValues['value'] = v;
  }

  @override
  void applyAttributesToElement(MeterElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMeterElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VMeterElement prev, MeterElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryMeterElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMeterElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMeterElement(
      MeterElement ele, String key, dynamic value) {
    switch (key) {
      case 'high':
        ele.high = value as num;
        break;

      case 'low':
        ele.low = value as num;
        break;

      case 'max':
        ele.max = value as num;
        break;

      case 'min':
        ele.min = value as num;
        break;

      case 'optimum':
        ele.optimum = value as num;
        break;

      case 'value':
        ele.value = value as num;
        break;
    }
  }

  void _removeAttributeIfNecessaryMeterElement(
      MeterElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'high':
        ele.high = null;
        break;

      case 'low':
        ele.low = null;
        break;

      case 'max':
        ele.max = null;
        break;

      case 'min':
        ele.min = null;
        break;

      case 'optimum':
        ele.optimum = null;
        break;

      case 'value':
        ele.value = null;
        break;
    }
  }
}

abstract class VModElement<T extends ModElement> extends VHtmlElement<T> {
  var _setValues = <String, dynamic>{};

  String get cite => _setValues['cite'] as String;
  set cite(String v) {
    _setValues['cite'] = v;
  }

  String get dateTime => _setValues['dateTime'] as String;
  set dateTime(String v) {
    _setValues['dateTime'] = v;
  }

  @override
  void applyAttributesToElement(T ele) {
    _setValues.forEach((k, dynamic v) => _updateAttributeModElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VModElement<T> prev, T ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryModElement(ele, k, v));
    _setValues.forEach((k, dynamic v) => _updateAttributeModElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeModElement(ModElement ele, String key, dynamic value) {
    switch (key) {
      case 'cite':
        ele.cite = value as String;
        break;

      case 'dateTime':
        ele.dateTime = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryModElement(
      ModElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'cite':
        ele.cite = null;
        break;

      case 'dateTime':
        ele.dateTime = null;
        break;
    }
  }
}

class VOListElement extends VHtmlElement<OListElement> {
  @override
  OListElement elementFactory() => new OListElement();

  var _setValues = <String, dynamic>{};

  bool get reversed => _setValues['reversed'] as bool;
  set reversed(bool v) {
    _setValues['reversed'] = v;
  }

  int get start => _setValues['start'] as int;
  set start(int v) {
    _setValues['start'] = v;
  }

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  @override
  void applyAttributesToElement(OListElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeOListElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VOListElement prev, OListElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryOListElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeOListElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeOListElement(
      OListElement ele, String key, dynamic value) {
    switch (key) {
      case 'reversed':
        ele.reversed = value as bool;
        break;

      case 'start':
        ele.start = value as int;
        break;

      case 'type':
        ele.type = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryOListElement(
      OListElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'reversed':
        ele.reversed = null;
        break;

      case 'start':
        ele.start = null;
        break;

      case 'type':
        ele.type = null;
        break;
    }
  }
}

class VObjectElement extends VHtmlElement<ObjectElement> {
  @override
  ObjectElement elementFactory() => new ObjectElement();

  var _setValues = <String, dynamic>{};

  String get data => _setValues['data'] as String;
  set data(String v) {
    _setValues['data'] = v;
  }

  String get height => _setValues['height'] as String;
  set height(String v) {
    _setValues['height'] = v;
  }

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  String get useMap => _setValues['useMap'] as String;
  set useMap(String v) {
    _setValues['useMap'] = v;
  }

  String get width => _setValues['width'] as String;
  set width(String v) {
    _setValues['width'] = v;
  }

  @override
  void applyAttributesToElement(ObjectElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeObjectElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VObjectElement prev, ObjectElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryObjectElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeObjectElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeObjectElement(
      ObjectElement ele, String key, dynamic value) {
    switch (key) {
      case 'data':
        ele.data = value as String;
        break;

      case 'height':
        ele.height = value as String;
        break;

      case 'name':
        ele.name = value as String;
        break;

      case 'type':
        ele.type = value as String;
        break;

      case 'useMap':
        ele.useMap = value as String;
        break;

      case 'width':
        ele.width = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryObjectElement(
      ObjectElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'data':
        ele.data = null;
        break;

      case 'height':
        ele.height = null;
        break;

      case 'name':
        ele.name = null;
        break;

      case 'type':
        ele.type = null;
        break;

      case 'useMap':
        ele.useMap = null;
        break;

      case 'width':
        ele.width = null;
        break;
    }
  }
}

class VOptGroupElement extends VHtmlElement<OptGroupElement> {
  @override
  OptGroupElement elementFactory() => new OptGroupElement();

  var _setValues = <String, dynamic>{};

  bool get disabled => _setValues['disabled'] as bool;
  set disabled(bool v) {
    _setValues['disabled'] = v;
  }

  String get label => _setValues['label'] as String;
  set label(String v) {
    _setValues['label'] = v;
  }

  @override
  void applyAttributesToElement(OptGroupElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeOptGroupElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VOptGroupElement prev, OptGroupElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryOptGroupElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeOptGroupElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeOptGroupElement(
      OptGroupElement ele, String key, dynamic value) {
    switch (key) {
      case 'disabled':
        ele.disabled = value as bool;
        break;

      case 'label':
        ele.label = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryOptGroupElement(
      OptGroupElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'disabled':
        ele.disabled = null;
        break;

      case 'label':
        ele.label = null;
        break;
    }
  }
}

class VOptionElement extends VHtmlElement<OptionElement> {
  @override
  OptionElement elementFactory() => new OptionElement();

  var _setValues = <String, dynamic>{};

  bool get defaultSelected => _setValues['defaultSelected'] as bool;
  set defaultSelected(bool v) {
    _setValues['defaultSelected'] = v;
  }

  bool get disabled => _setValues['disabled'] as bool;
  set disabled(bool v) {
    _setValues['disabled'] = v;
  }

  String get label => _setValues['label'] as String;
  set label(String v) {
    _setValues['label'] = v;
  }

  bool get selected => _setValues['selected'] as bool;
  set selected(bool v) {
    _setValues['selected'] = v;
  }

  String get value => _setValues['value'] as String;
  set value(String v) {
    _setValues['value'] = v;
  }

  @override
  void applyAttributesToElement(OptionElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeOptionElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VOptionElement prev, OptionElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryOptionElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeOptionElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeOptionElement(
      OptionElement ele, String key, dynamic value) {
    switch (key) {
      case 'defaultSelected':
        ele.defaultSelected = value as bool;
        break;

      case 'disabled':
        ele.disabled = value as bool;
        break;

      case 'label':
        ele.label = value as String;
        break;

      case 'selected':
        ele.selected = value as bool;
        break;

      case 'value':
        ele.value = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryOptionElement(
      OptionElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'defaultSelected':
        ele.defaultSelected = null;
        break;

      case 'disabled':
        ele.disabled = null;
        break;

      case 'label':
        ele.label = null;
        break;

      case 'selected':
        ele.selected = null;
        break;

      case 'value':
        ele.value = null;
        break;
    }
  }
}

class VOutputElement extends VHtmlElement<OutputElement> {
  @override
  OutputElement elementFactory() => new OutputElement();

  var _setValues = <String, dynamic>{};

  String get defaultValue => _setValues['defaultValue'] as String;
  set defaultValue(String v) {
    _setValues['defaultValue'] = v;
  }

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  String get value => _setValues['value'] as String;
  set value(String v) {
    _setValues['value'] = v;
  }

  @override
  void applyAttributesToElement(OutputElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeOutputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VOutputElement prev, OutputElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryOutputElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeOutputElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeOutputElement(
      OutputElement ele, String key, dynamic value) {
    switch (key) {
      case 'defaultValue':
        ele.defaultValue = value as String;
        break;

      case 'name':
        ele.name = value as String;
        break;

      case 'value':
        ele.value = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryOutputElement(
      OutputElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'defaultValue':
        ele.defaultValue = null;
        break;

      case 'name':
        ele.name = null;
        break;

      case 'value':
        ele.value = null;
        break;
    }
  }
}

class VParagraphElement extends VHtmlElement<ParagraphElement> {
  @override
  ParagraphElement elementFactory() => new ParagraphElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(ParagraphElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeParagraphElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VParagraphElement prev, ParagraphElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryParagraphElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeParagraphElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeParagraphElement(
      ParagraphElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryParagraphElement(
      ParagraphElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VParamElement extends VHtmlElement<ParamElement> {
  @override
  ParamElement elementFactory() => new ParamElement();

  var _setValues = <String, dynamic>{};

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  String get value => _setValues['value'] as String;
  set value(String v) {
    _setValues['value'] = v;
  }

  @override
  void applyAttributesToElement(ParamElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeParamElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VParamElement prev, ParamElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryParamElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeParamElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeParamElement(
      ParamElement ele, String key, dynamic value) {
    switch (key) {
      case 'name':
        ele.name = value as String;
        break;

      case 'value':
        ele.value = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryParamElement(
      ParamElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'name':
        ele.name = null;
        break;

      case 'value':
        ele.value = null;
        break;
    }
  }
}

abstract class VPictureElement<T extends PictureElement>
    extends VHtmlElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributePictureElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VPictureElement<T> prev, T ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryPictureElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributePictureElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributePictureElement(
      PictureElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryPictureElement(
      PictureElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VPreElement extends VHtmlElement<PreElement> {
  @override
  PreElement elementFactory() => new PreElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(PreElement ele) {
    _setValues.forEach((k, dynamic v) => _updateAttributePreElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VPreElement prev, PreElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryPreElement(ele, k, v));
    _setValues.forEach((k, dynamic v) => _updateAttributePreElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributePreElement(PreElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryPreElement(
      PreElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VProgressElement extends VHtmlElement<ProgressElement> {
  @override
  ProgressElement elementFactory() => new ProgressElement();

  var _setValues = <String, dynamic>{};

  num get max => _setValues['max'] as num;
  set max(num v) {
    _setValues['max'] = v;
  }

  num get value => _setValues['value'] as num;
  set value(num v) {
    _setValues['value'] = v;
  }

  @override
  void applyAttributesToElement(ProgressElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeProgressElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VProgressElement prev, ProgressElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryProgressElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeProgressElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeProgressElement(
      ProgressElement ele, String key, dynamic value) {
    switch (key) {
      case 'max':
        ele.max = value as num;
        break;

      case 'value':
        ele.value = value as num;
        break;
    }
  }

  void _removeAttributeIfNecessaryProgressElement(
      ProgressElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'max':
        ele.max = null;
        break;

      case 'value':
        ele.value = null;
        break;
    }
  }
}

class VQuoteElement extends VHtmlElement<QuoteElement> {
  @override
  QuoteElement elementFactory() => new QuoteElement();

  var _setValues = <String, dynamic>{};

  String get cite => _setValues['cite'] as String;
  set cite(String v) {
    _setValues['cite'] = v;
  }

  @override
  void applyAttributesToElement(QuoteElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeQuoteElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VQuoteElement prev, QuoteElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryQuoteElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeQuoteElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeQuoteElement(
      QuoteElement ele, String key, dynamic value) {
    switch (key) {
      case 'cite':
        ele.cite = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryQuoteElement(
      QuoteElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'cite':
        ele.cite = null;
        break;
    }
  }
}

class VScriptElement extends VHtmlElement<ScriptElement> {
  @override
  ScriptElement elementFactory() => new ScriptElement();

  var _setValues = <String, dynamic>{};

  bool get async => _setValues['async'] as bool;
  set async(bool v) {
    _setValues['async'] = v;
  }

  String get charset => _setValues['charset'] as String;
  set charset(String v) {
    _setValues['charset'] = v;
  }

  String get crossOrigin => _setValues['crossOrigin'] as String;
  set crossOrigin(String v) {
    _setValues['crossOrigin'] = v;
  }

  bool get defer => _setValues['defer'] as bool;
  set defer(bool v) {
    _setValues['defer'] = v;
  }

  String get integrity => _setValues['integrity'] as String;
  set integrity(String v) {
    _setValues['integrity'] = v;
  }

  String get nonce => _setValues['nonce'] as String;
  set nonce(String v) {
    _setValues['nonce'] = v;
  }

  String get src => _setValues['src'] as String;
  set src(String v) {
    _setValues['src'] = v;
  }

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  @override
  void applyAttributesToElement(ScriptElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeScriptElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VScriptElement prev, ScriptElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryScriptElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeScriptElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeScriptElement(
      ScriptElement ele, String key, dynamic value) {
    switch (key) {
      case 'async':
        ele.async = value as bool;
        break;

      case 'charset':
        ele.charset = value as String;
        break;

      case 'crossOrigin':
        ele.crossOrigin = value as String;
        break;

      case 'defer':
        ele.defer = value as bool;
        break;

      case 'integrity':
        ele.integrity = value as String;
        break;

      case 'nonce':
        ele.nonce = value as String;
        break;

      case 'src':
        ele.src = value as String;
        break;

      case 'type':
        ele.type = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryScriptElement(
      ScriptElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'async':
        ele.async = null;
        break;

      case 'charset':
        ele.charset = null;
        break;

      case 'crossOrigin':
        ele.crossOrigin = null;
        break;

      case 'defer':
        ele.defer = null;
        break;

      case 'integrity':
        ele.integrity = null;
        break;

      case 'nonce':
        ele.nonce = null;
        break;

      case 'src':
        ele.src = null;
        break;

      case 'type':
        ele.type = null;
        break;
    }
  }
}

class VSelectElement extends VHtmlElement<SelectElement> {
  @override
  SelectElement elementFactory() => new SelectElement();

  var _setValues = <String, dynamic>{};

  bool get autofocus => _setValues['autofocus'] as bool;
  set autofocus(bool v) {
    _setValues['autofocus'] = v;
  }

  bool get disabled => _setValues['disabled'] as bool;
  set disabled(bool v) {
    _setValues['disabled'] = v;
  }

  int get length => _setValues['length'] as int;
  set length(int v) {
    _setValues['length'] = v;
  }

  bool get multiple => _setValues['multiple'] as bool;
  set multiple(bool v) {
    _setValues['multiple'] = v;
  }

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  int get selectedIndex => _setValues['selectedIndex'] as int;
  set selectedIndex(int v) {
    _setValues['selectedIndex'] = v;
  }

  int get size => _setValues['size'] as int;
  set size(int v) {
    _setValues['size'] = v;
  }

  String get value => _setValues['value'] as String;
  set value(String v) {
    _setValues['value'] = v;
  }

  @override
  void applyAttributesToElement(SelectElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSelectElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VSelectElement prev, SelectElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessarySelectElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSelectElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSelectElement(
      SelectElement ele, String key, dynamic value) {
    switch (key) {
      case 'autofocus':
        ele.autofocus = value as bool;
        break;

      case 'disabled':
        ele.disabled = value as bool;
        break;

      case 'length':
        ele.length = value as int;
        break;

      case 'multiple':
        ele.multiple = value as bool;
        break;

      case 'name':
        ele.name = value as String;
        break;

      case 'required':
        ele.required = value as bool;
        break;

      case 'selectedIndex':
        ele.selectedIndex = value as int;
        break;

      case 'size':
        ele.size = value as int;
        break;

      case 'value':
        ele.value = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessarySelectElement(
      SelectElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'autofocus':
        ele.autofocus = null;
        break;

      case 'disabled':
        ele.disabled = null;
        break;

      case 'length':
        ele.length = null;
        break;

      case 'multiple':
        ele.multiple = null;
        break;

      case 'name':
        ele.name = null;
        break;

      case 'required':
        ele.required = null;
        break;

      case 'selectedIndex':
        ele.selectedIndex = null;
        break;

      case 'size':
        ele.size = null;
        break;

      case 'value':
        ele.value = null;
        break;
    }
  }
}

class VShadowElement extends VHtmlElement<ShadowElement> {
  @override
  ShadowElement elementFactory() => new ShadowElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(ShadowElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeShadowElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VShadowElement prev, ShadowElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryShadowElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeShadowElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeShadowElement(
      ShadowElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryShadowElement(
      ShadowElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VSlotElement<T extends SlotElement> extends VHtmlElement<T> {
  var _setValues = <String, dynamic>{};

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSlotElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VSlotElement<T> prev, T ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessarySlotElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSlotElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSlotElement(SlotElement ele, String key, dynamic value) {
    switch (key) {
      case 'name':
        ele.name = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessarySlotElement(
      SlotElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'name':
        ele.name = null;
        break;
    }
  }
}

class VSourceElement extends VHtmlElement<SourceElement> {
  @override
  SourceElement elementFactory() => new SourceElement();

  var _setValues = <String, dynamic>{};

  String get media => _setValues['media'] as String;
  set media(String v) {
    _setValues['media'] = v;
  }

  String get sizes => _setValues['sizes'] as String;
  set sizes(String v) {
    _setValues['sizes'] = v;
  }

  String get src => _setValues['src'] as String;
  set src(String v) {
    _setValues['src'] = v;
  }

  String get srcset => _setValues['srcset'] as String;
  set srcset(String v) {
    _setValues['srcset'] = v;
  }

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  @override
  void applyAttributesToElement(SourceElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSourceElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VSourceElement prev, SourceElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessarySourceElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSourceElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSourceElement(
      SourceElement ele, String key, dynamic value) {
    switch (key) {
      case 'media':
        ele.media = value as String;
        break;

      case 'sizes':
        ele.sizes = value as String;
        break;

      case 'src':
        ele.src = value as String;
        break;

      case 'srcset':
        ele.srcset = value as String;
        break;

      case 'type':
        ele.type = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessarySourceElement(
      SourceElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'media':
        ele.media = null;
        break;

      case 'sizes':
        ele.sizes = null;
        break;

      case 'src':
        ele.src = null;
        break;

      case 'srcset':
        ele.srcset = null;
        break;

      case 'type':
        ele.type = null;
        break;
    }
  }
}

class VSpanElement extends VHtmlElement<SpanElement> {
  @override
  SpanElement elementFactory() => new SpanElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(SpanElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSpanElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VSpanElement prev, SpanElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessarySpanElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSpanElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSpanElement(SpanElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessarySpanElement(
      SpanElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VStyleElement extends VHtmlElement<StyleElement> {
  @override
  StyleElement elementFactory() => new StyleElement();

  var _setValues = <String, dynamic>{};

  bool get disabled => _setValues['disabled'] as bool;
  set disabled(bool v) {
    _setValues['disabled'] = v;
  }

  String get media => _setValues['media'] as String;
  set media(String v) {
    _setValues['media'] = v;
  }

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  @override
  void applyAttributesToElement(StyleElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeStyleElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VStyleElement prev, StyleElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryStyleElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeStyleElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeStyleElement(
      StyleElement ele, String key, dynamic value) {
    switch (key) {
      case 'disabled':
        ele.disabled = value as bool;
        break;

      case 'media':
        ele.media = value as String;
        break;

      case 'type':
        ele.type = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryStyleElement(
      StyleElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'disabled':
        ele.disabled = null;
        break;

      case 'media':
        ele.media = null;
        break;

      case 'type':
        ele.type = null;
        break;
    }
  }
}

class VTableCaptionElement extends VHtmlElement<TableCaptionElement> {
  @override
  TableCaptionElement elementFactory() => new TableCaptionElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(TableCaptionElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeTableCaptionElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VTableCaptionElement prev, TableCaptionElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTableCaptionElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeTableCaptionElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTableCaptionElement(
      TableCaptionElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryTableCaptionElement(
      TableCaptionElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VTableCellElement extends VHtmlElement<TableCellElement> {
  @override
  TableCellElement elementFactory() => new TableCellElement();

  var _setValues = <String, dynamic>{};

  int get colSpan => _setValues['colSpan'] as int;
  set colSpan(int v) {
    _setValues['colSpan'] = v;
  }

  String get headers => _setValues['headers'] as String;
  set headers(String v) {
    _setValues['headers'] = v;
  }

  int get rowSpan => _setValues['rowSpan'] as int;
  set rowSpan(int v) {
    _setValues['rowSpan'] = v;
  }

  @override
  void applyAttributesToElement(TableCellElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTableCellElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VTableCellElement prev, TableCellElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTableCellElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTableCellElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTableCellElement(
      TableCellElement ele, String key, dynamic value) {
    switch (key) {
      case 'colSpan':
        ele.colSpan = value as int;
        break;

      case 'headers':
        ele.headers = value as String;
        break;

      case 'rowSpan':
        ele.rowSpan = value as int;
        break;
    }
  }

  void _removeAttributeIfNecessaryTableCellElement(
      TableCellElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'colSpan':
        ele.colSpan = null;
        break;

      case 'headers':
        ele.headers = null;
        break;

      case 'rowSpan':
        ele.rowSpan = null;
        break;
    }
  }
}

class VTableColElement extends VHtmlElement<TableColElement> {
  @override
  TableColElement elementFactory() => new TableColElement();

  var _setValues = <String, dynamic>{};

  int get span => _setValues['span'] as int;
  set span(int v) {
    _setValues['span'] = v;
  }

  @override
  void applyAttributesToElement(TableColElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTableColElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VTableColElement prev, TableColElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTableColElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTableColElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTableColElement(
      TableColElement ele, String key, dynamic value) {
    switch (key) {
      case 'span':
        ele.span = value as int;
        break;
    }
  }

  void _removeAttributeIfNecessaryTableColElement(
      TableColElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'span':
        ele.span = null;
        break;
    }
  }
}

class VTableElement extends VHtmlElement<TableElement> {
  @override
  TableElement elementFactory() => new TableElement();

  var _setValues = <String, dynamic>{};

  TableCaptionElement get caption =>
      _setValues['caption'] as TableCaptionElement;
  set caption(TableCaptionElement v) {
    _setValues['caption'] = v;
  }

  TableSectionElement get tFoot => _setValues['tFoot'] as TableSectionElement;
  set tFoot(TableSectionElement v) {
    _setValues['tFoot'] = v;
  }

  TableSectionElement get tHead => _setValues['tHead'] as TableSectionElement;
  set tHead(TableSectionElement v) {
    _setValues['tHead'] = v;
  }

  @override
  void applyAttributesToElement(TableElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTableElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VTableElement prev, TableElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryTableElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTableElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTableElement(
      TableElement ele, String key, dynamic value) {
    switch (key) {
      case 'caption':
        ele.caption = value as TableCaptionElement;
        break;

      case 'tFoot':
        ele.tFoot = value as TableSectionElement;
        break;

      case 'tHead':
        ele.tHead = value as TableSectionElement;
        break;
    }
  }

  void _removeAttributeIfNecessaryTableElement(
      TableElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'caption':
        ele.caption = null;
        break;

      case 'tFoot':
        ele.tFoot = null;
        break;

      case 'tHead':
        ele.tHead = null;
        break;
    }
  }
}

class VTableRowElement extends VHtmlElement<TableRowElement> {
  @override
  TableRowElement elementFactory() => new TableRowElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(TableRowElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTableRowElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VTableRowElement prev, TableRowElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTableRowElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTableRowElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTableRowElement(
      TableRowElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryTableRowElement(
      TableRowElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VTableSectionElement<T extends TableSectionElement>
    extends VHtmlElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeTableSectionElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VTableSectionElement<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTableSectionElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeTableSectionElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTableSectionElement(
      TableSectionElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryTableSectionElement(
      TableSectionElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VTemplateElement extends VHtmlElement<TemplateElement> {
  @override
  TemplateElement elementFactory() => new TemplateElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(TemplateElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTemplateElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VTemplateElement prev, TemplateElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTemplateElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTemplateElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTemplateElement(
      TemplateElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryTemplateElement(
      TemplateElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VTextAreaElement extends VHtmlElement<TextAreaElement> {
  @override
  TextAreaElement elementFactory() => new TextAreaElement();

  var _setValues = <String, dynamic>{};

  String get autocapitalize => _setValues['autocapitalize'] as String;
  set autocapitalize(String v) {
    _setValues['autocapitalize'] = v;
  }

  bool get autofocus => _setValues['autofocus'] as bool;
  set autofocus(bool v) {
    _setValues['autofocus'] = v;
  }

  int get cols => _setValues['cols'] as int;
  set cols(int v) {
    _setValues['cols'] = v;
  }

  String get defaultValue => _setValues['defaultValue'] as String;
  set defaultValue(String v) {
    _setValues['defaultValue'] = v;
  }

  String get dirName => _setValues['dirName'] as String;
  set dirName(String v) {
    _setValues['dirName'] = v;
  }

  bool get disabled => _setValues['disabled'] as bool;
  set disabled(bool v) {
    _setValues['disabled'] = v;
  }

  String get inputMode => _setValues['inputMode'] as String;
  set inputMode(String v) {
    _setValues['inputMode'] = v;
  }

  int get maxLength => _setValues['maxLength'] as int;
  set maxLength(int v) {
    _setValues['maxLength'] = v;
  }

  int get minLength => _setValues['minLength'] as int;
  set minLength(int v) {
    _setValues['minLength'] = v;
  }

  String get name => _setValues['name'] as String;
  set name(String v) {
    _setValues['name'] = v;
  }

  String get placeholder => _setValues['placeholder'] as String;
  set placeholder(String v) {
    _setValues['placeholder'] = v;
  }

  bool get readOnly => _setValues['readOnly'] as bool;
  set readOnly(bool v) {
    _setValues['readOnly'] = v;
  }

  bool get required => _setValues['required'] as bool;
  set required(bool v) {
    _setValues['required'] = v;
  }

  int get rows => _setValues['rows'] as int;
  set rows(int v) {
    _setValues['rows'] = v;
  }

  String get selectionDirection => _setValues['selectionDirection'] as String;
  set selectionDirection(String v) {
    _setValues['selectionDirection'] = v;
  }

  int get selectionEnd => _setValues['selectionEnd'] as int;
  set selectionEnd(int v) {
    _setValues['selectionEnd'] = v;
  }

  int get selectionStart => _setValues['selectionStart'] as int;
  set selectionStart(int v) {
    _setValues['selectionStart'] = v;
  }

  String get value => _setValues['value'] as String;
  set value(String v) {
    _setValues['value'] = v;
  }

  String get wrap => _setValues['wrap'] as String;
  set wrap(String v) {
    _setValues['wrap'] = v;
  }

  @override
  void applyAttributesToElement(TextAreaElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTextAreaElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VTextAreaElement prev, TextAreaElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTextAreaElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTextAreaElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTextAreaElement(
      TextAreaElement ele, String key, dynamic value) {
    switch (key) {
      case 'autocapitalize':
        ele.autocapitalize = value as String;
        break;

      case 'autofocus':
        ele.autofocus = value as bool;
        break;

      case 'cols':
        ele.cols = value as int;
        break;

      case 'defaultValue':
        ele.defaultValue = value as String;
        break;

      case 'dirName':
        ele.dirName = value as String;
        break;

      case 'disabled':
        ele.disabled = value as bool;
        break;

      case 'inputMode':
        ele.inputMode = value as String;
        break;

      case 'maxLength':
        ele.maxLength = value as int;
        break;

      case 'minLength':
        ele.minLength = value as int;
        break;

      case 'name':
        ele.name = value as String;
        break;

      case 'placeholder':
        ele.placeholder = value as String;
        break;

      case 'readOnly':
        ele.readOnly = value as bool;
        break;

      case 'required':
        ele.required = value as bool;
        break;

      case 'rows':
        ele.rows = value as int;
        break;

      case 'selectionDirection':
        ele.selectionDirection = value as String;
        break;

      case 'selectionEnd':
        ele.selectionEnd = value as int;
        break;

      case 'selectionStart':
        ele.selectionStart = value as int;
        break;

      case 'value':
        ele.value = value as String;
        break;

      case 'wrap':
        ele.wrap = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryTextAreaElement(
      TextAreaElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'autocapitalize':
        ele.autocapitalize = null;
        break;

      case 'autofocus':
        ele.autofocus = null;
        break;

      case 'cols':
        ele.cols = null;
        break;

      case 'defaultValue':
        ele.defaultValue = null;
        break;

      case 'dirName':
        ele.dirName = null;
        break;

      case 'disabled':
        ele.disabled = null;
        break;

      case 'inputMode':
        ele.inputMode = null;
        break;

      case 'maxLength':
        ele.maxLength = null;
        break;

      case 'minLength':
        ele.minLength = null;
        break;

      case 'name':
        ele.name = null;
        break;

      case 'placeholder':
        ele.placeholder = null;
        break;

      case 'readOnly':
        ele.readOnly = null;
        break;

      case 'required':
        ele.required = null;
        break;

      case 'rows':
        ele.rows = null;
        break;

      case 'selectionDirection':
        ele.selectionDirection = null;
        break;

      case 'selectionEnd':
        ele.selectionEnd = null;
        break;

      case 'selectionStart':
        ele.selectionStart = null;
        break;

      case 'value':
        ele.value = null;
        break;

      case 'wrap':
        ele.wrap = null;
        break;
    }
  }
}

class VTitleElement extends VHtmlElement<TitleElement> {
  @override
  TitleElement elementFactory() => new TitleElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(TitleElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTitleElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VTitleElement prev, TitleElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryTitleElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTitleElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTitleElement(
      TitleElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryTitleElement(
      TitleElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VTrackElement extends VHtmlElement<TrackElement> {
  @override
  TrackElement elementFactory() => new TrackElement();

  var _setValues = <String, dynamic>{};

  bool get defaultValue => _setValues['defaultValue'] as bool;
  set defaultValue(bool v) {
    _setValues['defaultValue'] = v;
  }

  String get kind => _setValues['kind'] as String;
  set kind(String v) {
    _setValues['kind'] = v;
  }

  String get label => _setValues['label'] as String;
  set label(String v) {
    _setValues['label'] = v;
  }

  String get src => _setValues['src'] as String;
  set src(String v) {
    _setValues['src'] = v;
  }

  String get srclang => _setValues['srclang'] as String;
  set srclang(String v) {
    _setValues['srclang'] = v;
  }

  @override
  void applyAttributesToElement(TrackElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTrackElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VTrackElement prev, TrackElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryTrackElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTrackElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTrackElement(
      TrackElement ele, String key, dynamic value) {
    switch (key) {
      case 'defaultValue':
        ele.defaultValue = value as bool;
        break;

      case 'kind':
        ele.kind = value as String;
        break;

      case 'label':
        ele.label = value as String;
        break;

      case 'src':
        ele.src = value as String;
        break;

      case 'srclang':
        ele.srclang = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryTrackElement(
      TrackElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'defaultValue':
        ele.defaultValue = null;
        break;

      case 'kind':
        ele.kind = null;
        break;

      case 'label':
        ele.label = null;
        break;

      case 'src':
        ele.src = null;
        break;

      case 'srclang':
        ele.srclang = null;
        break;
    }
  }
}

class VUListElement extends VHtmlElement<UListElement> {
  @override
  UListElement elementFactory() => new UListElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(UListElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeUListElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VUListElement prev, UListElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryUListElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeUListElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeUListElement(
      UListElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryUListElement(
      UListElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VUnknownElement<T extends UnknownElement>
    extends VHtmlElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeUnknownElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VUnknownElement<T> prev, T ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryUnknownElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeUnknownElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeUnknownElement(
      UnknownElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryUnknownElement(
      UnknownElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VVideoElement extends VMediaElement<VideoElement> {
  @override
  VideoElement elementFactory() => new VideoElement();

  var _setValues = <String, dynamic>{};

  int get height => _setValues['height'] as int;
  set height(int v) {
    _setValues['height'] = v;
  }

  String get poster => _setValues['poster'] as String;
  set poster(String v) {
    _setValues['poster'] = v;
  }

  int get width => _setValues['width'] as int;
  set width(int v) {
    _setValues['width'] = v;
  }

  @override
  void applyAttributesToElement(VideoElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeVideoElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VVideoElement prev, VideoElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryVideoElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeVideoElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeVideoElement(
      VideoElement ele, String key, dynamic value) {
    switch (key) {
      case 'height':
        ele.height = value as int;
        break;

      case 'poster':
        ele.poster = value as String;
        break;

      case 'width':
        ele.width = value as int;
        break;
    }
  }

  void _removeAttributeIfNecessaryVideoElement(
      VideoElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'height':
        ele.height = null;
        break;

      case 'poster':
        ele.poster = null;
        break;

      case 'width':
        ele.width = null;
        break;
    }
  }
}

class Va extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('a');
}

class Vabbr extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('abbr');
}

class Vacronym extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('acronym');
}

class Vaddress extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('address');
}

class Varea extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('area');
}

class Varticle extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('article');
}

class Vaside extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('aside');
}

class Vaudio extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('audio');
}

class Vb extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('b');
}

class Vbdi extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('bdi');
}

class Vbdo extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('bdo');
}

class Vbig extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('big');
}

class Vblockquote extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('blockquote');
}

class Vbr extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('br');
}

class Vbutton extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('button');
}

class Vcanvas extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('canvas');
}

class Vcaption extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('caption');
}

class Vcenter extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('center');
}

class Vcite extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('cite');
}

class Vcode extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('code');
}

class Vcol extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('col');
}

class Vcolgroup extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('colgroup');
}

class Vcommand extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('command');
}

class Vdata extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('data');
}

class Vdatalist extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('datalist');
}

class Vdd extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('dd');
}

class Vdel extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('del');
}

class Vdetails extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('details');
}

class Vdfn extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('dfn');
}

class Vdir extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('dir');
}

class Vdiv extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('div');
}

class Vdl extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('dl');
}

class Vdt extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('dt');
}

class Vem extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('em');
}

class Vfieldset extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('fieldset');
}

class Vfigcaption extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('figcaption');
}

class Vfigure extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('figure');
}

class Vfont extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('font');
}

class Vfooter extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('footer');
}

class Vform extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('form');
}

class Vh1 extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('h1');
}

class Vh2 extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('h2');
}

class Vh3 extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('h3');
}

class Vh4 extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('h4');
}

class Vh5 extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('h5');
}

class Vh6 extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('h6');
}

class Vheader extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('header');
}

class Vhgroup extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('hgroup');
}

class Vhr extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('hr');
}

class Vi extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('i');
}

class Viframe extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('iframe');
}

class Vimg extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('img');
}

class Vinput extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('input');
}

class Vins extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('ins');
}

class Vkbd extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('kbd');
}

class Vlabel extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('label');
}

class Vlegend extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('legend');
}

class Vli extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('li');
}

class Vmap extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('map');
}

class Vmark extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('mark');
}

class Vmenu extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('menu');
}

class Vmeter extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('meter');
}

class Vnav extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('nav');
}

class Vnobr extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('nobr');
}

class Vol extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('ol');
}

class Voptgroup extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('optgroup');
}

class Voption extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('option');
}

class Voutput extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('output');
}

class Vp extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('p');
}

class Vpre extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('pre');
}

class Vprogress extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('progress');
}

class Vq extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('q');
}

class Vs extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('s');
}

class Vsamp extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('samp');
}

class Vsection extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('section');
}

class Vselect extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('select');
}

class Vsmall extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('small');
}

class Vsource extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('source');
}

class Vspan extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('span');
}

class Vstrike extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('strike');
}

class Vstrong extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('strong');
}

class Vsub extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('sub');
}

class Vsummary extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('summary');
}

class Vsup extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('sup');
}

class Vtable extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('table');
}

class Vtbody extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('tbody');
}

class Vtd extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('td');
}

class Vtextarea extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('textarea');
}

class Vtfoot extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('tfoot');
}

class Vth extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('th');
}

class Vthead extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('thead');
}

class Vtime extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('time');
}

class Vtr extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('tr');
}

class Vtrack extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('track');
}

class Vtt extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('tt');
}

class Vu extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('u');
}

class Vul extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('ul');
}

class Vvar extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('var');
}

class Vvideo extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('video');
}

class Vwbr extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tag('wbr');
}
