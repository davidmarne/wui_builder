import 'dart:html';
import 'package:meta/meta.dart';
import 'wui_builder.dart' show VElement;
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: prefer_final_fields

abstract class VHtmlElement<T extends HtmlElement> extends VElement<T> {}

const downloadAnchorElementAttribute = 0;
const hreflangAnchorElementAttribute = 1;
const referrerpolicyAnchorElementAttribute = 2;
const relAnchorElementAttribute = 3;
const targetAnchorElementAttribute = 4;
const typeAnchorElementAttribute = 5;
const hashAnchorElementAttribute = 6;
const hostAnchorElementAttribute = 7;
const hostnameAnchorElementAttribute = 8;
const hrefAnchorElementAttribute = 9;
const passwordAnchorElementAttribute = 10;
const pathnameAnchorElementAttribute = 11;
const portAnchorElementAttribute = 12;
const protocolAnchorElementAttribute = 13;
const searchAnchorElementAttribute = 14;
const usernameAnchorElementAttribute = 15;

class VAnchorElement extends VHtmlElement<AnchorElement> {
  @override
  AnchorElement elementFactory() => new AnchorElement();

  var _setValuesAnchorElement = <int, dynamic>{};

  String get download =>
      _setValuesAnchorElement[downloadAnchorElementAttribute] as String;
  set download(String v) {
    _setValuesAnchorElement[downloadAnchorElementAttribute] = v;
  }

  String get hreflang =>
      _setValuesAnchorElement[hreflangAnchorElementAttribute] as String;
  set hreflang(String v) {
    _setValuesAnchorElement[hreflangAnchorElementAttribute] = v;
  }

  String get referrerpolicy =>
      _setValuesAnchorElement[referrerpolicyAnchorElementAttribute] as String;
  set referrerpolicy(String v) {
    _setValuesAnchorElement[referrerpolicyAnchorElementAttribute] = v;
  }

  String get rel =>
      _setValuesAnchorElement[relAnchorElementAttribute] as String;
  set rel(String v) {
    _setValuesAnchorElement[relAnchorElementAttribute] = v;
  }

  String get target =>
      _setValuesAnchorElement[targetAnchorElementAttribute] as String;
  set target(String v) {
    _setValuesAnchorElement[targetAnchorElementAttribute] = v;
  }

  String get type =>
      _setValuesAnchorElement[typeAnchorElementAttribute] as String;
  set type(String v) {
    _setValuesAnchorElement[typeAnchorElementAttribute] = v;
  }

  String get hash =>
      _setValuesAnchorElement[hashAnchorElementAttribute] as String;
  set hash(String v) {
    _setValuesAnchorElement[hashAnchorElementAttribute] = v;
  }

  String get host =>
      _setValuesAnchorElement[hostAnchorElementAttribute] as String;
  set host(String v) {
    _setValuesAnchorElement[hostAnchorElementAttribute] = v;
  }

  String get hostname =>
      _setValuesAnchorElement[hostnameAnchorElementAttribute] as String;
  set hostname(String v) {
    _setValuesAnchorElement[hostnameAnchorElementAttribute] = v;
  }

  String get href =>
      _setValuesAnchorElement[hrefAnchorElementAttribute] as String;
  set href(String v) {
    _setValuesAnchorElement[hrefAnchorElementAttribute] = v;
  }

  String get password =>
      _setValuesAnchorElement[passwordAnchorElementAttribute] as String;
  set password(String v) {
    _setValuesAnchorElement[passwordAnchorElementAttribute] = v;
  }

  String get pathname =>
      _setValuesAnchorElement[pathnameAnchorElementAttribute] as String;
  set pathname(String v) {
    _setValuesAnchorElement[pathnameAnchorElementAttribute] = v;
  }

  String get port =>
      _setValuesAnchorElement[portAnchorElementAttribute] as String;
  set port(String v) {
    _setValuesAnchorElement[portAnchorElementAttribute] = v;
  }

  String get protocol =>
      _setValuesAnchorElement[protocolAnchorElementAttribute] as String;
  set protocol(String v) {
    _setValuesAnchorElement[protocolAnchorElementAttribute] = v;
  }

  String get search =>
      _setValuesAnchorElement[searchAnchorElementAttribute] as String;
  set search(String v) {
    _setValuesAnchorElement[searchAnchorElementAttribute] = v;
  }

  String get username =>
      _setValuesAnchorElement[usernameAnchorElementAttribute] as String;
  set username(String v) {
    _setValuesAnchorElement[usernameAnchorElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(AnchorElement ele) {
    _setValuesAnchorElement
        .forEach((k, dynamic v) => _updateAttributeAnchorElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VAnchorElement prev, AnchorElement ele) {
    prev._setValuesAnchorElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesAnchorElement[k];
      if (v != newValue) _updateAttributeAnchorElement(ele, k, newValue);
    });
    prev._setValuesAnchorElement = _setValuesAnchorElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeAnchorElement(
      AnchorElement ele, int key, dynamic value) {
    switch (key) {
      case downloadAnchorElementAttribute:
        ele.download = value as String;
        break;
      case hreflangAnchorElementAttribute:
        ele.hreflang = value as String;
        break;
      case referrerpolicyAnchorElementAttribute:
        ele.referrerpolicy = value as String;
        break;
      case relAnchorElementAttribute:
        ele.rel = value as String;
        break;
      case targetAnchorElementAttribute:
        ele.target = value as String;
        break;
      case typeAnchorElementAttribute:
        ele.type = value as String;
        break;
      case hashAnchorElementAttribute:
        ele.hash = value as String;
        break;
      case hostAnchorElementAttribute:
        ele.host = value as String;
        break;
      case hostnameAnchorElementAttribute:
        ele.hostname = value as String;
        break;
      case hrefAnchorElementAttribute:
        ele.href = value as String;
        break;
      case passwordAnchorElementAttribute:
        ele.password = value as String;
        break;
      case pathnameAnchorElementAttribute:
        ele.pathname = value as String;
        break;
      case portAnchorElementAttribute:
        ele.port = value as String;
        break;
      case protocolAnchorElementAttribute:
        ele.protocol = value as String;
        break;
      case searchAnchorElementAttribute:
        ele.search = value as String;
        break;
      case usernameAnchorElementAttribute:
        ele.username = value as String;
        break;
    }
  }
}

const altAreaElementAttribute = 0;
const coordsAreaElementAttribute = 1;
const referrerpolicyAreaElementAttribute = 2;
const shapeAreaElementAttribute = 3;
const targetAreaElementAttribute = 4;
const hashAreaElementAttribute = 5;
const hostAreaElementAttribute = 6;
const hostnameAreaElementAttribute = 7;
const hrefAreaElementAttribute = 8;
const passwordAreaElementAttribute = 9;
const pathnameAreaElementAttribute = 10;
const portAreaElementAttribute = 11;
const protocolAreaElementAttribute = 12;
const searchAreaElementAttribute = 13;
const usernameAreaElementAttribute = 14;

class VAreaElement extends VHtmlElement<AreaElement> {
  @override
  AreaElement elementFactory() => new AreaElement();

  var _setValuesAreaElement = <int, dynamic>{};

  String get alt => _setValuesAreaElement[altAreaElementAttribute] as String;
  set alt(String v) {
    _setValuesAreaElement[altAreaElementAttribute] = v;
  }

  String get coords =>
      _setValuesAreaElement[coordsAreaElementAttribute] as String;
  set coords(String v) {
    _setValuesAreaElement[coordsAreaElementAttribute] = v;
  }

  String get referrerpolicy =>
      _setValuesAreaElement[referrerpolicyAreaElementAttribute] as String;
  set referrerpolicy(String v) {
    _setValuesAreaElement[referrerpolicyAreaElementAttribute] = v;
  }

  String get shape =>
      _setValuesAreaElement[shapeAreaElementAttribute] as String;
  set shape(String v) {
    _setValuesAreaElement[shapeAreaElementAttribute] = v;
  }

  String get target =>
      _setValuesAreaElement[targetAreaElementAttribute] as String;
  set target(String v) {
    _setValuesAreaElement[targetAreaElementAttribute] = v;
  }

  String get hash => _setValuesAreaElement[hashAreaElementAttribute] as String;
  set hash(String v) {
    _setValuesAreaElement[hashAreaElementAttribute] = v;
  }

  String get host => _setValuesAreaElement[hostAreaElementAttribute] as String;
  set host(String v) {
    _setValuesAreaElement[hostAreaElementAttribute] = v;
  }

  String get hostname =>
      _setValuesAreaElement[hostnameAreaElementAttribute] as String;
  set hostname(String v) {
    _setValuesAreaElement[hostnameAreaElementAttribute] = v;
  }

  String get href => _setValuesAreaElement[hrefAreaElementAttribute] as String;
  set href(String v) {
    _setValuesAreaElement[hrefAreaElementAttribute] = v;
  }

  String get password =>
      _setValuesAreaElement[passwordAreaElementAttribute] as String;
  set password(String v) {
    _setValuesAreaElement[passwordAreaElementAttribute] = v;
  }

  String get pathname =>
      _setValuesAreaElement[pathnameAreaElementAttribute] as String;
  set pathname(String v) {
    _setValuesAreaElement[pathnameAreaElementAttribute] = v;
  }

  String get port => _setValuesAreaElement[portAreaElementAttribute] as String;
  set port(String v) {
    _setValuesAreaElement[portAreaElementAttribute] = v;
  }

  String get protocol =>
      _setValuesAreaElement[protocolAreaElementAttribute] as String;
  set protocol(String v) {
    _setValuesAreaElement[protocolAreaElementAttribute] = v;
  }

  String get search =>
      _setValuesAreaElement[searchAreaElementAttribute] as String;
  set search(String v) {
    _setValuesAreaElement[searchAreaElementAttribute] = v;
  }

  String get username =>
      _setValuesAreaElement[usernameAreaElementAttribute] as String;
  set username(String v) {
    _setValuesAreaElement[usernameAreaElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(AreaElement ele) {
    _setValuesAreaElement
        .forEach((k, dynamic v) => _updateAttributeAreaElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VAreaElement prev, AreaElement ele) {
    prev._setValuesAreaElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesAreaElement[k];
      if (v != newValue) _updateAttributeAreaElement(ele, k, newValue);
    });
    prev._setValuesAreaElement = _setValuesAreaElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeAreaElement(AreaElement ele, int key, dynamic value) {
    switch (key) {
      case altAreaElementAttribute:
        ele.alt = value as String;
        break;
      case coordsAreaElementAttribute:
        ele.coords = value as String;
        break;
      case referrerpolicyAreaElementAttribute:
        ele.referrerpolicy = value as String;
        break;
      case shapeAreaElementAttribute:
        ele.shape = value as String;
        break;
      case targetAreaElementAttribute:
        ele.target = value as String;
        break;
      case hashAreaElementAttribute:
        ele.hash = value as String;
        break;
      case hostAreaElementAttribute:
        ele.host = value as String;
        break;
      case hostnameAreaElementAttribute:
        ele.hostname = value as String;
        break;
      case hrefAreaElementAttribute:
        ele.href = value as String;
        break;
      case passwordAreaElementAttribute:
        ele.password = value as String;
        break;
      case pathnameAreaElementAttribute:
        ele.pathname = value as String;
        break;
      case portAreaElementAttribute:
        ele.port = value as String;
        break;
      case protocolAreaElementAttribute:
        ele.protocol = value as String;
        break;
      case searchAreaElementAttribute:
        ele.search = value as String;
        break;
      case usernameAreaElementAttribute:
        ele.username = value as String;
        break;
    }
  }
}

class VAudioElement extends VMediaElement<AudioElement> {
  @override
  AudioElement elementFactory() => new AudioElement();
}

class VBRElement extends VHtmlElement<BRElement> {
  @override
  BRElement elementFactory() => new BRElement();
}

const hrefBaseElementAttribute = 0;
const targetBaseElementAttribute = 1;

class VBaseElement extends VHtmlElement<BaseElement> {
  @override
  BaseElement elementFactory() => new BaseElement();

  var _setValuesBaseElement = <int, dynamic>{};

  String get href => _setValuesBaseElement[hrefBaseElementAttribute] as String;
  set href(String v) {
    _setValuesBaseElement[hrefBaseElementAttribute] = v;
  }

  String get target =>
      _setValuesBaseElement[targetBaseElementAttribute] as String;
  set target(String v) {
    _setValuesBaseElement[targetBaseElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(BaseElement ele) {
    _setValuesBaseElement
        .forEach((k, dynamic v) => _updateAttributeBaseElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VBaseElement prev, BaseElement ele) {
    prev._setValuesBaseElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesBaseElement[k];
      if (v != newValue) _updateAttributeBaseElement(ele, k, newValue);
    });
    prev._setValuesBaseElement = _setValuesBaseElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeBaseElement(BaseElement ele, int key, dynamic value) {
    switch (key) {
      case hrefBaseElementAttribute:
        ele.href = value as String;
        break;
      case targetBaseElementAttribute:
        ele.target = value as String;
        break;
    }
  }
}

class VBodyElement extends VHtmlElement<BodyElement> {
  @override
  BodyElement elementFactory() => new BodyElement();
}

const autofocusButtonElementAttribute = 0;
const disabledButtonElementAttribute = 1;
const formActionButtonElementAttribute = 2;
const formEnctypeButtonElementAttribute = 3;
const formMethodButtonElementAttribute = 4;
const formNoValidateButtonElementAttribute = 5;
const formTargetButtonElementAttribute = 6;
const nameButtonElementAttribute = 7;
const typeButtonElementAttribute = 8;
const valueButtonElementAttribute = 9;

class VButtonElement extends VHtmlElement<ButtonElement> {
  @override
  ButtonElement elementFactory() => new ButtonElement();

  var _setValuesButtonElement = <int, dynamic>{};

  bool get autofocus =>
      _setValuesButtonElement[autofocusButtonElementAttribute] as bool;
  set autofocus(bool v) {
    _setValuesButtonElement[autofocusButtonElementAttribute] = v;
  }

  bool get disabled =>
      _setValuesButtonElement[disabledButtonElementAttribute] as bool;
  set disabled(bool v) {
    _setValuesButtonElement[disabledButtonElementAttribute] = v;
  }

  String get formAction =>
      _setValuesButtonElement[formActionButtonElementAttribute] as String;
  set formAction(String v) {
    _setValuesButtonElement[formActionButtonElementAttribute] = v;
  }

  String get formEnctype =>
      _setValuesButtonElement[formEnctypeButtonElementAttribute] as String;
  set formEnctype(String v) {
    _setValuesButtonElement[formEnctypeButtonElementAttribute] = v;
  }

  String get formMethod =>
      _setValuesButtonElement[formMethodButtonElementAttribute] as String;
  set formMethod(String v) {
    _setValuesButtonElement[formMethodButtonElementAttribute] = v;
  }

  bool get formNoValidate =>
      _setValuesButtonElement[formNoValidateButtonElementAttribute] as bool;
  set formNoValidate(bool v) {
    _setValuesButtonElement[formNoValidateButtonElementAttribute] = v;
  }

  String get formTarget =>
      _setValuesButtonElement[formTargetButtonElementAttribute] as String;
  set formTarget(String v) {
    _setValuesButtonElement[formTargetButtonElementAttribute] = v;
  }

  String get name =>
      _setValuesButtonElement[nameButtonElementAttribute] as String;
  set name(String v) {
    _setValuesButtonElement[nameButtonElementAttribute] = v;
  }

  String get type =>
      _setValuesButtonElement[typeButtonElementAttribute] as String;
  set type(String v) {
    _setValuesButtonElement[typeButtonElementAttribute] = v;
  }

  String get value =>
      _setValuesButtonElement[valueButtonElementAttribute] as String;
  set value(String v) {
    _setValuesButtonElement[valueButtonElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(ButtonElement ele) {
    _setValuesButtonElement
        .forEach((k, dynamic v) => _updateAttributeButtonElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VButtonElement prev, ButtonElement ele) {
    prev._setValuesButtonElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesButtonElement[k];
      if (v != newValue) _updateAttributeButtonElement(ele, k, newValue);
    });
    prev._setValuesButtonElement = _setValuesButtonElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeButtonElement(
      ButtonElement ele, int key, dynamic value) {
    switch (key) {
      case autofocusButtonElementAttribute:
        ele.autofocus = value as bool;
        break;
      case disabledButtonElementAttribute:
        ele.disabled = value as bool;
        break;
      case formActionButtonElementAttribute:
        ele.formAction = value as String;
        break;
      case formEnctypeButtonElementAttribute:
        ele.formEnctype = value as String;
        break;
      case formMethodButtonElementAttribute:
        ele.formMethod = value as String;
        break;
      case formNoValidateButtonElementAttribute:
        ele.formNoValidate = value as bool;
        break;
      case formTargetButtonElementAttribute:
        ele.formTarget = value as String;
        break;
      case nameButtonElementAttribute:
        ele.name = value as String;
        break;
      case typeButtonElementAttribute:
        ele.type = value as String;
        break;
      case valueButtonElementAttribute:
        ele.value = value as String;
        break;
    }
  }
}

const heightCanvasElementAttribute = 0;
const widthCanvasElementAttribute = 1;

class VCanvasElement extends VHtmlElement<CanvasElement> {
  @override
  CanvasElement elementFactory() => new CanvasElement();

  var _setValuesCanvasElement = <int, dynamic>{};

  int get height =>
      _setValuesCanvasElement[heightCanvasElementAttribute] as int;
  set height(int v) {
    _setValuesCanvasElement[heightCanvasElementAttribute] = v;
  }

  int get width => _setValuesCanvasElement[widthCanvasElementAttribute] as int;
  set width(int v) {
    _setValuesCanvasElement[widthCanvasElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(CanvasElement ele) {
    _setValuesCanvasElement
        .forEach((k, dynamic v) => _updateAttributeCanvasElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VCanvasElement prev, CanvasElement ele) {
    prev._setValuesCanvasElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesCanvasElement[k];
      if (v != newValue) _updateAttributeCanvasElement(ele, k, newValue);
    });
    prev._setValuesCanvasElement = _setValuesCanvasElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeCanvasElement(
      CanvasElement ele, int key, dynamic value) {
    switch (key) {
      case heightCanvasElementAttribute:
        ele.height = value as int;
        break;
      case widthCanvasElementAttribute:
        ele.width = value as int;
        break;
    }
  }
}

const selectContentElementAttribute = 0;

class VContentElement extends VHtmlElement<ContentElement> {
  @override
  ContentElement elementFactory() => new ContentElement();

  var _setValuesContentElement = <int, dynamic>{};

  String get select =>
      _setValuesContentElement[selectContentElementAttribute] as String;
  set select(String v) {
    _setValuesContentElement[selectContentElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(ContentElement ele) {
    _setValuesContentElement
        .forEach((k, dynamic v) => _updateAttributeContentElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VContentElement prev, ContentElement ele) {
    prev._setValuesContentElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesContentElement[k];
      if (v != newValue) _updateAttributeContentElement(ele, k, newValue);
    });
    prev._setValuesContentElement = _setValuesContentElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeContentElement(
      ContentElement ele, int key, dynamic value) {
    switch (key) {
      case selectContentElementAttribute:
        ele.select = value as String;
        break;
    }
  }
}

class VDListElement extends VHtmlElement<DListElement> {
  @override
  DListElement elementFactory() => new DListElement();
}

class VDataListElement extends VHtmlElement<DataListElement> {
  @override
  DataListElement elementFactory() => new DataListElement();
}

const openDetailsElementAttribute = 0;

class VDetailsElement extends VHtmlElement<DetailsElement> {
  @override
  DetailsElement elementFactory() => new DetailsElement();

  var _setValuesDetailsElement = <int, dynamic>{};

  bool get open =>
      _setValuesDetailsElement[openDetailsElementAttribute] as bool;
  set open(bool v) {
    _setValuesDetailsElement[openDetailsElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(DetailsElement ele) {
    _setValuesDetailsElement
        .forEach((k, dynamic v) => _updateAttributeDetailsElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VDetailsElement prev, DetailsElement ele) {
    prev._setValuesDetailsElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesDetailsElement[k];
      if (v != newValue) _updateAttributeDetailsElement(ele, k, newValue);
    });
    prev._setValuesDetailsElement = _setValuesDetailsElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeDetailsElement(
      DetailsElement ele, int key, dynamic value) {
    switch (key) {
      case openDetailsElementAttribute:
        ele.open = value as bool;
        break;
    }
  }
}

const openDialogElementAttribute = 0;
const returnValueDialogElementAttribute = 1;

abstract class VDialogElement<T extends DialogElement> extends VHtmlElement<T> {
  var _setValuesDialogElement = <int, dynamic>{};

  bool get open => _setValuesDialogElement[openDialogElementAttribute] as bool;
  set open(bool v) {
    _setValuesDialogElement[openDialogElementAttribute] = v;
  }

  String get returnValue =>
      _setValuesDialogElement[returnValueDialogElementAttribute] as String;
  set returnValue(String v) {
    _setValuesDialogElement[returnValueDialogElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    _setValuesDialogElement
        .forEach((k, dynamic v) => _updateAttributeDialogElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VDialogElement<T> prev, T ele) {
    prev._setValuesDialogElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesDialogElement[k];
      if (v != newValue) _updateAttributeDialogElement(ele, k, newValue);
    });
    prev._setValuesDialogElement = _setValuesDialogElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeDialogElement(
      DialogElement ele, int key, dynamic value) {
    switch (key) {
      case openDialogElementAttribute:
        ele.open = value as bool;
        break;
      case returnValueDialogElementAttribute:
        ele.returnValue = value as String;
        break;
    }
  }
}

class VDivElement extends VHtmlElement<DivElement> {
  @override
  DivElement elementFactory() => new DivElement();
}

const heightEmbedElementAttribute = 0;
const nameEmbedElementAttribute = 1;
const srcEmbedElementAttribute = 2;
const typeEmbedElementAttribute = 3;
const widthEmbedElementAttribute = 4;

class VEmbedElement extends VHtmlElement<EmbedElement> {
  @override
  EmbedElement elementFactory() => new EmbedElement();

  var _setValuesEmbedElement = <int, dynamic>{};

  String get height =>
      _setValuesEmbedElement[heightEmbedElementAttribute] as String;
  set height(String v) {
    _setValuesEmbedElement[heightEmbedElementAttribute] = v;
  }

  String get name =>
      _setValuesEmbedElement[nameEmbedElementAttribute] as String;
  set name(String v) {
    _setValuesEmbedElement[nameEmbedElementAttribute] = v;
  }

  String get src => _setValuesEmbedElement[srcEmbedElementAttribute] as String;
  set src(String v) {
    _setValuesEmbedElement[srcEmbedElementAttribute] = v;
  }

  String get type =>
      _setValuesEmbedElement[typeEmbedElementAttribute] as String;
  set type(String v) {
    _setValuesEmbedElement[typeEmbedElementAttribute] = v;
  }

  String get width =>
      _setValuesEmbedElement[widthEmbedElementAttribute] as String;
  set width(String v) {
    _setValuesEmbedElement[widthEmbedElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(EmbedElement ele) {
    _setValuesEmbedElement
        .forEach((k, dynamic v) => _updateAttributeEmbedElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VEmbedElement prev, EmbedElement ele) {
    prev._setValuesEmbedElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesEmbedElement[k];
      if (v != newValue) _updateAttributeEmbedElement(ele, k, newValue);
    });
    prev._setValuesEmbedElement = _setValuesEmbedElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeEmbedElement(EmbedElement ele, int key, dynamic value) {
    switch (key) {
      case heightEmbedElementAttribute:
        ele.height = value as String;
        break;
      case nameEmbedElementAttribute:
        ele.name = value as String;
        break;
      case srcEmbedElementAttribute:
        ele.src = value as String;
        break;
      case typeEmbedElementAttribute:
        ele.type = value as String;
        break;
      case widthEmbedElementAttribute:
        ele.width = value as String;
        break;
    }
  }
}

const disabledFieldSetElementAttribute = 0;
const nameFieldSetElementAttribute = 1;

class VFieldSetElement extends VHtmlElement<FieldSetElement> {
  @override
  FieldSetElement elementFactory() => new FieldSetElement();

  var _setValuesFieldSetElement = <int, dynamic>{};

  bool get disabled =>
      _setValuesFieldSetElement[disabledFieldSetElementAttribute] as bool;
  set disabled(bool v) {
    _setValuesFieldSetElement[disabledFieldSetElementAttribute] = v;
  }

  String get name =>
      _setValuesFieldSetElement[nameFieldSetElementAttribute] as String;
  set name(String v) {
    _setValuesFieldSetElement[nameFieldSetElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(FieldSetElement ele) {
    _setValuesFieldSetElement
        .forEach((k, dynamic v) => _updateAttributeFieldSetElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VFieldSetElement prev, FieldSetElement ele) {
    prev._setValuesFieldSetElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesFieldSetElement[k];
      if (v != newValue) _updateAttributeFieldSetElement(ele, k, newValue);
    });
    prev._setValuesFieldSetElement = _setValuesFieldSetElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFieldSetElement(
      FieldSetElement ele, int key, dynamic value) {
    switch (key) {
      case disabledFieldSetElementAttribute:
        ele.disabled = value as bool;
        break;
      case nameFieldSetElementAttribute:
        ele.name = value as String;
        break;
    }
  }
}

const acceptCharsetFormElementAttribute = 0;
const actionFormElementAttribute = 1;
const autocompleteFormElementAttribute = 2;
const encodingFormElementAttribute = 3;
const enctypeFormElementAttribute = 4;
const methodFormElementAttribute = 5;
const nameFormElementAttribute = 6;
const noValidateFormElementAttribute = 7;
const targetFormElementAttribute = 8;

class VFormElement extends VHtmlElement<FormElement> {
  @override
  FormElement elementFactory() => new FormElement();

  var _setValuesFormElement = <int, dynamic>{};

  String get acceptCharset =>
      _setValuesFormElement[acceptCharsetFormElementAttribute] as String;
  set acceptCharset(String v) {
    _setValuesFormElement[acceptCharsetFormElementAttribute] = v;
  }

  String get action =>
      _setValuesFormElement[actionFormElementAttribute] as String;
  set action(String v) {
    _setValuesFormElement[actionFormElementAttribute] = v;
  }

  String get autocomplete =>
      _setValuesFormElement[autocompleteFormElementAttribute] as String;
  set autocomplete(String v) {
    _setValuesFormElement[autocompleteFormElementAttribute] = v;
  }

  String get encoding =>
      _setValuesFormElement[encodingFormElementAttribute] as String;
  set encoding(String v) {
    _setValuesFormElement[encodingFormElementAttribute] = v;
  }

  String get enctype =>
      _setValuesFormElement[enctypeFormElementAttribute] as String;
  set enctype(String v) {
    _setValuesFormElement[enctypeFormElementAttribute] = v;
  }

  String get method =>
      _setValuesFormElement[methodFormElementAttribute] as String;
  set method(String v) {
    _setValuesFormElement[methodFormElementAttribute] = v;
  }

  String get name => _setValuesFormElement[nameFormElementAttribute] as String;
  set name(String v) {
    _setValuesFormElement[nameFormElementAttribute] = v;
  }

  bool get noValidate =>
      _setValuesFormElement[noValidateFormElementAttribute] as bool;
  set noValidate(bool v) {
    _setValuesFormElement[noValidateFormElementAttribute] = v;
  }

  String get target =>
      _setValuesFormElement[targetFormElementAttribute] as String;
  set target(String v) {
    _setValuesFormElement[targetFormElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(FormElement ele) {
    _setValuesFormElement
        .forEach((k, dynamic v) => _updateAttributeFormElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VFormElement prev, FormElement ele) {
    prev._setValuesFormElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesFormElement[k];
      if (v != newValue) _updateAttributeFormElement(ele, k, newValue);
    });
    prev._setValuesFormElement = _setValuesFormElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFormElement(FormElement ele, int key, dynamic value) {
    switch (key) {
      case acceptCharsetFormElementAttribute:
        ele.acceptCharset = value as String;
        break;
      case actionFormElementAttribute:
        ele.action = value as String;
        break;
      case autocompleteFormElementAttribute:
        ele.autocomplete = value as String;
        break;
      case encodingFormElementAttribute:
        ele.encoding = value as String;
        break;
      case enctypeFormElementAttribute:
        ele.enctype = value as String;
        break;
      case methodFormElementAttribute:
        ele.method = value as String;
        break;
      case nameFormElementAttribute:
        ele.name = value as String;
        break;
      case noValidateFormElementAttribute:
        ele.noValidate = value as bool;
        break;
      case targetFormElementAttribute:
        ele.target = value as String;
        break;
    }
  }
}

const colorHRElementAttribute = 0;

class VHRElement extends VHtmlElement<HRElement> {
  @override
  HRElement elementFactory() => new HRElement();

  var _setValuesHRElement = <int, dynamic>{};

  String get color => _setValuesHRElement[colorHRElementAttribute] as String;
  set color(String v) {
    _setValuesHRElement[colorHRElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(HRElement ele) {
    _setValuesHRElement
        .forEach((k, dynamic v) => _updateAttributeHRElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VHRElement prev, HRElement ele) {
    prev._setValuesHRElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesHRElement[k];
      if (v != newValue) _updateAttributeHRElement(ele, k, newValue);
    });
    prev._setValuesHRElement = _setValuesHRElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeHRElement(HRElement ele, int key, dynamic value) {
    switch (key) {
      case colorHRElementAttribute:
        ele.color = value as String;
        break;
    }
  }
}

class VHeadElement extends VHtmlElement<HeadElement> {
  @override
  HeadElement elementFactory() => new HeadElement();
}

abstract class VHeadingElement<T extends HeadingElement>
    extends VHtmlElement<T> {}

class VHtmlHtmlElement extends VHtmlElement<HtmlHtmlElement> {
  @override
  HtmlHtmlElement elementFactory() => new HtmlHtmlElement();
}

const allowFullscreenIFrameElementAttribute = 0;
const heightIFrameElementAttribute = 1;
const nameIFrameElementAttribute = 2;
const referrerpolicyIFrameElementAttribute = 3;
const srcIFrameElementAttribute = 4;
const srcdocIFrameElementAttribute = 5;
const widthIFrameElementAttribute = 6;

class VIFrameElement extends VHtmlElement<IFrameElement> {
  @override
  IFrameElement elementFactory() => new IFrameElement();

  var _setValuesIFrameElement = <int, dynamic>{};

  bool get allowFullscreen =>
      _setValuesIFrameElement[allowFullscreenIFrameElementAttribute] as bool;
  set allowFullscreen(bool v) {
    _setValuesIFrameElement[allowFullscreenIFrameElementAttribute] = v;
  }

  String get height =>
      _setValuesIFrameElement[heightIFrameElementAttribute] as String;
  set height(String v) {
    _setValuesIFrameElement[heightIFrameElementAttribute] = v;
  }

  String get name =>
      _setValuesIFrameElement[nameIFrameElementAttribute] as String;
  set name(String v) {
    _setValuesIFrameElement[nameIFrameElementAttribute] = v;
  }

  String get referrerpolicy =>
      _setValuesIFrameElement[referrerpolicyIFrameElementAttribute] as String;
  set referrerpolicy(String v) {
    _setValuesIFrameElement[referrerpolicyIFrameElementAttribute] = v;
  }

  String get src =>
      _setValuesIFrameElement[srcIFrameElementAttribute] as String;
  set src(String v) {
    _setValuesIFrameElement[srcIFrameElementAttribute] = v;
  }

  String get srcdoc =>
      _setValuesIFrameElement[srcdocIFrameElementAttribute] as String;
  set srcdoc(String v) {
    _setValuesIFrameElement[srcdocIFrameElementAttribute] = v;
  }

  String get width =>
      _setValuesIFrameElement[widthIFrameElementAttribute] as String;
  set width(String v) {
    _setValuesIFrameElement[widthIFrameElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(IFrameElement ele) {
    _setValuesIFrameElement
        .forEach((k, dynamic v) => _updateAttributeIFrameElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VIFrameElement prev, IFrameElement ele) {
    prev._setValuesIFrameElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesIFrameElement[k];
      if (v != newValue) _updateAttributeIFrameElement(ele, k, newValue);
    });
    prev._setValuesIFrameElement = _setValuesIFrameElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeIFrameElement(
      IFrameElement ele, int key, dynamic value) {
    switch (key) {
      case allowFullscreenIFrameElementAttribute:
        ele.allowFullscreen = value as bool;
        break;
      case heightIFrameElementAttribute:
        ele.height = value as String;
        break;
      case nameIFrameElementAttribute:
        ele.name = value as String;
        break;
      case referrerpolicyIFrameElementAttribute:
        ele.referrerpolicy = value as String;
        break;
      case srcIFrameElementAttribute:
        ele.src = value as String;
        break;
      case srcdocIFrameElementAttribute:
        ele.srcdoc = value as String;
        break;
      case widthIFrameElementAttribute:
        ele.width = value as String;
        break;
    }
  }
}

const altImageElementAttribute = 0;
const crossOriginImageElementAttribute = 1;
const heightImageElementAttribute = 2;
const isMapImageElementAttribute = 3;
const referrerpolicyImageElementAttribute = 4;
const sizesImageElementAttribute = 5;
const srcImageElementAttribute = 6;
const srcsetImageElementAttribute = 7;
const useMapImageElementAttribute = 8;
const widthImageElementAttribute = 9;

class VImageElement extends VHtmlElement<ImageElement> {
  @override
  ImageElement elementFactory() => new ImageElement();

  var _setValuesImageElement = <int, dynamic>{};

  String get alt => _setValuesImageElement[altImageElementAttribute] as String;
  set alt(String v) {
    _setValuesImageElement[altImageElementAttribute] = v;
  }

  String get crossOrigin =>
      _setValuesImageElement[crossOriginImageElementAttribute] as String;
  set crossOrigin(String v) {
    _setValuesImageElement[crossOriginImageElementAttribute] = v;
  }

  int get height => _setValuesImageElement[heightImageElementAttribute] as int;
  set height(int v) {
    _setValuesImageElement[heightImageElementAttribute] = v;
  }

  bool get isMap => _setValuesImageElement[isMapImageElementAttribute] as bool;
  set isMap(bool v) {
    _setValuesImageElement[isMapImageElementAttribute] = v;
  }

  String get referrerpolicy =>
      _setValuesImageElement[referrerpolicyImageElementAttribute] as String;
  set referrerpolicy(String v) {
    _setValuesImageElement[referrerpolicyImageElementAttribute] = v;
  }

  String get sizes =>
      _setValuesImageElement[sizesImageElementAttribute] as String;
  set sizes(String v) {
    _setValuesImageElement[sizesImageElementAttribute] = v;
  }

  String get src => _setValuesImageElement[srcImageElementAttribute] as String;
  set src(String v) {
    _setValuesImageElement[srcImageElementAttribute] = v;
  }

  String get srcset =>
      _setValuesImageElement[srcsetImageElementAttribute] as String;
  set srcset(String v) {
    _setValuesImageElement[srcsetImageElementAttribute] = v;
  }

  String get useMap =>
      _setValuesImageElement[useMapImageElementAttribute] as String;
  set useMap(String v) {
    _setValuesImageElement[useMapImageElementAttribute] = v;
  }

  int get width => _setValuesImageElement[widthImageElementAttribute] as int;
  set width(int v) {
    _setValuesImageElement[widthImageElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(ImageElement ele) {
    _setValuesImageElement
        .forEach((k, dynamic v) => _updateAttributeImageElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VImageElement prev, ImageElement ele) {
    prev._setValuesImageElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesImageElement[k];
      if (v != newValue) _updateAttributeImageElement(ele, k, newValue);
    });
    prev._setValuesImageElement = _setValuesImageElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeImageElement(ImageElement ele, int key, dynamic value) {
    switch (key) {
      case altImageElementAttribute:
        ele.alt = value as String;
        break;
      case crossOriginImageElementAttribute:
        ele.crossOrigin = value as String;
        break;
      case heightImageElementAttribute:
        ele.height = value as int;
        break;
      case isMapImageElementAttribute:
        ele.isMap = value as bool;
        break;
      case referrerpolicyImageElementAttribute:
        ele.referrerpolicy = value as String;
        break;
      case sizesImageElementAttribute:
        ele.sizes = value as String;
        break;
      case srcImageElementAttribute:
        ele.src = value as String;
        break;
      case srcsetImageElementAttribute:
        ele.srcset = value as String;
        break;
      case useMapImageElementAttribute:
        ele.useMap = value as String;
        break;
      case widthImageElementAttribute:
        ele.width = value as int;
        break;
    }
  }
}

const acceptInputElementAttribute = 0;
const altInputElementAttribute = 1;
const autocapitalizeInputElementAttribute = 2;
const autocompleteInputElementAttribute = 3;
const autofocusInputElementAttribute = 4;
const captureInputElementAttribute = 5;
const checkedInputElementAttribute = 6;
const defaultCheckedInputElementAttribute = 7;
const defaultValueInputElementAttribute = 8;
const dirNameInputElementAttribute = 9;
const disabledInputElementAttribute = 10;
const filesInputElementAttribute = 11;
const formActionInputElementAttribute = 12;
const formEnctypeInputElementAttribute = 13;
const formMethodInputElementAttribute = 14;
const formNoValidateInputElementAttribute = 15;
const formTargetInputElementAttribute = 16;
const heightInputElementAttribute = 17;
const incrementalInputElementAttribute = 18;
const indeterminateInputElementAttribute = 19;
const inputModeInputElementAttribute = 20;
const maxInputElementAttribute = 21;
const maxLengthInputElementAttribute = 22;
const minInputElementAttribute = 23;
const minLengthInputElementAttribute = 24;
const multipleInputElementAttribute = 25;
const nameInputElementAttribute = 26;
const patternInputElementAttribute = 27;
const placeholderInputElementAttribute = 28;
const readOnlyInputElementAttribute = 29;
const requiredInputElementAttribute = 30;
const selectionDirectionInputElementAttribute = 31;
const selectionEndInputElementAttribute = 32;
const selectionStartInputElementAttribute = 33;
const sizeInputElementAttribute = 34;
const srcInputElementAttribute = 35;
const stepInputElementAttribute = 36;
const typeInputElementAttribute = 37;
const valueInputElementAttribute = 38;
const valueAsNumberInputElementAttribute = 39;
const directoryInputElementAttribute = 40;
const widthInputElementAttribute = 41;
const valueAsDateInputElementAttribute = 42;

class VInputElement extends VHtmlElement<InputElement> {
  @override
  InputElement elementFactory() => new InputElement();

  var _setValuesInputElement = <int, dynamic>{};

  String get accept =>
      _setValuesInputElement[acceptInputElementAttribute] as String;
  set accept(String v) {
    _setValuesInputElement[acceptInputElementAttribute] = v;
  }

  String get alt => _setValuesInputElement[altInputElementAttribute] as String;
  set alt(String v) {
    _setValuesInputElement[altInputElementAttribute] = v;
  }

  String get autocapitalize =>
      _setValuesInputElement[autocapitalizeInputElementAttribute] as String;
  set autocapitalize(String v) {
    _setValuesInputElement[autocapitalizeInputElementAttribute] = v;
  }

  String get autocomplete =>
      _setValuesInputElement[autocompleteInputElementAttribute] as String;
  set autocomplete(String v) {
    _setValuesInputElement[autocompleteInputElementAttribute] = v;
  }

  bool get autofocus =>
      _setValuesInputElement[autofocusInputElementAttribute] as bool;
  set autofocus(bool v) {
    _setValuesInputElement[autofocusInputElementAttribute] = v;
  }

  bool get capture =>
      _setValuesInputElement[captureInputElementAttribute] as bool;
  set capture(bool v) {
    _setValuesInputElement[captureInputElementAttribute] = v;
  }

  bool get checked =>
      _setValuesInputElement[checkedInputElementAttribute] as bool;
  set checked(bool v) {
    _setValuesInputElement[checkedInputElementAttribute] = v;
  }

  bool get defaultChecked =>
      _setValuesInputElement[defaultCheckedInputElementAttribute] as bool;
  set defaultChecked(bool v) {
    _setValuesInputElement[defaultCheckedInputElementAttribute] = v;
  }

  String get defaultValue =>
      _setValuesInputElement[defaultValueInputElementAttribute] as String;
  set defaultValue(String v) {
    _setValuesInputElement[defaultValueInputElementAttribute] = v;
  }

  String get dirName =>
      _setValuesInputElement[dirNameInputElementAttribute] as String;
  set dirName(String v) {
    _setValuesInputElement[dirNameInputElementAttribute] = v;
  }

  bool get disabled =>
      _setValuesInputElement[disabledInputElementAttribute] as bool;
  set disabled(bool v) {
    _setValuesInputElement[disabledInputElementAttribute] = v;
  }

  List<File> get files =>
      _setValuesInputElement[filesInputElementAttribute] as List<File>;
  set files(List<File> v) {
    _setValuesInputElement[filesInputElementAttribute] = v;
  }

  String get formAction =>
      _setValuesInputElement[formActionInputElementAttribute] as String;
  set formAction(String v) {
    _setValuesInputElement[formActionInputElementAttribute] = v;
  }

  String get formEnctype =>
      _setValuesInputElement[formEnctypeInputElementAttribute] as String;
  set formEnctype(String v) {
    _setValuesInputElement[formEnctypeInputElementAttribute] = v;
  }

  String get formMethod =>
      _setValuesInputElement[formMethodInputElementAttribute] as String;
  set formMethod(String v) {
    _setValuesInputElement[formMethodInputElementAttribute] = v;
  }

  bool get formNoValidate =>
      _setValuesInputElement[formNoValidateInputElementAttribute] as bool;
  set formNoValidate(bool v) {
    _setValuesInputElement[formNoValidateInputElementAttribute] = v;
  }

  String get formTarget =>
      _setValuesInputElement[formTargetInputElementAttribute] as String;
  set formTarget(String v) {
    _setValuesInputElement[formTargetInputElementAttribute] = v;
  }

  int get height => _setValuesInputElement[heightInputElementAttribute] as int;
  set height(int v) {
    _setValuesInputElement[heightInputElementAttribute] = v;
  }

  bool get incremental =>
      _setValuesInputElement[incrementalInputElementAttribute] as bool;
  set incremental(bool v) {
    _setValuesInputElement[incrementalInputElementAttribute] = v;
  }

  bool get indeterminate =>
      _setValuesInputElement[indeterminateInputElementAttribute] as bool;
  set indeterminate(bool v) {
    _setValuesInputElement[indeterminateInputElementAttribute] = v;
  }

  String get inputMode =>
      _setValuesInputElement[inputModeInputElementAttribute] as String;
  set inputMode(String v) {
    _setValuesInputElement[inputModeInputElementAttribute] = v;
  }

  String get max => _setValuesInputElement[maxInputElementAttribute] as String;
  set max(String v) {
    _setValuesInputElement[maxInputElementAttribute] = v;
  }

  int get maxLength =>
      _setValuesInputElement[maxLengthInputElementAttribute] as int;
  set maxLength(int v) {
    _setValuesInputElement[maxLengthInputElementAttribute] = v;
  }

  String get min => _setValuesInputElement[minInputElementAttribute] as String;
  set min(String v) {
    _setValuesInputElement[minInputElementAttribute] = v;
  }

  int get minLength =>
      _setValuesInputElement[minLengthInputElementAttribute] as int;
  set minLength(int v) {
    _setValuesInputElement[minLengthInputElementAttribute] = v;
  }

  bool get multiple =>
      _setValuesInputElement[multipleInputElementAttribute] as bool;
  set multiple(bool v) {
    _setValuesInputElement[multipleInputElementAttribute] = v;
  }

  String get name =>
      _setValuesInputElement[nameInputElementAttribute] as String;
  set name(String v) {
    _setValuesInputElement[nameInputElementAttribute] = v;
  }

  String get pattern =>
      _setValuesInputElement[patternInputElementAttribute] as String;
  set pattern(String v) {
    _setValuesInputElement[patternInputElementAttribute] = v;
  }

  String get placeholder =>
      _setValuesInputElement[placeholderInputElementAttribute] as String;
  set placeholder(String v) {
    _setValuesInputElement[placeholderInputElementAttribute] = v;
  }

  bool get readOnly =>
      _setValuesInputElement[readOnlyInputElementAttribute] as bool;
  set readOnly(bool v) {
    _setValuesInputElement[readOnlyInputElementAttribute] = v;
  }

  bool get required =>
      _setValuesInputElement[requiredInputElementAttribute] as bool;
  set required(bool v) {
    _setValuesInputElement[requiredInputElementAttribute] = v;
  }

  String get selectionDirection =>
      _setValuesInputElement[selectionDirectionInputElementAttribute] as String;
  set selectionDirection(String v) {
    _setValuesInputElement[selectionDirectionInputElementAttribute] = v;
  }

  int get selectionEnd =>
      _setValuesInputElement[selectionEndInputElementAttribute] as int;
  set selectionEnd(int v) {
    _setValuesInputElement[selectionEndInputElementAttribute] = v;
  }

  int get selectionStart =>
      _setValuesInputElement[selectionStartInputElementAttribute] as int;
  set selectionStart(int v) {
    _setValuesInputElement[selectionStartInputElementAttribute] = v;
  }

  int get size => _setValuesInputElement[sizeInputElementAttribute] as int;
  set size(int v) {
    _setValuesInputElement[sizeInputElementAttribute] = v;
  }

  String get src => _setValuesInputElement[srcInputElementAttribute] as String;
  set src(String v) {
    _setValuesInputElement[srcInputElementAttribute] = v;
  }

  String get step =>
      _setValuesInputElement[stepInputElementAttribute] as String;
  set step(String v) {
    _setValuesInputElement[stepInputElementAttribute] = v;
  }

  String get type =>
      _setValuesInputElement[typeInputElementAttribute] as String;
  set type(String v) {
    _setValuesInputElement[typeInputElementAttribute] = v;
  }

  String get value =>
      _setValuesInputElement[valueInputElementAttribute] as String;
  set value(String v) {
    _setValuesInputElement[valueInputElementAttribute] = v;
  }

  num get valueAsNumber =>
      _setValuesInputElement[valueAsNumberInputElementAttribute] as num;
  set valueAsNumber(num v) {
    _setValuesInputElement[valueAsNumberInputElementAttribute] = v;
  }

  bool get directory =>
      _setValuesInputElement[directoryInputElementAttribute] as bool;
  set directory(bool v) {
    _setValuesInputElement[directoryInputElementAttribute] = v;
  }

  int get width => _setValuesInputElement[widthInputElementAttribute] as int;
  set width(int v) {
    _setValuesInputElement[widthInputElementAttribute] = v;
  }

  DateTime get valueAsDate =>
      _setValuesInputElement[valueAsDateInputElementAttribute] as DateTime;
  set valueAsDate(DateTime v) {
    _setValuesInputElement[valueAsDateInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(InputElement ele) {
    _setValuesInputElement
        .forEach((k, dynamic v) => _updateAttributeInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VInputElement prev, InputElement ele) {
    prev._setValuesInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesInputElement[k];
      if (v != newValue) _updateAttributeInputElement(ele, k, newValue);
    });
    prev._setValuesInputElement = _setValuesInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeInputElement(InputElement ele, int key, dynamic value) {
    switch (key) {
      case acceptInputElementAttribute:
        ele.accept = value as String;
        break;
      case altInputElementAttribute:
        ele.alt = value as String;
        break;
      case autocapitalizeInputElementAttribute:
        ele.autocapitalize = value as String;
        break;
      case autocompleteInputElementAttribute:
        ele.autocomplete = value as String;
        break;
      case autofocusInputElementAttribute:
        ele.autofocus = value as bool;
        break;
      case captureInputElementAttribute:
        ele.capture = value as bool;
        break;
      case checkedInputElementAttribute:
        ele.checked = value as bool;
        break;
      case defaultCheckedInputElementAttribute:
        ele.defaultChecked = value as bool;
        break;
      case defaultValueInputElementAttribute:
        ele.defaultValue = value as String;
        break;
      case dirNameInputElementAttribute:
        ele.dirName = value as String;
        break;
      case disabledInputElementAttribute:
        ele.disabled = value as bool;
        break;
      case filesInputElementAttribute:
        ele.files = value as List<File>;
        break;
      case formActionInputElementAttribute:
        ele.formAction = value as String;
        break;
      case formEnctypeInputElementAttribute:
        ele.formEnctype = value as String;
        break;
      case formMethodInputElementAttribute:
        ele.formMethod = value as String;
        break;
      case formNoValidateInputElementAttribute:
        ele.formNoValidate = value as bool;
        break;
      case formTargetInputElementAttribute:
        ele.formTarget = value as String;
        break;
      case heightInputElementAttribute:
        ele.height = value as int;
        break;
      case incrementalInputElementAttribute:
        ele.incremental = value as bool;
        break;
      case indeterminateInputElementAttribute:
        ele.indeterminate = value as bool;
        break;
      case inputModeInputElementAttribute:
        ele.inputMode = value as String;
        break;
      case maxInputElementAttribute:
        ele.max = value as String;
        break;
      case maxLengthInputElementAttribute:
        ele.maxLength = value as int;
        break;
      case minInputElementAttribute:
        ele.min = value as String;
        break;
      case minLengthInputElementAttribute:
        ele.minLength = value as int;
        break;
      case multipleInputElementAttribute:
        ele.multiple = value as bool;
        break;
      case nameInputElementAttribute:
        ele.name = value as String;
        break;
      case patternInputElementAttribute:
        ele.pattern = value as String;
        break;
      case placeholderInputElementAttribute:
        ele.placeholder = value as String;
        break;
      case readOnlyInputElementAttribute:
        ele.readOnly = value as bool;
        break;
      case requiredInputElementAttribute:
        ele.required = value as bool;
        break;
      case selectionDirectionInputElementAttribute:
        ele.selectionDirection = value as String;
        break;
      case selectionEndInputElementAttribute:
        ele.selectionEnd = value as int;
        break;
      case selectionStartInputElementAttribute:
        ele.selectionStart = value as int;
        break;
      case sizeInputElementAttribute:
        ele.size = value as int;
        break;
      case srcInputElementAttribute:
        ele.src = value as String;
        break;
      case stepInputElementAttribute:
        ele.step = value as String;
        break;
      case typeInputElementAttribute:
        ele.type = value as String;
        break;
      case valueInputElementAttribute:
        ele.value = value as String;
        break;
      case valueAsNumberInputElementAttribute:
        ele.valueAsNumber = value as num;
        break;
      case directoryInputElementAttribute:
        ele.directory = value as bool;
        break;
      case widthInputElementAttribute:
        ele.width = value as int;
        break;
      case valueAsDateInputElementAttribute:
        ele.valueAsDate = value as DateTime;
        break;
    }
  }
}

const autofocusInputElementBaseAttribute = 0;
const disabledInputElementBaseAttribute = 1;
const incrementalInputElementBaseAttribute = 2;
const indeterminateInputElementBaseAttribute = 3;
const nameInputElementBaseAttribute = 4;
const valueInputElementBaseAttribute = 5;

abstract class VInputElementBase<T extends InputElementBase>
    extends VElement<T> {
  var _setValuesInputElementBase = <int, dynamic>{};

  bool get autofocus =>
      _setValuesInputElementBase[autofocusInputElementBaseAttribute] as bool;
  set autofocus(bool v) {
    _setValuesInputElementBase[autofocusInputElementBaseAttribute] = v;
  }

  bool get disabled =>
      _setValuesInputElementBase[disabledInputElementBaseAttribute] as bool;
  set disabled(bool v) {
    _setValuesInputElementBase[disabledInputElementBaseAttribute] = v;
  }

  bool get incremental =>
      _setValuesInputElementBase[incrementalInputElementBaseAttribute] as bool;
  set incremental(bool v) {
    _setValuesInputElementBase[incrementalInputElementBaseAttribute] = v;
  }

  bool get indeterminate =>
      _setValuesInputElementBase[indeterminateInputElementBaseAttribute]
          as bool;
  set indeterminate(bool v) {
    _setValuesInputElementBase[indeterminateInputElementBaseAttribute] = v;
  }

  String get name =>
      _setValuesInputElementBase[nameInputElementBaseAttribute] as String;
  set name(String v) {
    _setValuesInputElementBase[nameInputElementBaseAttribute] = v;
  }

  String get value =>
      _setValuesInputElementBase[valueInputElementBaseAttribute] as String;
  set value(String v) {
    _setValuesInputElementBase[valueInputElementBaseAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    _setValuesInputElementBase
        .forEach((k, dynamic v) => _updateAttributeInputElementBase(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VInputElementBase<T> prev, T ele) {
    prev._setValuesInputElementBase.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesInputElementBase[k];
      if (v != newValue) _updateAttributeInputElementBase(ele, k, newValue);
    });
    prev._setValuesInputElementBase = _setValuesInputElementBase;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeInputElementBase(
      InputElementBase ele, int key, dynamic value) {
    switch (key) {
      case autofocusInputElementBaseAttribute:
        ele.autofocus = value as bool;
        break;
      case disabledInputElementBaseAttribute:
        ele.disabled = value as bool;
        break;
      case incrementalInputElementBaseAttribute:
        ele.incremental = value as bool;
        break;
      case indeterminateInputElementBaseAttribute:
        ele.indeterminate = value as bool;
        break;
      case nameInputElementBaseAttribute:
        ele.name = value as String;
        break;
      case valueInputElementBaseAttribute:
        ele.value = value as String;
        break;
    }
  }
}

class VHiddenInputElement extends VInputElementBase<HiddenInputElement> {
  @override
  HiddenInputElement elementFactory() => new HiddenInputElement();
}

const autocompleteTextInputElementBaseAttribute = 0;
const maxLengthTextInputElementBaseAttribute = 1;
const patternTextInputElementBaseAttribute = 2;
const placeholderTextInputElementBaseAttribute = 3;
const readOnlyTextInputElementBaseAttribute = 4;
const requiredTextInputElementBaseAttribute = 5;
const sizeTextInputElementBaseAttribute = 6;
const selectionDirectionTextInputElementBaseAttribute = 7;
const selectionEndTextInputElementBaseAttribute = 8;
const selectionStartTextInputElementBaseAttribute = 9;

abstract class VTextInputElementBase<T extends TextInputElementBase>
    extends VInputElementBase<T> {
  var _setValuesTextInputElementBase = <int, dynamic>{};

  String get autocomplete =>
      _setValuesTextInputElementBase[autocompleteTextInputElementBaseAttribute]
          as String;
  set autocomplete(String v) {
    _setValuesTextInputElementBase[autocompleteTextInputElementBaseAttribute] =
        v;
  }

  int get maxLength =>
      _setValuesTextInputElementBase[maxLengthTextInputElementBaseAttribute]
          as int;
  set maxLength(int v) {
    _setValuesTextInputElementBase[maxLengthTextInputElementBaseAttribute] = v;
  }

  String get pattern =>
      _setValuesTextInputElementBase[patternTextInputElementBaseAttribute]
          as String;
  set pattern(String v) {
    _setValuesTextInputElementBase[patternTextInputElementBaseAttribute] = v;
  }

  String get placeholder =>
      _setValuesTextInputElementBase[placeholderTextInputElementBaseAttribute]
          as String;
  set placeholder(String v) {
    _setValuesTextInputElementBase[placeholderTextInputElementBaseAttribute] =
        v;
  }

  bool get readOnly =>
      _setValuesTextInputElementBase[readOnlyTextInputElementBaseAttribute]
          as bool;
  set readOnly(bool v) {
    _setValuesTextInputElementBase[readOnlyTextInputElementBaseAttribute] = v;
  }

  bool get required =>
      _setValuesTextInputElementBase[requiredTextInputElementBaseAttribute]
          as bool;
  set required(bool v) {
    _setValuesTextInputElementBase[requiredTextInputElementBaseAttribute] = v;
  }

  int get size =>
      _setValuesTextInputElementBase[sizeTextInputElementBaseAttribute] as int;
  set size(int v) {
    _setValuesTextInputElementBase[sizeTextInputElementBaseAttribute] = v;
  }

  String get selectionDirection => _setValuesTextInputElementBase[
      selectionDirectionTextInputElementBaseAttribute] as String;
  set selectionDirection(String v) {
    _setValuesTextInputElementBase[
        selectionDirectionTextInputElementBaseAttribute] = v;
  }

  int get selectionEnd =>
      _setValuesTextInputElementBase[selectionEndTextInputElementBaseAttribute]
          as int;
  set selectionEnd(int v) {
    _setValuesTextInputElementBase[selectionEndTextInputElementBaseAttribute] =
        v;
  }

  int get selectionStart => _setValuesTextInputElementBase[
      selectionStartTextInputElementBaseAttribute] as int;
  set selectionStart(int v) {
    _setValuesTextInputElementBase[
        selectionStartTextInputElementBaseAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    _setValuesTextInputElementBase.forEach(
        (k, dynamic v) => _updateAttributeTextInputElementBase(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VTextInputElementBase<T> prev, T ele) {
    prev._setValuesTextInputElementBase.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesTextInputElementBase[k];
      if (v != newValue) _updateAttributeTextInputElementBase(ele, k, newValue);
    });
    prev._setValuesTextInputElementBase = _setValuesTextInputElementBase;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTextInputElementBase(
      TextInputElementBase ele, int key, dynamic value) {
    switch (key) {
      case autocompleteTextInputElementBaseAttribute:
        ele.autocomplete = value as String;
        break;
      case maxLengthTextInputElementBaseAttribute:
        ele.maxLength = value as int;
        break;
      case patternTextInputElementBaseAttribute:
        ele.pattern = value as String;
        break;
      case placeholderTextInputElementBaseAttribute:
        ele.placeholder = value as String;
        break;
      case readOnlyTextInputElementBaseAttribute:
        ele.readOnly = value as bool;
        break;
      case requiredTextInputElementBaseAttribute:
        ele.required = value as bool;
        break;
      case sizeTextInputElementBaseAttribute:
        ele.size = value as int;
        break;
      case selectionDirectionTextInputElementBaseAttribute:
        ele.selectionDirection = value as String;
        break;
      case selectionEndTextInputElementBaseAttribute:
        ele.selectionEnd = value as int;
        break;
      case selectionStartTextInputElementBaseAttribute:
        ele.selectionStart = value as int;
        break;
    }
  }
}

const dirNameSearchInputElementAttribute = 0;

class VSearchInputElement extends VTextInputElementBase<SearchInputElement> {
  @override
  SearchInputElement elementFactory() => new SearchInputElement();

  var _setValuesSearchInputElement = <int, dynamic>{};

  String get dirName =>
      _setValuesSearchInputElement[dirNameSearchInputElementAttribute]
          as String;
  set dirName(String v) {
    _setValuesSearchInputElement[dirNameSearchInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(SearchInputElement ele) {
    _setValuesSearchInputElement.forEach(
        (k, dynamic v) => _updateAttributeSearchInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VSearchInputElement prev, SearchInputElement ele) {
    prev._setValuesSearchInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesSearchInputElement[k];
      if (v != newValue) _updateAttributeSearchInputElement(ele, k, newValue);
    });
    prev._setValuesSearchInputElement = _setValuesSearchInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSearchInputElement(
      SearchInputElement ele, int key, dynamic value) {
    switch (key) {
      case dirNameSearchInputElementAttribute:
        ele.dirName = value as String;
        break;
    }
  }
}

const dirNameTextInputElementAttribute = 0;

class VTextInputElement extends VTextInputElementBase<TextInputElement> {
  @override
  TextInputElement elementFactory() => new TextInputElement();

  var _setValuesTextInputElement = <int, dynamic>{};

  String get dirName =>
      _setValuesTextInputElement[dirNameTextInputElementAttribute] as String;
  set dirName(String v) {
    _setValuesTextInputElement[dirNameTextInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(TextInputElement ele) {
    _setValuesTextInputElement
        .forEach((k, dynamic v) => _updateAttributeTextInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VTextInputElement prev, TextInputElement ele) {
    prev._setValuesTextInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesTextInputElement[k];
      if (v != newValue) _updateAttributeTextInputElement(ele, k, newValue);
    });
    prev._setValuesTextInputElement = _setValuesTextInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTextInputElement(
      TextInputElement ele, int key, dynamic value) {
    switch (key) {
      case dirNameTextInputElementAttribute:
        ele.dirName = value as String;
        break;
    }
  }
}

class VUrlInputElement extends VTextInputElementBase<UrlInputElement> {
  @override
  UrlInputElement elementFactory() => new UrlInputElement();
}

class VTelephoneInputElement
    extends VTextInputElementBase<TelephoneInputElement> {
  @override
  TelephoneInputElement elementFactory() => new TelephoneInputElement();
}

const autocompleteEmailInputElementAttribute = 0;
const autofocusEmailInputElementAttribute = 1;
const maxLengthEmailInputElementAttribute = 2;
const multipleEmailInputElementAttribute = 3;
const patternEmailInputElementAttribute = 4;
const placeholderEmailInputElementAttribute = 5;
const readOnlyEmailInputElementAttribute = 6;
const requiredEmailInputElementAttribute = 7;
const sizeEmailInputElementAttribute = 8;

class VEmailInputElement extends VTextInputElementBase<EmailInputElement> {
  @override
  EmailInputElement elementFactory() => new EmailInputElement();

  var _setValuesEmailInputElement = <int, dynamic>{};

  String get autocomplete =>
      _setValuesEmailInputElement[autocompleteEmailInputElementAttribute]
          as String;
  set autocomplete(String v) {
    _setValuesEmailInputElement[autocompleteEmailInputElementAttribute] = v;
  }

  bool get autofocus =>
      _setValuesEmailInputElement[autofocusEmailInputElementAttribute] as bool;
  set autofocus(bool v) {
    _setValuesEmailInputElement[autofocusEmailInputElementAttribute] = v;
  }

  int get maxLength =>
      _setValuesEmailInputElement[maxLengthEmailInputElementAttribute] as int;
  set maxLength(int v) {
    _setValuesEmailInputElement[maxLengthEmailInputElementAttribute] = v;
  }

  bool get multiple =>
      _setValuesEmailInputElement[multipleEmailInputElementAttribute] as bool;
  set multiple(bool v) {
    _setValuesEmailInputElement[multipleEmailInputElementAttribute] = v;
  }

  String get pattern =>
      _setValuesEmailInputElement[patternEmailInputElementAttribute] as String;
  set pattern(String v) {
    _setValuesEmailInputElement[patternEmailInputElementAttribute] = v;
  }

  String get placeholder =>
      _setValuesEmailInputElement[placeholderEmailInputElementAttribute]
          as String;
  set placeholder(String v) {
    _setValuesEmailInputElement[placeholderEmailInputElementAttribute] = v;
  }

  bool get readOnly =>
      _setValuesEmailInputElement[readOnlyEmailInputElementAttribute] as bool;
  set readOnly(bool v) {
    _setValuesEmailInputElement[readOnlyEmailInputElementAttribute] = v;
  }

  bool get required =>
      _setValuesEmailInputElement[requiredEmailInputElementAttribute] as bool;
  set required(bool v) {
    _setValuesEmailInputElement[requiredEmailInputElementAttribute] = v;
  }

  int get size =>
      _setValuesEmailInputElement[sizeEmailInputElementAttribute] as int;
  set size(int v) {
    _setValuesEmailInputElement[sizeEmailInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(EmailInputElement ele) {
    _setValuesEmailInputElement.forEach(
        (k, dynamic v) => _updateAttributeEmailInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VEmailInputElement prev, EmailInputElement ele) {
    prev._setValuesEmailInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesEmailInputElement[k];
      if (v != newValue) _updateAttributeEmailInputElement(ele, k, newValue);
    });
    prev._setValuesEmailInputElement = _setValuesEmailInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeEmailInputElement(
      EmailInputElement ele, int key, dynamic value) {
    switch (key) {
      case autocompleteEmailInputElementAttribute:
        ele.autocomplete = value as String;
        break;
      case autofocusEmailInputElementAttribute:
        ele.autofocus = value as bool;
        break;
      case maxLengthEmailInputElementAttribute:
        ele.maxLength = value as int;
        break;
      case multipleEmailInputElementAttribute:
        ele.multiple = value as bool;
        break;
      case patternEmailInputElementAttribute:
        ele.pattern = value as String;
        break;
      case placeholderEmailInputElementAttribute:
        ele.placeholder = value as String;
        break;
      case readOnlyEmailInputElementAttribute:
        ele.readOnly = value as bool;
        break;
      case requiredEmailInputElementAttribute:
        ele.required = value as bool;
        break;
      case sizeEmailInputElementAttribute:
        ele.size = value as int;
        break;
    }
  }
}

class VPasswordInputElement
    extends VTextInputElementBase<PasswordInputElement> {
  @override
  PasswordInputElement elementFactory() => new PasswordInputElement();
}

const maxRangeInputElementBaseAttribute = 0;
const minRangeInputElementBaseAttribute = 1;
const stepRangeInputElementBaseAttribute = 2;
const valueAsNumberRangeInputElementBaseAttribute = 3;

abstract class VRangeInputElementBase<T extends RangeInputElementBase>
    extends VInputElementBase<T> {
  var _setValuesRangeInputElementBase = <int, dynamic>{};

  String get max =>
      _setValuesRangeInputElementBase[maxRangeInputElementBaseAttribute]
          as String;
  set max(String v) {
    _setValuesRangeInputElementBase[maxRangeInputElementBaseAttribute] = v;
  }

  String get min =>
      _setValuesRangeInputElementBase[minRangeInputElementBaseAttribute]
          as String;
  set min(String v) {
    _setValuesRangeInputElementBase[minRangeInputElementBaseAttribute] = v;
  }

  String get step =>
      _setValuesRangeInputElementBase[stepRangeInputElementBaseAttribute]
          as String;
  set step(String v) {
    _setValuesRangeInputElementBase[stepRangeInputElementBaseAttribute] = v;
  }

  num get valueAsNumber => _setValuesRangeInputElementBase[
      valueAsNumberRangeInputElementBaseAttribute] as num;
  set valueAsNumber(num v) {
    _setValuesRangeInputElementBase[
        valueAsNumberRangeInputElementBaseAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    _setValuesRangeInputElementBase.forEach(
        (k, dynamic v) => _updateAttributeRangeInputElementBase(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      covariant VRangeInputElementBase<T> prev, T ele) {
    prev._setValuesRangeInputElementBase.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesRangeInputElementBase[k];
      if (v != newValue)
        _updateAttributeRangeInputElementBase(ele, k, newValue);
    });
    prev._setValuesRangeInputElementBase = _setValuesRangeInputElementBase;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeRangeInputElementBase(
      RangeInputElementBase ele, int key, dynamic value) {
    switch (key) {
      case maxRangeInputElementBaseAttribute:
        ele.max = value as String;
        break;
      case minRangeInputElementBaseAttribute:
        ele.min = value as String;
        break;
      case stepRangeInputElementBaseAttribute:
        ele.step = value as String;
        break;
      case valueAsNumberRangeInputElementBaseAttribute:
        ele.valueAsNumber = value as num;
        break;
    }
  }
}

const valueAsDateDateInputElementAttribute = 0;
const readOnlyDateInputElementAttribute = 1;
const requiredDateInputElementAttribute = 2;

class VDateInputElement extends VRangeInputElementBase<DateInputElement> {
  @override
  DateInputElement elementFactory() => new DateInputElement();

  var _setValuesDateInputElement = <int, dynamic>{};

  DateTime get valueAsDate =>
      _setValuesDateInputElement[valueAsDateDateInputElementAttribute]
          as DateTime;
  set valueAsDate(DateTime v) {
    _setValuesDateInputElement[valueAsDateDateInputElementAttribute] = v;
  }

  bool get readOnly =>
      _setValuesDateInputElement[readOnlyDateInputElementAttribute] as bool;
  set readOnly(bool v) {
    _setValuesDateInputElement[readOnlyDateInputElementAttribute] = v;
  }

  bool get required =>
      _setValuesDateInputElement[requiredDateInputElementAttribute] as bool;
  set required(bool v) {
    _setValuesDateInputElement[requiredDateInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(DateInputElement ele) {
    _setValuesDateInputElement
        .forEach((k, dynamic v) => _updateAttributeDateInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VDateInputElement prev, DateInputElement ele) {
    prev._setValuesDateInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesDateInputElement[k];
      if (v != newValue) _updateAttributeDateInputElement(ele, k, newValue);
    });
    prev._setValuesDateInputElement = _setValuesDateInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeDateInputElement(
      DateInputElement ele, int key, dynamic value) {
    switch (key) {
      case valueAsDateDateInputElementAttribute:
        ele.valueAsDate = value as DateTime;
        break;
      case readOnlyDateInputElementAttribute:
        ele.readOnly = value as bool;
        break;
      case requiredDateInputElementAttribute:
        ele.required = value as bool;
        break;
    }
  }
}

const valueAsDateMonthInputElementAttribute = 0;
const readOnlyMonthInputElementAttribute = 1;
const requiredMonthInputElementAttribute = 2;

class VMonthInputElement extends VRangeInputElementBase<MonthInputElement> {
  @override
  MonthInputElement elementFactory() => new MonthInputElement();

  var _setValuesMonthInputElement = <int, dynamic>{};

  DateTime get valueAsDate =>
      _setValuesMonthInputElement[valueAsDateMonthInputElementAttribute]
          as DateTime;
  set valueAsDate(DateTime v) {
    _setValuesMonthInputElement[valueAsDateMonthInputElementAttribute] = v;
  }

  bool get readOnly =>
      _setValuesMonthInputElement[readOnlyMonthInputElementAttribute] as bool;
  set readOnly(bool v) {
    _setValuesMonthInputElement[readOnlyMonthInputElementAttribute] = v;
  }

  bool get required =>
      _setValuesMonthInputElement[requiredMonthInputElementAttribute] as bool;
  set required(bool v) {
    _setValuesMonthInputElement[requiredMonthInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(MonthInputElement ele) {
    _setValuesMonthInputElement.forEach(
        (k, dynamic v) => _updateAttributeMonthInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VMonthInputElement prev, MonthInputElement ele) {
    prev._setValuesMonthInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesMonthInputElement[k];
      if (v != newValue) _updateAttributeMonthInputElement(ele, k, newValue);
    });
    prev._setValuesMonthInputElement = _setValuesMonthInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMonthInputElement(
      MonthInputElement ele, int key, dynamic value) {
    switch (key) {
      case valueAsDateMonthInputElementAttribute:
        ele.valueAsDate = value as DateTime;
        break;
      case readOnlyMonthInputElementAttribute:
        ele.readOnly = value as bool;
        break;
      case requiredMonthInputElementAttribute:
        ele.required = value as bool;
        break;
    }
  }
}

const valueAsDateWeekInputElementAttribute = 0;
const readOnlyWeekInputElementAttribute = 1;
const requiredWeekInputElementAttribute = 2;

class VWeekInputElement extends VRangeInputElementBase<WeekInputElement> {
  @override
  WeekInputElement elementFactory() => new WeekInputElement();

  var _setValuesWeekInputElement = <int, dynamic>{};

  DateTime get valueAsDate =>
      _setValuesWeekInputElement[valueAsDateWeekInputElementAttribute]
          as DateTime;
  set valueAsDate(DateTime v) {
    _setValuesWeekInputElement[valueAsDateWeekInputElementAttribute] = v;
  }

  bool get readOnly =>
      _setValuesWeekInputElement[readOnlyWeekInputElementAttribute] as bool;
  set readOnly(bool v) {
    _setValuesWeekInputElement[readOnlyWeekInputElementAttribute] = v;
  }

  bool get required =>
      _setValuesWeekInputElement[requiredWeekInputElementAttribute] as bool;
  set required(bool v) {
    _setValuesWeekInputElement[requiredWeekInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(WeekInputElement ele) {
    _setValuesWeekInputElement
        .forEach((k, dynamic v) => _updateAttributeWeekInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VWeekInputElement prev, WeekInputElement ele) {
    prev._setValuesWeekInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesWeekInputElement[k];
      if (v != newValue) _updateAttributeWeekInputElement(ele, k, newValue);
    });
    prev._setValuesWeekInputElement = _setValuesWeekInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeWeekInputElement(
      WeekInputElement ele, int key, dynamic value) {
    switch (key) {
      case valueAsDateWeekInputElementAttribute:
        ele.valueAsDate = value as DateTime;
        break;
      case readOnlyWeekInputElementAttribute:
        ele.readOnly = value as bool;
        break;
      case requiredWeekInputElementAttribute:
        ele.required = value as bool;
        break;
    }
  }
}

const valueAsDateTimeInputElementAttribute = 0;
const readOnlyTimeInputElementAttribute = 1;
const requiredTimeInputElementAttribute = 2;

class VTimeInputElement extends VRangeInputElementBase<TimeInputElement> {
  @override
  TimeInputElement elementFactory() => new TimeInputElement();

  var _setValuesTimeInputElement = <int, dynamic>{};

  DateTime get valueAsDate =>
      _setValuesTimeInputElement[valueAsDateTimeInputElementAttribute]
          as DateTime;
  set valueAsDate(DateTime v) {
    _setValuesTimeInputElement[valueAsDateTimeInputElementAttribute] = v;
  }

  bool get readOnly =>
      _setValuesTimeInputElement[readOnlyTimeInputElementAttribute] as bool;
  set readOnly(bool v) {
    _setValuesTimeInputElement[readOnlyTimeInputElementAttribute] = v;
  }

  bool get required =>
      _setValuesTimeInputElement[requiredTimeInputElementAttribute] as bool;
  set required(bool v) {
    _setValuesTimeInputElement[requiredTimeInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(TimeInputElement ele) {
    _setValuesTimeInputElement
        .forEach((k, dynamic v) => _updateAttributeTimeInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VTimeInputElement prev, TimeInputElement ele) {
    prev._setValuesTimeInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesTimeInputElement[k];
      if (v != newValue) _updateAttributeTimeInputElement(ele, k, newValue);
    });
    prev._setValuesTimeInputElement = _setValuesTimeInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTimeInputElement(
      TimeInputElement ele, int key, dynamic value) {
    switch (key) {
      case valueAsDateTimeInputElementAttribute:
        ele.valueAsDate = value as DateTime;
        break;
      case readOnlyTimeInputElementAttribute:
        ele.readOnly = value as bool;
        break;
      case requiredTimeInputElementAttribute:
        ele.required = value as bool;
        break;
    }
  }
}

const readOnlyLocalDateTimeInputElementAttribute = 0;
const requiredLocalDateTimeInputElementAttribute = 1;

class VLocalDateTimeInputElement
    extends VRangeInputElementBase<LocalDateTimeInputElement> {
  @override
  LocalDateTimeInputElement elementFactory() => new LocalDateTimeInputElement();

  var _setValuesLocalDateTimeInputElement = <int, dynamic>{};

  bool get readOnly => _setValuesLocalDateTimeInputElement[
      readOnlyLocalDateTimeInputElementAttribute] as bool;
  set readOnly(bool v) {
    _setValuesLocalDateTimeInputElement[
        readOnlyLocalDateTimeInputElementAttribute] = v;
  }

  bool get required => _setValuesLocalDateTimeInputElement[
      requiredLocalDateTimeInputElementAttribute] as bool;
  set required(bool v) {
    _setValuesLocalDateTimeInputElement[
        requiredLocalDateTimeInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(LocalDateTimeInputElement ele) {
    _setValuesLocalDateTimeInputElement.forEach(
        (k, dynamic v) => _updateAttributeLocalDateTimeInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VLocalDateTimeInputElement prev, LocalDateTimeInputElement ele) {
    prev._setValuesLocalDateTimeInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesLocalDateTimeInputElement[k];
      if (v != newValue)
        _updateAttributeLocalDateTimeInputElement(ele, k, newValue);
    });
    prev._setValuesLocalDateTimeInputElement =
        _setValuesLocalDateTimeInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeLocalDateTimeInputElement(
      LocalDateTimeInputElement ele, int key, dynamic value) {
    switch (key) {
      case readOnlyLocalDateTimeInputElementAttribute:
        ele.readOnly = value as bool;
        break;
      case requiredLocalDateTimeInputElementAttribute:
        ele.required = value as bool;
        break;
    }
  }
}

const placeholderNumberInputElementAttribute = 0;
const readOnlyNumberInputElementAttribute = 1;
const requiredNumberInputElementAttribute = 2;

class VNumberInputElement extends VRangeInputElementBase<NumberInputElement> {
  @override
  NumberInputElement elementFactory() => new NumberInputElement();

  var _setValuesNumberInputElement = <int, dynamic>{};

  String get placeholder =>
      _setValuesNumberInputElement[placeholderNumberInputElementAttribute]
          as String;
  set placeholder(String v) {
    _setValuesNumberInputElement[placeholderNumberInputElementAttribute] = v;
  }

  bool get readOnly =>
      _setValuesNumberInputElement[readOnlyNumberInputElementAttribute] as bool;
  set readOnly(bool v) {
    _setValuesNumberInputElement[readOnlyNumberInputElementAttribute] = v;
  }

  bool get required =>
      _setValuesNumberInputElement[requiredNumberInputElementAttribute] as bool;
  set required(bool v) {
    _setValuesNumberInputElement[requiredNumberInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(NumberInputElement ele) {
    _setValuesNumberInputElement.forEach(
        (k, dynamic v) => _updateAttributeNumberInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VNumberInputElement prev, NumberInputElement ele) {
    prev._setValuesNumberInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesNumberInputElement[k];
      if (v != newValue) _updateAttributeNumberInputElement(ele, k, newValue);
    });
    prev._setValuesNumberInputElement = _setValuesNumberInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeNumberInputElement(
      NumberInputElement ele, int key, dynamic value) {
    switch (key) {
      case placeholderNumberInputElementAttribute:
        ele.placeholder = value as String;
        break;
      case readOnlyNumberInputElementAttribute:
        ele.readOnly = value as bool;
        break;
      case requiredNumberInputElementAttribute:
        ele.required = value as bool;
        break;
    }
  }
}

class VRangeInputElement extends VRangeInputElementBase<RangeInputElement> {
  @override
  RangeInputElement elementFactory() => new RangeInputElement();
}

const checkedCheckboxInputElementAttribute = 0;
const requiredCheckboxInputElementAttribute = 1;

class VCheckboxInputElement extends VInputElementBase<CheckboxInputElement> {
  @override
  CheckboxInputElement elementFactory() => new CheckboxInputElement();

  var _setValuesCheckboxInputElement = <int, dynamic>{};

  bool get checked =>
      _setValuesCheckboxInputElement[checkedCheckboxInputElementAttribute]
          as bool;
  set checked(bool v) {
    _setValuesCheckboxInputElement[checkedCheckboxInputElementAttribute] = v;
  }

  bool get required =>
      _setValuesCheckboxInputElement[requiredCheckboxInputElementAttribute]
          as bool;
  set required(bool v) {
    _setValuesCheckboxInputElement[requiredCheckboxInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(CheckboxInputElement ele) {
    _setValuesCheckboxInputElement.forEach(
        (k, dynamic v) => _updateAttributeCheckboxInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VCheckboxInputElement prev, CheckboxInputElement ele) {
    prev._setValuesCheckboxInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesCheckboxInputElement[k];
      if (v != newValue) _updateAttributeCheckboxInputElement(ele, k, newValue);
    });
    prev._setValuesCheckboxInputElement = _setValuesCheckboxInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeCheckboxInputElement(
      CheckboxInputElement ele, int key, dynamic value) {
    switch (key) {
      case checkedCheckboxInputElementAttribute:
        ele.checked = value as bool;
        break;
      case requiredCheckboxInputElementAttribute:
        ele.required = value as bool;
        break;
    }
  }
}

const checkedRadioButtonInputElementAttribute = 0;
const requiredRadioButtonInputElementAttribute = 1;

class VRadioButtonInputElement
    extends VInputElementBase<RadioButtonInputElement> {
  @override
  RadioButtonInputElement elementFactory() => new RadioButtonInputElement();

  var _setValuesRadioButtonInputElement = <int, dynamic>{};

  bool get checked =>
      _setValuesRadioButtonInputElement[checkedRadioButtonInputElementAttribute]
          as bool;
  set checked(bool v) {
    _setValuesRadioButtonInputElement[checkedRadioButtonInputElementAttribute] =
        v;
  }

  bool get required => _setValuesRadioButtonInputElement[
      requiredRadioButtonInputElementAttribute] as bool;
  set required(bool v) {
    _setValuesRadioButtonInputElement[
        requiredRadioButtonInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(RadioButtonInputElement ele) {
    _setValuesRadioButtonInputElement.forEach(
        (k, dynamic v) => _updateAttributeRadioButtonInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VRadioButtonInputElement prev, RadioButtonInputElement ele) {
    prev._setValuesRadioButtonInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesRadioButtonInputElement[k];
      if (v != newValue)
        _updateAttributeRadioButtonInputElement(ele, k, newValue);
    });
    prev._setValuesRadioButtonInputElement = _setValuesRadioButtonInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeRadioButtonInputElement(
      RadioButtonInputElement ele, int key, dynamic value) {
    switch (key) {
      case checkedRadioButtonInputElementAttribute:
        ele.checked = value as bool;
        break;
      case requiredRadioButtonInputElementAttribute:
        ele.required = value as bool;
        break;
    }
  }
}

const acceptFileUploadInputElementAttribute = 0;
const multipleFileUploadInputElementAttribute = 1;
const requiredFileUploadInputElementAttribute = 2;
const filesFileUploadInputElementAttribute = 3;

class VFileUploadInputElement
    extends VInputElementBase<FileUploadInputElement> {
  @override
  FileUploadInputElement elementFactory() => new FileUploadInputElement();

  var _setValuesFileUploadInputElement = <int, dynamic>{};

  String get accept =>
      _setValuesFileUploadInputElement[acceptFileUploadInputElementAttribute]
          as String;
  set accept(String v) {
    _setValuesFileUploadInputElement[acceptFileUploadInputElementAttribute] = v;
  }

  bool get multiple =>
      _setValuesFileUploadInputElement[multipleFileUploadInputElementAttribute]
          as bool;
  set multiple(bool v) {
    _setValuesFileUploadInputElement[multipleFileUploadInputElementAttribute] =
        v;
  }

  bool get required =>
      _setValuesFileUploadInputElement[requiredFileUploadInputElementAttribute]
          as bool;
  set required(bool v) {
    _setValuesFileUploadInputElement[requiredFileUploadInputElementAttribute] =
        v;
  }

  List<File> get files =>
      _setValuesFileUploadInputElement[filesFileUploadInputElementAttribute]
          as List<File>;
  set files(List<File> v) {
    _setValuesFileUploadInputElement[filesFileUploadInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(FileUploadInputElement ele) {
    _setValuesFileUploadInputElement.forEach(
        (k, dynamic v) => _updateAttributeFileUploadInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VFileUploadInputElement prev, FileUploadInputElement ele) {
    prev._setValuesFileUploadInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesFileUploadInputElement[k];
      if (v != newValue)
        _updateAttributeFileUploadInputElement(ele, k, newValue);
    });
    prev._setValuesFileUploadInputElement = _setValuesFileUploadInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFileUploadInputElement(
      FileUploadInputElement ele, int key, dynamic value) {
    switch (key) {
      case acceptFileUploadInputElementAttribute:
        ele.accept = value as String;
        break;
      case multipleFileUploadInputElementAttribute:
        ele.multiple = value as bool;
        break;
      case requiredFileUploadInputElementAttribute:
        ele.required = value as bool;
        break;
      case filesFileUploadInputElementAttribute:
        ele.files = value as List<File>;
        break;
    }
  }
}

const formActionSubmitButtonInputElementAttribute = 0;
const formEnctypeSubmitButtonInputElementAttribute = 1;
const formMethodSubmitButtonInputElementAttribute = 2;
const formNoValidateSubmitButtonInputElementAttribute = 3;
const formTargetSubmitButtonInputElementAttribute = 4;

class VSubmitButtonInputElement
    extends VInputElementBase<SubmitButtonInputElement> {
  @override
  SubmitButtonInputElement elementFactory() => new SubmitButtonInputElement();

  var _setValuesSubmitButtonInputElement = <int, dynamic>{};

  String get formAction => _setValuesSubmitButtonInputElement[
      formActionSubmitButtonInputElementAttribute] as String;
  set formAction(String v) {
    _setValuesSubmitButtonInputElement[
        formActionSubmitButtonInputElementAttribute] = v;
  }

  String get formEnctype => _setValuesSubmitButtonInputElement[
      formEnctypeSubmitButtonInputElementAttribute] as String;
  set formEnctype(String v) {
    _setValuesSubmitButtonInputElement[
        formEnctypeSubmitButtonInputElementAttribute] = v;
  }

  String get formMethod => _setValuesSubmitButtonInputElement[
      formMethodSubmitButtonInputElementAttribute] as String;
  set formMethod(String v) {
    _setValuesSubmitButtonInputElement[
        formMethodSubmitButtonInputElementAttribute] = v;
  }

  bool get formNoValidate => _setValuesSubmitButtonInputElement[
      formNoValidateSubmitButtonInputElementAttribute] as bool;
  set formNoValidate(bool v) {
    _setValuesSubmitButtonInputElement[
        formNoValidateSubmitButtonInputElementAttribute] = v;
  }

  String get formTarget => _setValuesSubmitButtonInputElement[
      formTargetSubmitButtonInputElementAttribute] as String;
  set formTarget(String v) {
    _setValuesSubmitButtonInputElement[
        formTargetSubmitButtonInputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(SubmitButtonInputElement ele) {
    _setValuesSubmitButtonInputElement.forEach(
        (k, dynamic v) => _updateAttributeSubmitButtonInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VSubmitButtonInputElement prev, SubmitButtonInputElement ele) {
    prev._setValuesSubmitButtonInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesSubmitButtonInputElement[k];
      if (v != newValue)
        _updateAttributeSubmitButtonInputElement(ele, k, newValue);
    });
    prev._setValuesSubmitButtonInputElement =
        _setValuesSubmitButtonInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSubmitButtonInputElement(
      SubmitButtonInputElement ele, int key, dynamic value) {
    switch (key) {
      case formActionSubmitButtonInputElementAttribute:
        ele.formAction = value as String;
        break;
      case formEnctypeSubmitButtonInputElementAttribute:
        ele.formEnctype = value as String;
        break;
      case formMethodSubmitButtonInputElementAttribute:
        ele.formMethod = value as String;
        break;
      case formNoValidateSubmitButtonInputElementAttribute:
        ele.formNoValidate = value as bool;
        break;
      case formTargetSubmitButtonInputElementAttribute:
        ele.formTarget = value as String;
        break;
    }
  }
}

const altImageButtonInputElementAttribute = 0;
const formActionImageButtonInputElementAttribute = 1;
const formEnctypeImageButtonInputElementAttribute = 2;
const formMethodImageButtonInputElementAttribute = 3;
const formNoValidateImageButtonInputElementAttribute = 4;
const formTargetImageButtonInputElementAttribute = 5;
const heightImageButtonInputElementAttribute = 6;
const srcImageButtonInputElementAttribute = 7;
const widthImageButtonInputElementAttribute = 8;

class VImageButtonInputElement
    extends VInputElementBase<ImageButtonInputElement> {
  @override
  ImageButtonInputElement elementFactory() => new ImageButtonInputElement();

  var _setValuesImageButtonInputElement = <int, dynamic>{};

  String get alt =>
      _setValuesImageButtonInputElement[altImageButtonInputElementAttribute]
          as String;
  set alt(String v) {
    _setValuesImageButtonInputElement[altImageButtonInputElementAttribute] = v;
  }

  String get formAction => _setValuesImageButtonInputElement[
      formActionImageButtonInputElementAttribute] as String;
  set formAction(String v) {
    _setValuesImageButtonInputElement[
        formActionImageButtonInputElementAttribute] = v;
  }

  String get formEnctype => _setValuesImageButtonInputElement[
      formEnctypeImageButtonInputElementAttribute] as String;
  set formEnctype(String v) {
    _setValuesImageButtonInputElement[
        formEnctypeImageButtonInputElementAttribute] = v;
  }

  String get formMethod => _setValuesImageButtonInputElement[
      formMethodImageButtonInputElementAttribute] as String;
  set formMethod(String v) {
    _setValuesImageButtonInputElement[
        formMethodImageButtonInputElementAttribute] = v;
  }

  bool get formNoValidate => _setValuesImageButtonInputElement[
      formNoValidateImageButtonInputElementAttribute] as bool;
  set formNoValidate(bool v) {
    _setValuesImageButtonInputElement[
        formNoValidateImageButtonInputElementAttribute] = v;
  }

  String get formTarget => _setValuesImageButtonInputElement[
      formTargetImageButtonInputElementAttribute] as String;
  set formTarget(String v) {
    _setValuesImageButtonInputElement[
        formTargetImageButtonInputElementAttribute] = v;
  }

  int get height =>
      _setValuesImageButtonInputElement[heightImageButtonInputElementAttribute]
          as int;
  set height(int v) {
    _setValuesImageButtonInputElement[heightImageButtonInputElementAttribute] =
        v;
  }

  String get src =>
      _setValuesImageButtonInputElement[srcImageButtonInputElementAttribute]
          as String;
  set src(String v) {
    _setValuesImageButtonInputElement[srcImageButtonInputElementAttribute] = v;
  }

  int get width =>
      _setValuesImageButtonInputElement[widthImageButtonInputElementAttribute]
          as int;
  set width(int v) {
    _setValuesImageButtonInputElement[widthImageButtonInputElementAttribute] =
        v;
  }

  @override
  @protected
  void applyAttributesToElement(ImageButtonInputElement ele) {
    _setValuesImageButtonInputElement.forEach(
        (k, dynamic v) => _updateAttributeImageButtonInputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VImageButtonInputElement prev, ImageButtonInputElement ele) {
    prev._setValuesImageButtonInputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesImageButtonInputElement[k];
      if (v != newValue)
        _updateAttributeImageButtonInputElement(ele, k, newValue);
    });
    prev._setValuesImageButtonInputElement = _setValuesImageButtonInputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeImageButtonInputElement(
      ImageButtonInputElement ele, int key, dynamic value) {
    switch (key) {
      case altImageButtonInputElementAttribute:
        ele.alt = value as String;
        break;
      case formActionImageButtonInputElementAttribute:
        ele.formAction = value as String;
        break;
      case formEnctypeImageButtonInputElementAttribute:
        ele.formEnctype = value as String;
        break;
      case formMethodImageButtonInputElementAttribute:
        ele.formMethod = value as String;
        break;
      case formNoValidateImageButtonInputElementAttribute:
        ele.formNoValidate = value as bool;
        break;
      case formTargetImageButtonInputElementAttribute:
        ele.formTarget = value as String;
        break;
      case heightImageButtonInputElementAttribute:
        ele.height = value as int;
        break;
      case srcImageButtonInputElementAttribute:
        ele.src = value as String;
        break;
      case widthImageButtonInputElementAttribute:
        ele.width = value as int;
        break;
    }
  }
}

class VResetButtonInputElement
    extends VInputElementBase<ResetButtonInputElement> {
  @override
  ResetButtonInputElement elementFactory() => new ResetButtonInputElement();
}

class VButtonInputElement extends VInputElementBase<ButtonInputElement> {
  @override
  ButtonInputElement elementFactory() => new ButtonInputElement();
}

const autofocusKeygenElementAttribute = 0;
const challengeKeygenElementAttribute = 1;
const disabledKeygenElementAttribute = 2;
const keytypeKeygenElementAttribute = 3;
const nameKeygenElementAttribute = 4;

class VKeygenElement extends VHtmlElement<KeygenElement> {
  @override
  KeygenElement elementFactory() => new KeygenElement();

  var _setValuesKeygenElement = <int, dynamic>{};

  bool get autofocus =>
      _setValuesKeygenElement[autofocusKeygenElementAttribute] as bool;
  set autofocus(bool v) {
    _setValuesKeygenElement[autofocusKeygenElementAttribute] = v;
  }

  String get challenge =>
      _setValuesKeygenElement[challengeKeygenElementAttribute] as String;
  set challenge(String v) {
    _setValuesKeygenElement[challengeKeygenElementAttribute] = v;
  }

  bool get disabled =>
      _setValuesKeygenElement[disabledKeygenElementAttribute] as bool;
  set disabled(bool v) {
    _setValuesKeygenElement[disabledKeygenElementAttribute] = v;
  }

  String get keytype =>
      _setValuesKeygenElement[keytypeKeygenElementAttribute] as String;
  set keytype(String v) {
    _setValuesKeygenElement[keytypeKeygenElementAttribute] = v;
  }

  String get name =>
      _setValuesKeygenElement[nameKeygenElementAttribute] as String;
  set name(String v) {
    _setValuesKeygenElement[nameKeygenElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(KeygenElement ele) {
    _setValuesKeygenElement
        .forEach((k, dynamic v) => _updateAttributeKeygenElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VKeygenElement prev, KeygenElement ele) {
    prev._setValuesKeygenElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesKeygenElement[k];
      if (v != newValue) _updateAttributeKeygenElement(ele, k, newValue);
    });
    prev._setValuesKeygenElement = _setValuesKeygenElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeKeygenElement(
      KeygenElement ele, int key, dynamic value) {
    switch (key) {
      case autofocusKeygenElementAttribute:
        ele.autofocus = value as bool;
        break;
      case challengeKeygenElementAttribute:
        ele.challenge = value as String;
        break;
      case disabledKeygenElementAttribute:
        ele.disabled = value as bool;
        break;
      case keytypeKeygenElementAttribute:
        ele.keytype = value as String;
        break;
      case nameKeygenElementAttribute:
        ele.name = value as String;
        break;
    }
  }
}

const valueLIElementAttribute = 0;

class VLIElement extends VHtmlElement<LIElement> {
  @override
  LIElement elementFactory() => new LIElement();

  var _setValuesLIElement = <int, dynamic>{};

  int get value => _setValuesLIElement[valueLIElementAttribute] as int;
  set value(int v) {
    _setValuesLIElement[valueLIElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(LIElement ele) {
    _setValuesLIElement
        .forEach((k, dynamic v) => _updateAttributeLIElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VLIElement prev, LIElement ele) {
    prev._setValuesLIElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesLIElement[k];
      if (v != newValue) _updateAttributeLIElement(ele, k, newValue);
    });
    prev._setValuesLIElement = _setValuesLIElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeLIElement(LIElement ele, int key, dynamic value) {
    switch (key) {
      case valueLIElementAttribute:
        ele.value = value as int;
        break;
    }
  }
}

const htmlForLabelElementAttribute = 0;

class VLabelElement extends VHtmlElement<LabelElement> {
  @override
  LabelElement elementFactory() => new LabelElement();

  var _setValuesLabelElement = <int, dynamic>{};

  String get htmlFor =>
      _setValuesLabelElement[htmlForLabelElementAttribute] as String;
  set htmlFor(String v) {
    _setValuesLabelElement[htmlForLabelElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(LabelElement ele) {
    _setValuesLabelElement
        .forEach((k, dynamic v) => _updateAttributeLabelElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VLabelElement prev, LabelElement ele) {
    prev._setValuesLabelElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesLabelElement[k];
      if (v != newValue) _updateAttributeLabelElement(ele, k, newValue);
    });
    prev._setValuesLabelElement = _setValuesLabelElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeLabelElement(LabelElement ele, int key, dynamic value) {
    switch (key) {
      case htmlForLabelElementAttribute:
        ele.htmlFor = value as String;
        break;
    }
  }
}

class VLegendElement extends VHtmlElement<LegendElement> {
  @override
  LegendElement elementFactory() => new LegendElement();
}

const asLinkElementAttribute = 0;
const crossOriginLinkElementAttribute = 1;
const disabledLinkElementAttribute = 2;
const hrefLinkElementAttribute = 3;
const hreflangLinkElementAttribute = 4;
const integrityLinkElementAttribute = 5;
const mediaLinkElementAttribute = 6;
const relLinkElementAttribute = 7;
const typeLinkElementAttribute = 8;

class VLinkElement extends VHtmlElement<LinkElement> {
  @override
  LinkElement elementFactory() => new LinkElement();

  var _setValuesLinkElement = <int, dynamic>{};

  String get as => _setValuesLinkElement[asLinkElementAttribute] as String;
  set as(String v) {
    _setValuesLinkElement[asLinkElementAttribute] = v;
  }

  String get crossOrigin =>
      _setValuesLinkElement[crossOriginLinkElementAttribute] as String;
  set crossOrigin(String v) {
    _setValuesLinkElement[crossOriginLinkElementAttribute] = v;
  }

  bool get disabled =>
      _setValuesLinkElement[disabledLinkElementAttribute] as bool;
  set disabled(bool v) {
    _setValuesLinkElement[disabledLinkElementAttribute] = v;
  }

  String get href => _setValuesLinkElement[hrefLinkElementAttribute] as String;
  set href(String v) {
    _setValuesLinkElement[hrefLinkElementAttribute] = v;
  }

  String get hreflang =>
      _setValuesLinkElement[hreflangLinkElementAttribute] as String;
  set hreflang(String v) {
    _setValuesLinkElement[hreflangLinkElementAttribute] = v;
  }

  String get integrity =>
      _setValuesLinkElement[integrityLinkElementAttribute] as String;
  set integrity(String v) {
    _setValuesLinkElement[integrityLinkElementAttribute] = v;
  }

  String get media =>
      _setValuesLinkElement[mediaLinkElementAttribute] as String;
  set media(String v) {
    _setValuesLinkElement[mediaLinkElementAttribute] = v;
  }

  String get rel => _setValuesLinkElement[relLinkElementAttribute] as String;
  set rel(String v) {
    _setValuesLinkElement[relLinkElementAttribute] = v;
  }

  String get type => _setValuesLinkElement[typeLinkElementAttribute] as String;
  set type(String v) {
    _setValuesLinkElement[typeLinkElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(LinkElement ele) {
    _setValuesLinkElement
        .forEach((k, dynamic v) => _updateAttributeLinkElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VLinkElement prev, LinkElement ele) {
    prev._setValuesLinkElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesLinkElement[k];
      if (v != newValue) _updateAttributeLinkElement(ele, k, newValue);
    });
    prev._setValuesLinkElement = _setValuesLinkElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeLinkElement(LinkElement ele, int key, dynamic value) {
    switch (key) {
      case asLinkElementAttribute:
        ele.as = value as String;
        break;
      case crossOriginLinkElementAttribute:
        ele.crossOrigin = value as String;
        break;
      case disabledLinkElementAttribute:
        ele.disabled = value as bool;
        break;
      case hrefLinkElementAttribute:
        ele.href = value as String;
        break;
      case hreflangLinkElementAttribute:
        ele.hreflang = value as String;
        break;
      case integrityLinkElementAttribute:
        ele.integrity = value as String;
        break;
      case mediaLinkElementAttribute:
        ele.media = value as String;
        break;
      case relLinkElementAttribute:
        ele.rel = value as String;
        break;
      case typeLinkElementAttribute:
        ele.type = value as String;
        break;
    }
  }
}

const nameMapElementAttribute = 0;

class VMapElement extends VHtmlElement<MapElement> {
  @override
  MapElement elementFactory() => new MapElement();

  var _setValuesMapElement = <int, dynamic>{};

  String get name => _setValuesMapElement[nameMapElementAttribute] as String;
  set name(String v) {
    _setValuesMapElement[nameMapElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(MapElement ele) {
    _setValuesMapElement
        .forEach((k, dynamic v) => _updateAttributeMapElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VMapElement prev, MapElement ele) {
    prev._setValuesMapElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesMapElement[k];
      if (v != newValue) _updateAttributeMapElement(ele, k, newValue);
    });
    prev._setValuesMapElement = _setValuesMapElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMapElement(MapElement ele, int key, dynamic value) {
    switch (key) {
      case nameMapElementAttribute:
        ele.name = value as String;
        break;
    }
  }
}

const autoplayMediaElementAttribute = 0;
const controlsMediaElementAttribute = 1;
const crossOriginMediaElementAttribute = 2;
const currentTimeMediaElementAttribute = 3;
const defaultMutedMediaElementAttribute = 4;
const defaultPlaybackRateMediaElementAttribute = 5;
const disableRemotePlaybackMediaElementAttribute = 6;
const loopMediaElementAttribute = 7;
const mutedMediaElementAttribute = 8;
const playbackRateMediaElementAttribute = 9;
const preloadMediaElementAttribute = 10;
const sessionMediaElementAttribute = 11;
const srcMediaElementAttribute = 12;
const volumeMediaElementAttribute = 13;

abstract class VMediaElement<T extends MediaElement> extends VHtmlElement<T> {
  var _setValuesMediaElement = <int, dynamic>{};

  bool get autoplay =>
      _setValuesMediaElement[autoplayMediaElementAttribute] as bool;
  set autoplay(bool v) {
    _setValuesMediaElement[autoplayMediaElementAttribute] = v;
  }

  bool get controls =>
      _setValuesMediaElement[controlsMediaElementAttribute] as bool;
  set controls(bool v) {
    _setValuesMediaElement[controlsMediaElementAttribute] = v;
  }

  String get crossOrigin =>
      _setValuesMediaElement[crossOriginMediaElementAttribute] as String;
  set crossOrigin(String v) {
    _setValuesMediaElement[crossOriginMediaElementAttribute] = v;
  }

  num get currentTime =>
      _setValuesMediaElement[currentTimeMediaElementAttribute] as num;
  set currentTime(num v) {
    _setValuesMediaElement[currentTimeMediaElementAttribute] = v;
  }

  bool get defaultMuted =>
      _setValuesMediaElement[defaultMutedMediaElementAttribute] as bool;
  set defaultMuted(bool v) {
    _setValuesMediaElement[defaultMutedMediaElementAttribute] = v;
  }

  num get defaultPlaybackRate =>
      _setValuesMediaElement[defaultPlaybackRateMediaElementAttribute] as num;
  set defaultPlaybackRate(num v) {
    _setValuesMediaElement[defaultPlaybackRateMediaElementAttribute] = v;
  }

  bool get disableRemotePlayback =>
      _setValuesMediaElement[disableRemotePlaybackMediaElementAttribute]
          as bool;
  set disableRemotePlayback(bool v) {
    _setValuesMediaElement[disableRemotePlaybackMediaElementAttribute] = v;
  }

  bool get loop => _setValuesMediaElement[loopMediaElementAttribute] as bool;
  set loop(bool v) {
    _setValuesMediaElement[loopMediaElementAttribute] = v;
  }

  bool get muted => _setValuesMediaElement[mutedMediaElementAttribute] as bool;
  set muted(bool v) {
    _setValuesMediaElement[mutedMediaElementAttribute] = v;
  }

  num get playbackRate =>
      _setValuesMediaElement[playbackRateMediaElementAttribute] as num;
  set playbackRate(num v) {
    _setValuesMediaElement[playbackRateMediaElementAttribute] = v;
  }

  String get preload =>
      _setValuesMediaElement[preloadMediaElementAttribute] as String;
  set preload(String v) {
    _setValuesMediaElement[preloadMediaElementAttribute] = v;
  }

  MediaSession get session =>
      _setValuesMediaElement[sessionMediaElementAttribute] as MediaSession;
  set session(MediaSession v) {
    _setValuesMediaElement[sessionMediaElementAttribute] = v;
  }

  String get src => _setValuesMediaElement[srcMediaElementAttribute] as String;
  set src(String v) {
    _setValuesMediaElement[srcMediaElementAttribute] = v;
  }

  num get volume => _setValuesMediaElement[volumeMediaElementAttribute] as num;
  set volume(num v) {
    _setValuesMediaElement[volumeMediaElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    _setValuesMediaElement
        .forEach((k, dynamic v) => _updateAttributeMediaElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VMediaElement<T> prev, T ele) {
    prev._setValuesMediaElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesMediaElement[k];
      if (v != newValue) _updateAttributeMediaElement(ele, k, newValue);
    });
    prev._setValuesMediaElement = _setValuesMediaElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMediaElement(MediaElement ele, int key, dynamic value) {
    switch (key) {
      case autoplayMediaElementAttribute:
        ele.autoplay = value as bool;
        break;
      case controlsMediaElementAttribute:
        ele.controls = value as bool;
        break;
      case crossOriginMediaElementAttribute:
        ele.crossOrigin = value as String;
        break;
      case currentTimeMediaElementAttribute:
        ele.currentTime = value as num;
        break;
      case defaultMutedMediaElementAttribute:
        ele.defaultMuted = value as bool;
        break;
      case defaultPlaybackRateMediaElementAttribute:
        ele.defaultPlaybackRate = value as num;
        break;
      case disableRemotePlaybackMediaElementAttribute:
        ele.disableRemotePlayback = value as bool;
        break;
      case loopMediaElementAttribute:
        ele.loop = value as bool;
        break;
      case mutedMediaElementAttribute:
        ele.muted = value as bool;
        break;
      case playbackRateMediaElementAttribute:
        ele.playbackRate = value as num;
        break;
      case preloadMediaElementAttribute:
        ele.preload = value as String;
        break;
      case sessionMediaElementAttribute:
        ele.session = value as MediaSession;
        break;
      case srcMediaElementAttribute:
        ele.src = value as String;
        break;
      case volumeMediaElementAttribute:
        ele.volume = value as num;
        break;
    }
  }
}

const labelMenuElementAttribute = 0;
const typeMenuElementAttribute = 1;

class VMenuElement extends VHtmlElement<MenuElement> {
  @override
  MenuElement elementFactory() => new MenuElement();

  var _setValuesMenuElement = <int, dynamic>{};

  String get label =>
      _setValuesMenuElement[labelMenuElementAttribute] as String;
  set label(String v) {
    _setValuesMenuElement[labelMenuElementAttribute] = v;
  }

  String get type => _setValuesMenuElement[typeMenuElementAttribute] as String;
  set type(String v) {
    _setValuesMenuElement[typeMenuElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(MenuElement ele) {
    _setValuesMenuElement
        .forEach((k, dynamic v) => _updateAttributeMenuElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VMenuElement prev, MenuElement ele) {
    prev._setValuesMenuElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesMenuElement[k];
      if (v != newValue) _updateAttributeMenuElement(ele, k, newValue);
    });
    prev._setValuesMenuElement = _setValuesMenuElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMenuElement(MenuElement ele, int key, dynamic value) {
    switch (key) {
      case labelMenuElementAttribute:
        ele.label = value as String;
        break;
      case typeMenuElementAttribute:
        ele.type = value as String;
        break;
    }
  }
}

const checkedMenuItemElementAttribute = 0;
const defaultValueMenuItemElementAttribute = 1;
const disabledMenuItemElementAttribute = 2;
const iconMenuItemElementAttribute = 3;
const labelMenuItemElementAttribute = 4;
const radiogroupMenuItemElementAttribute = 5;
const typeMenuItemElementAttribute = 6;

abstract class VMenuItemElement<T extends MenuItemElement>
    extends VHtmlElement<T> {
  var _setValuesMenuItemElement = <int, dynamic>{};

  bool get checked =>
      _setValuesMenuItemElement[checkedMenuItemElementAttribute] as bool;
  set checked(bool v) {
    _setValuesMenuItemElement[checkedMenuItemElementAttribute] = v;
  }

  bool get defaultValue =>
      _setValuesMenuItemElement[defaultValueMenuItemElementAttribute] as bool;
  set defaultValue(bool v) {
    _setValuesMenuItemElement[defaultValueMenuItemElementAttribute] = v;
  }

  bool get disabled =>
      _setValuesMenuItemElement[disabledMenuItemElementAttribute] as bool;
  set disabled(bool v) {
    _setValuesMenuItemElement[disabledMenuItemElementAttribute] = v;
  }

  String get icon =>
      _setValuesMenuItemElement[iconMenuItemElementAttribute] as String;
  set icon(String v) {
    _setValuesMenuItemElement[iconMenuItemElementAttribute] = v;
  }

  String get label =>
      _setValuesMenuItemElement[labelMenuItemElementAttribute] as String;
  set label(String v) {
    _setValuesMenuItemElement[labelMenuItemElementAttribute] = v;
  }

  String get radiogroup =>
      _setValuesMenuItemElement[radiogroupMenuItemElementAttribute] as String;
  set radiogroup(String v) {
    _setValuesMenuItemElement[radiogroupMenuItemElementAttribute] = v;
  }

  String get type =>
      _setValuesMenuItemElement[typeMenuItemElementAttribute] as String;
  set type(String v) {
    _setValuesMenuItemElement[typeMenuItemElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    _setValuesMenuItemElement
        .forEach((k, dynamic v) => _updateAttributeMenuItemElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VMenuItemElement<T> prev, T ele) {
    prev._setValuesMenuItemElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesMenuItemElement[k];
      if (v != newValue) _updateAttributeMenuItemElement(ele, k, newValue);
    });
    prev._setValuesMenuItemElement = _setValuesMenuItemElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMenuItemElement(
      MenuItemElement ele, int key, dynamic value) {
    switch (key) {
      case checkedMenuItemElementAttribute:
        ele.checked = value as bool;
        break;
      case defaultValueMenuItemElementAttribute:
        ele.defaultValue = value as bool;
        break;
      case disabledMenuItemElementAttribute:
        ele.disabled = value as bool;
        break;
      case iconMenuItemElementAttribute:
        ele.icon = value as String;
        break;
      case labelMenuItemElementAttribute:
        ele.label = value as String;
        break;
      case radiogroupMenuItemElementAttribute:
        ele.radiogroup = value as String;
        break;
      case typeMenuItemElementAttribute:
        ele.type = value as String;
        break;
    }
  }
}

const contentMetaElementAttribute = 0;
const httpEquivMetaElementAttribute = 1;
const nameMetaElementAttribute = 2;

class VMetaElement extends VHtmlElement<MetaElement> {
  @override
  MetaElement elementFactory() => new MetaElement();

  var _setValuesMetaElement = <int, dynamic>{};

  String get content =>
      _setValuesMetaElement[contentMetaElementAttribute] as String;
  set content(String v) {
    _setValuesMetaElement[contentMetaElementAttribute] = v;
  }

  String get httpEquiv =>
      _setValuesMetaElement[httpEquivMetaElementAttribute] as String;
  set httpEquiv(String v) {
    _setValuesMetaElement[httpEquivMetaElementAttribute] = v;
  }

  String get name => _setValuesMetaElement[nameMetaElementAttribute] as String;
  set name(String v) {
    _setValuesMetaElement[nameMetaElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(MetaElement ele) {
    _setValuesMetaElement
        .forEach((k, dynamic v) => _updateAttributeMetaElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VMetaElement prev, MetaElement ele) {
    prev._setValuesMetaElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesMetaElement[k];
      if (v != newValue) _updateAttributeMetaElement(ele, k, newValue);
    });
    prev._setValuesMetaElement = _setValuesMetaElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMetaElement(MetaElement ele, int key, dynamic value) {
    switch (key) {
      case contentMetaElementAttribute:
        ele.content = value as String;
        break;
      case httpEquivMetaElementAttribute:
        ele.httpEquiv = value as String;
        break;
      case nameMetaElementAttribute:
        ele.name = value as String;
        break;
    }
  }
}

const highMeterElementAttribute = 0;
const lowMeterElementAttribute = 1;
const maxMeterElementAttribute = 2;
const minMeterElementAttribute = 3;
const optimumMeterElementAttribute = 4;
const valueMeterElementAttribute = 5;

class VMeterElement extends VHtmlElement<MeterElement> {
  @override
  MeterElement elementFactory() => new MeterElement();

  var _setValuesMeterElement = <int, dynamic>{};

  num get high => _setValuesMeterElement[highMeterElementAttribute] as num;
  set high(num v) {
    _setValuesMeterElement[highMeterElementAttribute] = v;
  }

  num get low => _setValuesMeterElement[lowMeterElementAttribute] as num;
  set low(num v) {
    _setValuesMeterElement[lowMeterElementAttribute] = v;
  }

  num get max => _setValuesMeterElement[maxMeterElementAttribute] as num;
  set max(num v) {
    _setValuesMeterElement[maxMeterElementAttribute] = v;
  }

  num get min => _setValuesMeterElement[minMeterElementAttribute] as num;
  set min(num v) {
    _setValuesMeterElement[minMeterElementAttribute] = v;
  }

  num get optimum =>
      _setValuesMeterElement[optimumMeterElementAttribute] as num;
  set optimum(num v) {
    _setValuesMeterElement[optimumMeterElementAttribute] = v;
  }

  num get value => _setValuesMeterElement[valueMeterElementAttribute] as num;
  set value(num v) {
    _setValuesMeterElement[valueMeterElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(MeterElement ele) {
    _setValuesMeterElement
        .forEach((k, dynamic v) => _updateAttributeMeterElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VMeterElement prev, MeterElement ele) {
    prev._setValuesMeterElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesMeterElement[k];
      if (v != newValue) _updateAttributeMeterElement(ele, k, newValue);
    });
    prev._setValuesMeterElement = _setValuesMeterElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMeterElement(MeterElement ele, int key, dynamic value) {
    switch (key) {
      case highMeterElementAttribute:
        ele.high = value as num;
        break;
      case lowMeterElementAttribute:
        ele.low = value as num;
        break;
      case maxMeterElementAttribute:
        ele.max = value as num;
        break;
      case minMeterElementAttribute:
        ele.min = value as num;
        break;
      case optimumMeterElementAttribute:
        ele.optimum = value as num;
        break;
      case valueMeterElementAttribute:
        ele.value = value as num;
        break;
    }
  }
}

const citeModElementAttribute = 0;
const dateTimeModElementAttribute = 1;

abstract class VModElement<T extends ModElement> extends VHtmlElement<T> {
  var _setValuesModElement = <int, dynamic>{};

  String get cite => _setValuesModElement[citeModElementAttribute] as String;
  set cite(String v) {
    _setValuesModElement[citeModElementAttribute] = v;
  }

  String get dateTime =>
      _setValuesModElement[dateTimeModElementAttribute] as String;
  set dateTime(String v) {
    _setValuesModElement[dateTimeModElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    _setValuesModElement
        .forEach((k, dynamic v) => _updateAttributeModElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VModElement<T> prev, T ele) {
    prev._setValuesModElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesModElement[k];
      if (v != newValue) _updateAttributeModElement(ele, k, newValue);
    });
    prev._setValuesModElement = _setValuesModElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeModElement(ModElement ele, int key, dynamic value) {
    switch (key) {
      case citeModElementAttribute:
        ele.cite = value as String;
        break;
      case dateTimeModElementAttribute:
        ele.dateTime = value as String;
        break;
    }
  }
}

const reversedOListElementAttribute = 0;
const startOListElementAttribute = 1;
const typeOListElementAttribute = 2;

class VOListElement extends VHtmlElement<OListElement> {
  @override
  OListElement elementFactory() => new OListElement();

  var _setValuesOListElement = <int, dynamic>{};

  bool get reversed =>
      _setValuesOListElement[reversedOListElementAttribute] as bool;
  set reversed(bool v) {
    _setValuesOListElement[reversedOListElementAttribute] = v;
  }

  int get start => _setValuesOListElement[startOListElementAttribute] as int;
  set start(int v) {
    _setValuesOListElement[startOListElementAttribute] = v;
  }

  String get type =>
      _setValuesOListElement[typeOListElementAttribute] as String;
  set type(String v) {
    _setValuesOListElement[typeOListElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(OListElement ele) {
    _setValuesOListElement
        .forEach((k, dynamic v) => _updateAttributeOListElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VOListElement prev, OListElement ele) {
    prev._setValuesOListElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesOListElement[k];
      if (v != newValue) _updateAttributeOListElement(ele, k, newValue);
    });
    prev._setValuesOListElement = _setValuesOListElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeOListElement(OListElement ele, int key, dynamic value) {
    switch (key) {
      case reversedOListElementAttribute:
        ele.reversed = value as bool;
        break;
      case startOListElementAttribute:
        ele.start = value as int;
        break;
      case typeOListElementAttribute:
        ele.type = value as String;
        break;
    }
  }
}

const dataObjectElementAttribute = 0;
const heightObjectElementAttribute = 1;
const nameObjectElementAttribute = 2;
const typeObjectElementAttribute = 3;
const useMapObjectElementAttribute = 4;
const widthObjectElementAttribute = 5;

class VObjectElement extends VHtmlElement<ObjectElement> {
  @override
  ObjectElement elementFactory() => new ObjectElement();

  var _setValuesObjectElement = <int, dynamic>{};

  String get data =>
      _setValuesObjectElement[dataObjectElementAttribute] as String;
  set data(String v) {
    _setValuesObjectElement[dataObjectElementAttribute] = v;
  }

  String get height =>
      _setValuesObjectElement[heightObjectElementAttribute] as String;
  set height(String v) {
    _setValuesObjectElement[heightObjectElementAttribute] = v;
  }

  String get name =>
      _setValuesObjectElement[nameObjectElementAttribute] as String;
  set name(String v) {
    _setValuesObjectElement[nameObjectElementAttribute] = v;
  }

  String get type =>
      _setValuesObjectElement[typeObjectElementAttribute] as String;
  set type(String v) {
    _setValuesObjectElement[typeObjectElementAttribute] = v;
  }

  String get useMap =>
      _setValuesObjectElement[useMapObjectElementAttribute] as String;
  set useMap(String v) {
    _setValuesObjectElement[useMapObjectElementAttribute] = v;
  }

  String get width =>
      _setValuesObjectElement[widthObjectElementAttribute] as String;
  set width(String v) {
    _setValuesObjectElement[widthObjectElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(ObjectElement ele) {
    _setValuesObjectElement
        .forEach((k, dynamic v) => _updateAttributeObjectElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VObjectElement prev, ObjectElement ele) {
    prev._setValuesObjectElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesObjectElement[k];
      if (v != newValue) _updateAttributeObjectElement(ele, k, newValue);
    });
    prev._setValuesObjectElement = _setValuesObjectElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeObjectElement(
      ObjectElement ele, int key, dynamic value) {
    switch (key) {
      case dataObjectElementAttribute:
        ele.data = value as String;
        break;
      case heightObjectElementAttribute:
        ele.height = value as String;
        break;
      case nameObjectElementAttribute:
        ele.name = value as String;
        break;
      case typeObjectElementAttribute:
        ele.type = value as String;
        break;
      case useMapObjectElementAttribute:
        ele.useMap = value as String;
        break;
      case widthObjectElementAttribute:
        ele.width = value as String;
        break;
    }
  }
}

const disabledOptGroupElementAttribute = 0;
const labelOptGroupElementAttribute = 1;

class VOptGroupElement extends VHtmlElement<OptGroupElement> {
  @override
  OptGroupElement elementFactory() => new OptGroupElement();

  var _setValuesOptGroupElement = <int, dynamic>{};

  bool get disabled =>
      _setValuesOptGroupElement[disabledOptGroupElementAttribute] as bool;
  set disabled(bool v) {
    _setValuesOptGroupElement[disabledOptGroupElementAttribute] = v;
  }

  String get label =>
      _setValuesOptGroupElement[labelOptGroupElementAttribute] as String;
  set label(String v) {
    _setValuesOptGroupElement[labelOptGroupElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(OptGroupElement ele) {
    _setValuesOptGroupElement
        .forEach((k, dynamic v) => _updateAttributeOptGroupElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VOptGroupElement prev, OptGroupElement ele) {
    prev._setValuesOptGroupElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesOptGroupElement[k];
      if (v != newValue) _updateAttributeOptGroupElement(ele, k, newValue);
    });
    prev._setValuesOptGroupElement = _setValuesOptGroupElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeOptGroupElement(
      OptGroupElement ele, int key, dynamic value) {
    switch (key) {
      case disabledOptGroupElementAttribute:
        ele.disabled = value as bool;
        break;
      case labelOptGroupElementAttribute:
        ele.label = value as String;
        break;
    }
  }
}

const defaultSelectedOptionElementAttribute = 0;
const disabledOptionElementAttribute = 1;
const labelOptionElementAttribute = 2;
const selectedOptionElementAttribute = 3;
const valueOptionElementAttribute = 4;

class VOptionElement extends VHtmlElement<OptionElement> {
  @override
  OptionElement elementFactory() => new OptionElement();

  var _setValuesOptionElement = <int, dynamic>{};

  bool get defaultSelected =>
      _setValuesOptionElement[defaultSelectedOptionElementAttribute] as bool;
  set defaultSelected(bool v) {
    _setValuesOptionElement[defaultSelectedOptionElementAttribute] = v;
  }

  bool get disabled =>
      _setValuesOptionElement[disabledOptionElementAttribute] as bool;
  set disabled(bool v) {
    _setValuesOptionElement[disabledOptionElementAttribute] = v;
  }

  String get label =>
      _setValuesOptionElement[labelOptionElementAttribute] as String;
  set label(String v) {
    _setValuesOptionElement[labelOptionElementAttribute] = v;
  }

  bool get selected =>
      _setValuesOptionElement[selectedOptionElementAttribute] as bool;
  set selected(bool v) {
    _setValuesOptionElement[selectedOptionElementAttribute] = v;
  }

  String get value =>
      _setValuesOptionElement[valueOptionElementAttribute] as String;
  set value(String v) {
    _setValuesOptionElement[valueOptionElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(OptionElement ele) {
    _setValuesOptionElement
        .forEach((k, dynamic v) => _updateAttributeOptionElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VOptionElement prev, OptionElement ele) {
    prev._setValuesOptionElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesOptionElement[k];
      if (v != newValue) _updateAttributeOptionElement(ele, k, newValue);
    });
    prev._setValuesOptionElement = _setValuesOptionElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeOptionElement(
      OptionElement ele, int key, dynamic value) {
    switch (key) {
      case defaultSelectedOptionElementAttribute:
        ele.defaultSelected = value as bool;
        break;
      case disabledOptionElementAttribute:
        ele.disabled = value as bool;
        break;
      case labelOptionElementAttribute:
        ele.label = value as String;
        break;
      case selectedOptionElementAttribute:
        ele.selected = value as bool;
        break;
      case valueOptionElementAttribute:
        ele.value = value as String;
        break;
    }
  }
}

const defaultValueOutputElementAttribute = 0;
const nameOutputElementAttribute = 1;
const valueOutputElementAttribute = 2;

class VOutputElement extends VHtmlElement<OutputElement> {
  @override
  OutputElement elementFactory() => new OutputElement();

  var _setValuesOutputElement = <int, dynamic>{};

  String get defaultValue =>
      _setValuesOutputElement[defaultValueOutputElementAttribute] as String;
  set defaultValue(String v) {
    _setValuesOutputElement[defaultValueOutputElementAttribute] = v;
  }

  String get name =>
      _setValuesOutputElement[nameOutputElementAttribute] as String;
  set name(String v) {
    _setValuesOutputElement[nameOutputElementAttribute] = v;
  }

  String get value =>
      _setValuesOutputElement[valueOutputElementAttribute] as String;
  set value(String v) {
    _setValuesOutputElement[valueOutputElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(OutputElement ele) {
    _setValuesOutputElement
        .forEach((k, dynamic v) => _updateAttributeOutputElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VOutputElement prev, OutputElement ele) {
    prev._setValuesOutputElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesOutputElement[k];
      if (v != newValue) _updateAttributeOutputElement(ele, k, newValue);
    });
    prev._setValuesOutputElement = _setValuesOutputElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeOutputElement(
      OutputElement ele, int key, dynamic value) {
    switch (key) {
      case defaultValueOutputElementAttribute:
        ele.defaultValue = value as String;
        break;
      case nameOutputElementAttribute:
        ele.name = value as String;
        break;
      case valueOutputElementAttribute:
        ele.value = value as String;
        break;
    }
  }
}

class VParagraphElement extends VHtmlElement<ParagraphElement> {
  @override
  ParagraphElement elementFactory() => new ParagraphElement();
}

const nameParamElementAttribute = 0;
const valueParamElementAttribute = 1;

class VParamElement extends VHtmlElement<ParamElement> {
  @override
  ParamElement elementFactory() => new ParamElement();

  var _setValuesParamElement = <int, dynamic>{};

  String get name =>
      _setValuesParamElement[nameParamElementAttribute] as String;
  set name(String v) {
    _setValuesParamElement[nameParamElementAttribute] = v;
  }

  String get value =>
      _setValuesParamElement[valueParamElementAttribute] as String;
  set value(String v) {
    _setValuesParamElement[valueParamElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(ParamElement ele) {
    _setValuesParamElement
        .forEach((k, dynamic v) => _updateAttributeParamElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VParamElement prev, ParamElement ele) {
    prev._setValuesParamElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesParamElement[k];
      if (v != newValue) _updateAttributeParamElement(ele, k, newValue);
    });
    prev._setValuesParamElement = _setValuesParamElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeParamElement(ParamElement ele, int key, dynamic value) {
    switch (key) {
      case nameParamElementAttribute:
        ele.name = value as String;
        break;
      case valueParamElementAttribute:
        ele.value = value as String;
        break;
    }
  }
}

abstract class VPictureElement<T extends PictureElement>
    extends VHtmlElement<T> {}

class VPreElement extends VHtmlElement<PreElement> {
  @override
  PreElement elementFactory() => new PreElement();
}

const maxProgressElementAttribute = 0;
const valueProgressElementAttribute = 1;

class VProgressElement extends VHtmlElement<ProgressElement> {
  @override
  ProgressElement elementFactory() => new ProgressElement();

  var _setValuesProgressElement = <int, dynamic>{};

  num get max => _setValuesProgressElement[maxProgressElementAttribute] as num;
  set max(num v) {
    _setValuesProgressElement[maxProgressElementAttribute] = v;
  }

  num get value =>
      _setValuesProgressElement[valueProgressElementAttribute] as num;
  set value(num v) {
    _setValuesProgressElement[valueProgressElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(ProgressElement ele) {
    _setValuesProgressElement
        .forEach((k, dynamic v) => _updateAttributeProgressElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VProgressElement prev, ProgressElement ele) {
    prev._setValuesProgressElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesProgressElement[k];
      if (v != newValue) _updateAttributeProgressElement(ele, k, newValue);
    });
    prev._setValuesProgressElement = _setValuesProgressElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeProgressElement(
      ProgressElement ele, int key, dynamic value) {
    switch (key) {
      case maxProgressElementAttribute:
        ele.max = value as num;
        break;
      case valueProgressElementAttribute:
        ele.value = value as num;
        break;
    }
  }
}

const citeQuoteElementAttribute = 0;

class VQuoteElement extends VHtmlElement<QuoteElement> {
  @override
  QuoteElement elementFactory() => new QuoteElement();

  var _setValuesQuoteElement = <int, dynamic>{};

  String get cite =>
      _setValuesQuoteElement[citeQuoteElementAttribute] as String;
  set cite(String v) {
    _setValuesQuoteElement[citeQuoteElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(QuoteElement ele) {
    _setValuesQuoteElement
        .forEach((k, dynamic v) => _updateAttributeQuoteElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VQuoteElement prev, QuoteElement ele) {
    prev._setValuesQuoteElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesQuoteElement[k];
      if (v != newValue) _updateAttributeQuoteElement(ele, k, newValue);
    });
    prev._setValuesQuoteElement = _setValuesQuoteElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeQuoteElement(QuoteElement ele, int key, dynamic value) {
    switch (key) {
      case citeQuoteElementAttribute:
        ele.cite = value as String;
        break;
    }
  }
}

const asyncScriptElementAttribute = 0;
const charsetScriptElementAttribute = 1;
const crossOriginScriptElementAttribute = 2;
const deferScriptElementAttribute = 3;
const integrityScriptElementAttribute = 4;
const nonceScriptElementAttribute = 5;
const srcScriptElementAttribute = 6;
const typeScriptElementAttribute = 7;

class VScriptElement extends VHtmlElement<ScriptElement> {
  @override
  ScriptElement elementFactory() => new ScriptElement();

  var _setValuesScriptElement = <int, dynamic>{};

  bool get async =>
      _setValuesScriptElement[asyncScriptElementAttribute] as bool;
  set async(bool v) {
    _setValuesScriptElement[asyncScriptElementAttribute] = v;
  }

  String get charset =>
      _setValuesScriptElement[charsetScriptElementAttribute] as String;
  set charset(String v) {
    _setValuesScriptElement[charsetScriptElementAttribute] = v;
  }

  String get crossOrigin =>
      _setValuesScriptElement[crossOriginScriptElementAttribute] as String;
  set crossOrigin(String v) {
    _setValuesScriptElement[crossOriginScriptElementAttribute] = v;
  }

  bool get defer =>
      _setValuesScriptElement[deferScriptElementAttribute] as bool;
  set defer(bool v) {
    _setValuesScriptElement[deferScriptElementAttribute] = v;
  }

  String get integrity =>
      _setValuesScriptElement[integrityScriptElementAttribute] as String;
  set integrity(String v) {
    _setValuesScriptElement[integrityScriptElementAttribute] = v;
  }

  String get nonce =>
      _setValuesScriptElement[nonceScriptElementAttribute] as String;
  set nonce(String v) {
    _setValuesScriptElement[nonceScriptElementAttribute] = v;
  }

  String get src =>
      _setValuesScriptElement[srcScriptElementAttribute] as String;
  set src(String v) {
    _setValuesScriptElement[srcScriptElementAttribute] = v;
  }

  String get type =>
      _setValuesScriptElement[typeScriptElementAttribute] as String;
  set type(String v) {
    _setValuesScriptElement[typeScriptElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(ScriptElement ele) {
    _setValuesScriptElement
        .forEach((k, dynamic v) => _updateAttributeScriptElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VScriptElement prev, ScriptElement ele) {
    prev._setValuesScriptElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesScriptElement[k];
      if (v != newValue) _updateAttributeScriptElement(ele, k, newValue);
    });
    prev._setValuesScriptElement = _setValuesScriptElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeScriptElement(
      ScriptElement ele, int key, dynamic value) {
    switch (key) {
      case asyncScriptElementAttribute:
        ele.async = value as bool;
        break;
      case charsetScriptElementAttribute:
        ele.charset = value as String;
        break;
      case crossOriginScriptElementAttribute:
        ele.crossOrigin = value as String;
        break;
      case deferScriptElementAttribute:
        ele.defer = value as bool;
        break;
      case integrityScriptElementAttribute:
        ele.integrity = value as String;
        break;
      case nonceScriptElementAttribute:
        ele.nonce = value as String;
        break;
      case srcScriptElementAttribute:
        ele.src = value as String;
        break;
      case typeScriptElementAttribute:
        ele.type = value as String;
        break;
    }
  }
}

const autofocusSelectElementAttribute = 0;
const disabledSelectElementAttribute = 1;
const lengthSelectElementAttribute = 2;
const multipleSelectElementAttribute = 3;
const nameSelectElementAttribute = 4;
const requiredSelectElementAttribute = 5;
const selectedIndexSelectElementAttribute = 6;
const sizeSelectElementAttribute = 7;
const valueSelectElementAttribute = 8;

class VSelectElement extends VHtmlElement<SelectElement> {
  @override
  SelectElement elementFactory() => new SelectElement();

  var _setValuesSelectElement = <int, dynamic>{};

  bool get autofocus =>
      _setValuesSelectElement[autofocusSelectElementAttribute] as bool;
  set autofocus(bool v) {
    _setValuesSelectElement[autofocusSelectElementAttribute] = v;
  }

  bool get disabled =>
      _setValuesSelectElement[disabledSelectElementAttribute] as bool;
  set disabled(bool v) {
    _setValuesSelectElement[disabledSelectElementAttribute] = v;
  }

  int get length =>
      _setValuesSelectElement[lengthSelectElementAttribute] as int;
  set length(int v) {
    _setValuesSelectElement[lengthSelectElementAttribute] = v;
  }

  bool get multiple =>
      _setValuesSelectElement[multipleSelectElementAttribute] as bool;
  set multiple(bool v) {
    _setValuesSelectElement[multipleSelectElementAttribute] = v;
  }

  String get name =>
      _setValuesSelectElement[nameSelectElementAttribute] as String;
  set name(String v) {
    _setValuesSelectElement[nameSelectElementAttribute] = v;
  }

  bool get required =>
      _setValuesSelectElement[requiredSelectElementAttribute] as bool;
  set required(bool v) {
    _setValuesSelectElement[requiredSelectElementAttribute] = v;
  }

  int get selectedIndex =>
      _setValuesSelectElement[selectedIndexSelectElementAttribute] as int;
  set selectedIndex(int v) {
    _setValuesSelectElement[selectedIndexSelectElementAttribute] = v;
  }

  int get size => _setValuesSelectElement[sizeSelectElementAttribute] as int;
  set size(int v) {
    _setValuesSelectElement[sizeSelectElementAttribute] = v;
  }

  String get value =>
      _setValuesSelectElement[valueSelectElementAttribute] as String;
  set value(String v) {
    _setValuesSelectElement[valueSelectElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(SelectElement ele) {
    _setValuesSelectElement
        .forEach((k, dynamic v) => _updateAttributeSelectElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VSelectElement prev, SelectElement ele) {
    prev._setValuesSelectElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesSelectElement[k];
      if (v != newValue) _updateAttributeSelectElement(ele, k, newValue);
    });
    prev._setValuesSelectElement = _setValuesSelectElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSelectElement(
      SelectElement ele, int key, dynamic value) {
    switch (key) {
      case autofocusSelectElementAttribute:
        ele.autofocus = value as bool;
        break;
      case disabledSelectElementAttribute:
        ele.disabled = value as bool;
        break;
      case lengthSelectElementAttribute:
        ele.length = value as int;
        break;
      case multipleSelectElementAttribute:
        ele.multiple = value as bool;
        break;
      case nameSelectElementAttribute:
        ele.name = value as String;
        break;
      case requiredSelectElementAttribute:
        ele.required = value as bool;
        break;
      case selectedIndexSelectElementAttribute:
        ele.selectedIndex = value as int;
        break;
      case sizeSelectElementAttribute:
        ele.size = value as int;
        break;
      case valueSelectElementAttribute:
        ele.value = value as String;
        break;
    }
  }
}

class VShadowElement extends VHtmlElement<ShadowElement> {
  @override
  ShadowElement elementFactory() => new ShadowElement();
}

const nameSlotElementAttribute = 0;

abstract class VSlotElement<T extends SlotElement> extends VHtmlElement<T> {
  var _setValuesSlotElement = <int, dynamic>{};

  String get name => _setValuesSlotElement[nameSlotElementAttribute] as String;
  set name(String v) {
    _setValuesSlotElement[nameSlotElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    _setValuesSlotElement
        .forEach((k, dynamic v) => _updateAttributeSlotElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VSlotElement<T> prev, T ele) {
    prev._setValuesSlotElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesSlotElement[k];
      if (v != newValue) _updateAttributeSlotElement(ele, k, newValue);
    });
    prev._setValuesSlotElement = _setValuesSlotElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSlotElement(SlotElement ele, int key, dynamic value) {
    switch (key) {
      case nameSlotElementAttribute:
        ele.name = value as String;
        break;
    }
  }
}

const mediaSourceElementAttribute = 0;
const sizesSourceElementAttribute = 1;
const srcSourceElementAttribute = 2;
const srcsetSourceElementAttribute = 3;
const typeSourceElementAttribute = 4;

class VSourceElement extends VHtmlElement<SourceElement> {
  @override
  SourceElement elementFactory() => new SourceElement();

  var _setValuesSourceElement = <int, dynamic>{};

  String get media =>
      _setValuesSourceElement[mediaSourceElementAttribute] as String;
  set media(String v) {
    _setValuesSourceElement[mediaSourceElementAttribute] = v;
  }

  String get sizes =>
      _setValuesSourceElement[sizesSourceElementAttribute] as String;
  set sizes(String v) {
    _setValuesSourceElement[sizesSourceElementAttribute] = v;
  }

  String get src =>
      _setValuesSourceElement[srcSourceElementAttribute] as String;
  set src(String v) {
    _setValuesSourceElement[srcSourceElementAttribute] = v;
  }

  String get srcset =>
      _setValuesSourceElement[srcsetSourceElementAttribute] as String;
  set srcset(String v) {
    _setValuesSourceElement[srcsetSourceElementAttribute] = v;
  }

  String get type =>
      _setValuesSourceElement[typeSourceElementAttribute] as String;
  set type(String v) {
    _setValuesSourceElement[typeSourceElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(SourceElement ele) {
    _setValuesSourceElement
        .forEach((k, dynamic v) => _updateAttributeSourceElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VSourceElement prev, SourceElement ele) {
    prev._setValuesSourceElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesSourceElement[k];
      if (v != newValue) _updateAttributeSourceElement(ele, k, newValue);
    });
    prev._setValuesSourceElement = _setValuesSourceElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSourceElement(
      SourceElement ele, int key, dynamic value) {
    switch (key) {
      case mediaSourceElementAttribute:
        ele.media = value as String;
        break;
      case sizesSourceElementAttribute:
        ele.sizes = value as String;
        break;
      case srcSourceElementAttribute:
        ele.src = value as String;
        break;
      case srcsetSourceElementAttribute:
        ele.srcset = value as String;
        break;
      case typeSourceElementAttribute:
        ele.type = value as String;
        break;
    }
  }
}

class VSpanElement extends VHtmlElement<SpanElement> {
  @override
  SpanElement elementFactory() => new SpanElement();
}

const disabledStyleElementAttribute = 0;
const mediaStyleElementAttribute = 1;
const typeStyleElementAttribute = 2;

class VStyleElement extends VHtmlElement<StyleElement> {
  @override
  StyleElement elementFactory() => new StyleElement();

  var _setValuesStyleElement = <int, dynamic>{};

  bool get disabled =>
      _setValuesStyleElement[disabledStyleElementAttribute] as bool;
  set disabled(bool v) {
    _setValuesStyleElement[disabledStyleElementAttribute] = v;
  }

  String get media =>
      _setValuesStyleElement[mediaStyleElementAttribute] as String;
  set media(String v) {
    _setValuesStyleElement[mediaStyleElementAttribute] = v;
  }

  String get type =>
      _setValuesStyleElement[typeStyleElementAttribute] as String;
  set type(String v) {
    _setValuesStyleElement[typeStyleElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(StyleElement ele) {
    _setValuesStyleElement
        .forEach((k, dynamic v) => _updateAttributeStyleElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VStyleElement prev, StyleElement ele) {
    prev._setValuesStyleElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesStyleElement[k];
      if (v != newValue) _updateAttributeStyleElement(ele, k, newValue);
    });
    prev._setValuesStyleElement = _setValuesStyleElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeStyleElement(StyleElement ele, int key, dynamic value) {
    switch (key) {
      case disabledStyleElementAttribute:
        ele.disabled = value as bool;
        break;
      case mediaStyleElementAttribute:
        ele.media = value as String;
        break;
      case typeStyleElementAttribute:
        ele.type = value as String;
        break;
    }
  }
}

class VTableCaptionElement extends VHtmlElement<TableCaptionElement> {
  @override
  TableCaptionElement elementFactory() => new TableCaptionElement();
}

const colSpanTableCellElementAttribute = 0;
const headersTableCellElementAttribute = 1;
const rowSpanTableCellElementAttribute = 2;

class VTableCellElement extends VHtmlElement<TableCellElement> {
  @override
  TableCellElement elementFactory() => new TableCellElement();

  var _setValuesTableCellElement = <int, dynamic>{};

  int get colSpan =>
      _setValuesTableCellElement[colSpanTableCellElementAttribute] as int;
  set colSpan(int v) {
    _setValuesTableCellElement[colSpanTableCellElementAttribute] = v;
  }

  String get headers =>
      _setValuesTableCellElement[headersTableCellElementAttribute] as String;
  set headers(String v) {
    _setValuesTableCellElement[headersTableCellElementAttribute] = v;
  }

  int get rowSpan =>
      _setValuesTableCellElement[rowSpanTableCellElementAttribute] as int;
  set rowSpan(int v) {
    _setValuesTableCellElement[rowSpanTableCellElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(TableCellElement ele) {
    _setValuesTableCellElement
        .forEach((k, dynamic v) => _updateAttributeTableCellElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VTableCellElement prev, TableCellElement ele) {
    prev._setValuesTableCellElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesTableCellElement[k];
      if (v != newValue) _updateAttributeTableCellElement(ele, k, newValue);
    });
    prev._setValuesTableCellElement = _setValuesTableCellElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTableCellElement(
      TableCellElement ele, int key, dynamic value) {
    switch (key) {
      case colSpanTableCellElementAttribute:
        ele.colSpan = value as int;
        break;
      case headersTableCellElementAttribute:
        ele.headers = value as String;
        break;
      case rowSpanTableCellElementAttribute:
        ele.rowSpan = value as int;
        break;
    }
  }
}

const spanTableColElementAttribute = 0;

class VTableColElement extends VHtmlElement<TableColElement> {
  @override
  TableColElement elementFactory() => new TableColElement();

  var _setValuesTableColElement = <int, dynamic>{};

  int get span =>
      _setValuesTableColElement[spanTableColElementAttribute] as int;
  set span(int v) {
    _setValuesTableColElement[spanTableColElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(TableColElement ele) {
    _setValuesTableColElement
        .forEach((k, dynamic v) => _updateAttributeTableColElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VTableColElement prev, TableColElement ele) {
    prev._setValuesTableColElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesTableColElement[k];
      if (v != newValue) _updateAttributeTableColElement(ele, k, newValue);
    });
    prev._setValuesTableColElement = _setValuesTableColElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTableColElement(
      TableColElement ele, int key, dynamic value) {
    switch (key) {
      case spanTableColElementAttribute:
        ele.span = value as int;
        break;
    }
  }
}

const captionTableElementAttribute = 0;
const tFootTableElementAttribute = 1;
const tHeadTableElementAttribute = 2;

class VTableElement extends VHtmlElement<TableElement> {
  @override
  TableElement elementFactory() => new TableElement();

  var _setValuesTableElement = <int, dynamic>{};

  TableCaptionElement get caption =>
      _setValuesTableElement[captionTableElementAttribute]
          as TableCaptionElement;
  set caption(TableCaptionElement v) {
    _setValuesTableElement[captionTableElementAttribute] = v;
  }

  TableSectionElement get tFoot =>
      _setValuesTableElement[tFootTableElementAttribute] as TableSectionElement;
  set tFoot(TableSectionElement v) {
    _setValuesTableElement[tFootTableElementAttribute] = v;
  }

  TableSectionElement get tHead =>
      _setValuesTableElement[tHeadTableElementAttribute] as TableSectionElement;
  set tHead(TableSectionElement v) {
    _setValuesTableElement[tHeadTableElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(TableElement ele) {
    _setValuesTableElement
        .forEach((k, dynamic v) => _updateAttributeTableElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VTableElement prev, TableElement ele) {
    prev._setValuesTableElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesTableElement[k];
      if (v != newValue) _updateAttributeTableElement(ele, k, newValue);
    });
    prev._setValuesTableElement = _setValuesTableElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTableElement(TableElement ele, int key, dynamic value) {
    switch (key) {
      case captionTableElementAttribute:
        ele.caption = value as TableCaptionElement;
        break;
      case tFootTableElementAttribute:
        ele.tFoot = value as TableSectionElement;
        break;
      case tHeadTableElementAttribute:
        ele.tHead = value as TableSectionElement;
        break;
    }
  }
}

class VTableRowElement extends VHtmlElement<TableRowElement> {
  @override
  TableRowElement elementFactory() => new TableRowElement();
}

abstract class VTableSectionElement<T extends TableSectionElement>
    extends VHtmlElement<T> {}

class VTemplateElement extends VHtmlElement<TemplateElement> {
  @override
  TemplateElement elementFactory() => new TemplateElement();
}

const autocapitalizeTextAreaElementAttribute = 0;
const autofocusTextAreaElementAttribute = 1;
const colsTextAreaElementAttribute = 2;
const defaultValueTextAreaElementAttribute = 3;
const dirNameTextAreaElementAttribute = 4;
const disabledTextAreaElementAttribute = 5;
const inputModeTextAreaElementAttribute = 6;
const maxLengthTextAreaElementAttribute = 7;
const minLengthTextAreaElementAttribute = 8;
const nameTextAreaElementAttribute = 9;
const placeholderTextAreaElementAttribute = 10;
const readOnlyTextAreaElementAttribute = 11;
const requiredTextAreaElementAttribute = 12;
const rowsTextAreaElementAttribute = 13;
const selectionDirectionTextAreaElementAttribute = 14;
const selectionEndTextAreaElementAttribute = 15;
const selectionStartTextAreaElementAttribute = 16;
const valueTextAreaElementAttribute = 17;
const wrapTextAreaElementAttribute = 18;

class VTextAreaElement extends VHtmlElement<TextAreaElement> {
  @override
  TextAreaElement elementFactory() => new TextAreaElement();

  var _setValuesTextAreaElement = <int, dynamic>{};

  String get autocapitalize =>
      _setValuesTextAreaElement[autocapitalizeTextAreaElementAttribute]
          as String;
  set autocapitalize(String v) {
    _setValuesTextAreaElement[autocapitalizeTextAreaElementAttribute] = v;
  }

  bool get autofocus =>
      _setValuesTextAreaElement[autofocusTextAreaElementAttribute] as bool;
  set autofocus(bool v) {
    _setValuesTextAreaElement[autofocusTextAreaElementAttribute] = v;
  }

  int get cols =>
      _setValuesTextAreaElement[colsTextAreaElementAttribute] as int;
  set cols(int v) {
    _setValuesTextAreaElement[colsTextAreaElementAttribute] = v;
  }

  String get defaultValue =>
      _setValuesTextAreaElement[defaultValueTextAreaElementAttribute] as String;
  set defaultValue(String v) {
    _setValuesTextAreaElement[defaultValueTextAreaElementAttribute] = v;
  }

  String get dirName =>
      _setValuesTextAreaElement[dirNameTextAreaElementAttribute] as String;
  set dirName(String v) {
    _setValuesTextAreaElement[dirNameTextAreaElementAttribute] = v;
  }

  bool get disabled =>
      _setValuesTextAreaElement[disabledTextAreaElementAttribute] as bool;
  set disabled(bool v) {
    _setValuesTextAreaElement[disabledTextAreaElementAttribute] = v;
  }

  String get inputMode =>
      _setValuesTextAreaElement[inputModeTextAreaElementAttribute] as String;
  set inputMode(String v) {
    _setValuesTextAreaElement[inputModeTextAreaElementAttribute] = v;
  }

  int get maxLength =>
      _setValuesTextAreaElement[maxLengthTextAreaElementAttribute] as int;
  set maxLength(int v) {
    _setValuesTextAreaElement[maxLengthTextAreaElementAttribute] = v;
  }

  int get minLength =>
      _setValuesTextAreaElement[minLengthTextAreaElementAttribute] as int;
  set minLength(int v) {
    _setValuesTextAreaElement[minLengthTextAreaElementAttribute] = v;
  }

  String get name =>
      _setValuesTextAreaElement[nameTextAreaElementAttribute] as String;
  set name(String v) {
    _setValuesTextAreaElement[nameTextAreaElementAttribute] = v;
  }

  String get placeholder =>
      _setValuesTextAreaElement[placeholderTextAreaElementAttribute] as String;
  set placeholder(String v) {
    _setValuesTextAreaElement[placeholderTextAreaElementAttribute] = v;
  }

  bool get readOnly =>
      _setValuesTextAreaElement[readOnlyTextAreaElementAttribute] as bool;
  set readOnly(bool v) {
    _setValuesTextAreaElement[readOnlyTextAreaElementAttribute] = v;
  }

  bool get required =>
      _setValuesTextAreaElement[requiredTextAreaElementAttribute] as bool;
  set required(bool v) {
    _setValuesTextAreaElement[requiredTextAreaElementAttribute] = v;
  }

  int get rows =>
      _setValuesTextAreaElement[rowsTextAreaElementAttribute] as int;
  set rows(int v) {
    _setValuesTextAreaElement[rowsTextAreaElementAttribute] = v;
  }

  String get selectionDirection =>
      _setValuesTextAreaElement[selectionDirectionTextAreaElementAttribute]
          as String;
  set selectionDirection(String v) {
    _setValuesTextAreaElement[selectionDirectionTextAreaElementAttribute] = v;
  }

  int get selectionEnd =>
      _setValuesTextAreaElement[selectionEndTextAreaElementAttribute] as int;
  set selectionEnd(int v) {
    _setValuesTextAreaElement[selectionEndTextAreaElementAttribute] = v;
  }

  int get selectionStart =>
      _setValuesTextAreaElement[selectionStartTextAreaElementAttribute] as int;
  set selectionStart(int v) {
    _setValuesTextAreaElement[selectionStartTextAreaElementAttribute] = v;
  }

  String get value =>
      _setValuesTextAreaElement[valueTextAreaElementAttribute] as String;
  set value(String v) {
    _setValuesTextAreaElement[valueTextAreaElementAttribute] = v;
  }

  String get wrap =>
      _setValuesTextAreaElement[wrapTextAreaElementAttribute] as String;
  set wrap(String v) {
    _setValuesTextAreaElement[wrapTextAreaElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(TextAreaElement ele) {
    _setValuesTextAreaElement
        .forEach((k, dynamic v) => _updateAttributeTextAreaElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VTextAreaElement prev, TextAreaElement ele) {
    prev._setValuesTextAreaElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesTextAreaElement[k];
      if (v != newValue) _updateAttributeTextAreaElement(ele, k, newValue);
    });
    prev._setValuesTextAreaElement = _setValuesTextAreaElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTextAreaElement(
      TextAreaElement ele, int key, dynamic value) {
    switch (key) {
      case autocapitalizeTextAreaElementAttribute:
        ele.autocapitalize = value as String;
        break;
      case autofocusTextAreaElementAttribute:
        ele.autofocus = value as bool;
        break;
      case colsTextAreaElementAttribute:
        ele.cols = value as int;
        break;
      case defaultValueTextAreaElementAttribute:
        ele.defaultValue = value as String;
        break;
      case dirNameTextAreaElementAttribute:
        ele.dirName = value as String;
        break;
      case disabledTextAreaElementAttribute:
        ele.disabled = value as bool;
        break;
      case inputModeTextAreaElementAttribute:
        ele.inputMode = value as String;
        break;
      case maxLengthTextAreaElementAttribute:
        ele.maxLength = value as int;
        break;
      case minLengthTextAreaElementAttribute:
        ele.minLength = value as int;
        break;
      case nameTextAreaElementAttribute:
        ele.name = value as String;
        break;
      case placeholderTextAreaElementAttribute:
        ele.placeholder = value as String;
        break;
      case readOnlyTextAreaElementAttribute:
        ele.readOnly = value as bool;
        break;
      case requiredTextAreaElementAttribute:
        ele.required = value as bool;
        break;
      case rowsTextAreaElementAttribute:
        ele.rows = value as int;
        break;
      case selectionDirectionTextAreaElementAttribute:
        ele.selectionDirection = value as String;
        break;
      case selectionEndTextAreaElementAttribute:
        ele.selectionEnd = value as int;
        break;
      case selectionStartTextAreaElementAttribute:
        ele.selectionStart = value as int;
        break;
      case valueTextAreaElementAttribute:
        ele.value = value as String;
        break;
      case wrapTextAreaElementAttribute:
        ele.wrap = value as String;
        break;
    }
  }
}

class VTitleElement extends VHtmlElement<TitleElement> {
  @override
  TitleElement elementFactory() => new TitleElement();
}

const defaultValueTrackElementAttribute = 0;
const kindTrackElementAttribute = 1;
const labelTrackElementAttribute = 2;
const srcTrackElementAttribute = 3;
const srclangTrackElementAttribute = 4;

class VTrackElement extends VHtmlElement<TrackElement> {
  @override
  TrackElement elementFactory() => new TrackElement();

  var _setValuesTrackElement = <int, dynamic>{};

  bool get defaultValue =>
      _setValuesTrackElement[defaultValueTrackElementAttribute] as bool;
  set defaultValue(bool v) {
    _setValuesTrackElement[defaultValueTrackElementAttribute] = v;
  }

  String get kind =>
      _setValuesTrackElement[kindTrackElementAttribute] as String;
  set kind(String v) {
    _setValuesTrackElement[kindTrackElementAttribute] = v;
  }

  String get label =>
      _setValuesTrackElement[labelTrackElementAttribute] as String;
  set label(String v) {
    _setValuesTrackElement[labelTrackElementAttribute] = v;
  }

  String get src => _setValuesTrackElement[srcTrackElementAttribute] as String;
  set src(String v) {
    _setValuesTrackElement[srcTrackElementAttribute] = v;
  }

  String get srclang =>
      _setValuesTrackElement[srclangTrackElementAttribute] as String;
  set srclang(String v) {
    _setValuesTrackElement[srclangTrackElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(TrackElement ele) {
    _setValuesTrackElement
        .forEach((k, dynamic v) => _updateAttributeTrackElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VTrackElement prev, TrackElement ele) {
    prev._setValuesTrackElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesTrackElement[k];
      if (v != newValue) _updateAttributeTrackElement(ele, k, newValue);
    });
    prev._setValuesTrackElement = _setValuesTrackElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTrackElement(TrackElement ele, int key, dynamic value) {
    switch (key) {
      case defaultValueTrackElementAttribute:
        ele.defaultValue = value as bool;
        break;
      case kindTrackElementAttribute:
        ele.kind = value as String;
        break;
      case labelTrackElementAttribute:
        ele.label = value as String;
        break;
      case srcTrackElementAttribute:
        ele.src = value as String;
        break;
      case srclangTrackElementAttribute:
        ele.srclang = value as String;
        break;
    }
  }
}

class VUListElement extends VHtmlElement<UListElement> {
  @override
  UListElement elementFactory() => new UListElement();
}

abstract class VUnknownElement<T extends UnknownElement>
    extends VHtmlElement<T> {}

const heightVideoElementAttribute = 0;
const posterVideoElementAttribute = 1;
const widthVideoElementAttribute = 2;

class VVideoElement extends VMediaElement<VideoElement> {
  @override
  VideoElement elementFactory() => new VideoElement();

  var _setValuesVideoElement = <int, dynamic>{};

  int get height => _setValuesVideoElement[heightVideoElementAttribute] as int;
  set height(int v) {
    _setValuesVideoElement[heightVideoElementAttribute] = v;
  }

  String get poster =>
      _setValuesVideoElement[posterVideoElementAttribute] as String;
  set poster(String v) {
    _setValuesVideoElement[posterVideoElementAttribute] = v;
  }

  int get width => _setValuesVideoElement[widthVideoElementAttribute] as int;
  set width(int v) {
    _setValuesVideoElement[widthVideoElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(VideoElement ele) {
    _setValuesVideoElement
        .forEach((k, dynamic v) => _updateAttributeVideoElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VVideoElement prev, VideoElement ele) {
    prev._setValuesVideoElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesVideoElement[k];
      if (v != newValue) _updateAttributeVideoElement(ele, k, newValue);
    });
    prev._setValuesVideoElement = _setValuesVideoElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeVideoElement(VideoElement ele, int key, dynamic value) {
    switch (key) {
      case heightVideoElementAttribute:
        ele.height = value as int;
        break;
      case posterVideoElementAttribute:
        ele.poster = value as String;
        break;
      case widthVideoElementAttribute:
        ele.width = value as int;
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
