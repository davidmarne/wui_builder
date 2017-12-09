import 'dart:html';
import 'package:meta/meta.dart';
import 'wui_builder.dart' show VElement;
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields

abstract class VHtmlElement<T extends HtmlElement> extends VElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VHtmlElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VAnchorElement extends VHtmlElement<AnchorElement> {
  @override
  AnchorElement elementFactory() => new AnchorElement();

  String _download;
  bool _downloadSet = false;
  String get download => _download;
  set download(String v) {
    _download = v;
    _downloadSet = true;
  }

  String _hreflang;
  bool _hreflangSet = false;
  String get hreflang => _hreflang;
  set hreflang(String v) {
    _hreflang = v;
    _hreflangSet = true;
  }

  String _referrerpolicy;
  bool _referrerpolicySet = false;
  String get referrerpolicy => _referrerpolicy;
  set referrerpolicy(String v) {
    _referrerpolicy = v;
    _referrerpolicySet = true;
  }

  String _rel;
  bool _relSet = false;
  String get rel => _rel;
  set rel(String v) {
    _rel = v;
    _relSet = true;
  }

  String _target;
  bool _targetSet = false;
  String get target => _target;
  set target(String v) {
    _target = v;
    _targetSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  set type(String v) {
    _type = v;
    _typeSet = true;
  }

  String _hash;
  bool _hashSet = false;
  String get hash => _hash;
  set hash(String v) {
    _hash = v;
    _hashSet = true;
  }

  String _host;
  bool _hostSet = false;
  String get host => _host;
  set host(String v) {
    _host = v;
    _hostSet = true;
  }

  String _hostname;
  bool _hostnameSet = false;
  String get hostname => _hostname;
  set hostname(String v) {
    _hostname = v;
    _hostnameSet = true;
  }

  String _href;
  bool _hrefSet = false;
  String get href => _href;
  set href(String v) {
    _href = v;
    _hrefSet = true;
  }

  String _password;
  bool _passwordSet = false;
  String get password => _password;
  set password(String v) {
    _password = v;
    _passwordSet = true;
  }

  String _pathname;
  bool _pathnameSet = false;
  String get pathname => _pathname;
  set pathname(String v) {
    _pathname = v;
    _pathnameSet = true;
  }

  String _port;
  bool _portSet = false;
  String get port => _port;
  set port(String v) {
    _port = v;
    _portSet = true;
  }

  String _protocol;
  bool _protocolSet = false;
  String get protocol => _protocol;
  set protocol(String v) {
    _protocol = v;
    _protocolSet = true;
  }

  String _search;
  bool _searchSet = false;
  String get search => _search;
  set search(String v) {
    _search = v;
    _searchSet = true;
  }

  String _username;
  bool _usernameSet = false;
  String get username => _username;
  set username(String v) {
    _username = v;
    _usernameSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(AnchorElement ele) {
    super.applyAttributesToElement(ele);

    if (_downloadSet) ele.download = _download;
    if (_hreflangSet) ele.hreflang = _hreflang;
    if (_referrerpolicySet) ele.referrerpolicy = _referrerpolicy;
    if (_relSet) ele.rel = _rel;
    if (_targetSet) ele.target = _target;
    if (_typeSet) ele.type = _type;
    if (_hashSet) ele.hash = _hash;
    if (_hostSet) ele.host = _host;
    if (_hostnameSet) ele.hostname = _hostname;
    if (_hrefSet) ele.href = _href;
    if (_passwordSet) ele.password = _password;
    if (_pathnameSet) ele.pathname = _pathname;
    if (_portSet) ele.port = _port;
    if (_protocolSet) ele.protocol = _protocol;
    if (_searchSet) ele.search = _search;
    if (_usernameSet) ele.username = _username;
  }

  @override
  @protected
  void updateElementAttributes(VAnchorElement prev, AnchorElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_download != prev._download) {
      ele.download = _download;
      prev.download = _download;
    }
    if (_hreflang != prev._hreflang) {
      ele.hreflang = _hreflang;
      prev.hreflang = _hreflang;
    }
    if (_referrerpolicy != prev._referrerpolicy) {
      ele.referrerpolicy = _referrerpolicy;
      prev.referrerpolicy = _referrerpolicy;
    }
    if (_rel != prev._rel) {
      ele.rel = _rel;
      prev.rel = _rel;
    }
    if (_target != prev._target) {
      ele.target = _target;
      prev.target = _target;
    }
    if (_type != prev._type) {
      ele.type = _type;
      prev.type = _type;
    }
    if (_hash != prev._hash) {
      ele.hash = _hash;
      prev.hash = _hash;
    }
    if (_host != prev._host) {
      ele.host = _host;
      prev.host = _host;
    }
    if (_hostname != prev._hostname) {
      ele.hostname = _hostname;
      prev.hostname = _hostname;
    }
    if (_href != prev._href) {
      ele.href = _href;
      prev.href = _href;
    }
    if (_password != prev._password) {
      ele.password = _password;
      prev.password = _password;
    }
    if (_pathname != prev._pathname) {
      ele.pathname = _pathname;
      prev.pathname = _pathname;
    }
    if (_port != prev._port) {
      ele.port = _port;
      prev.port = _port;
    }
    if (_protocol != prev._protocol) {
      ele.protocol = _protocol;
      prev.protocol = _protocol;
    }
    if (_search != prev._search) {
      ele.search = _search;
      prev.search = _search;
    }
    if (_username != prev._username) {
      ele.username = _username;
      prev.username = _username;
    }
  }
}

class VAreaElement extends VHtmlElement<AreaElement> {
  @override
  AreaElement elementFactory() => new AreaElement();

  String _alt;
  bool _altSet = false;
  String get alt => _alt;
  set alt(String v) {
    _alt = v;
    _altSet = true;
  }

  String _coords;
  bool _coordsSet = false;
  String get coords => _coords;
  set coords(String v) {
    _coords = v;
    _coordsSet = true;
  }

  String _referrerpolicy;
  bool _referrerpolicySet = false;
  String get referrerpolicy => _referrerpolicy;
  set referrerpolicy(String v) {
    _referrerpolicy = v;
    _referrerpolicySet = true;
  }

  String _shape;
  bool _shapeSet = false;
  String get shape => _shape;
  set shape(String v) {
    _shape = v;
    _shapeSet = true;
  }

  String _target;
  bool _targetSet = false;
  String get target => _target;
  set target(String v) {
    _target = v;
    _targetSet = true;
  }

  String _hash;
  bool _hashSet = false;
  String get hash => _hash;
  set hash(String v) {
    _hash = v;
    _hashSet = true;
  }

  String _host;
  bool _hostSet = false;
  String get host => _host;
  set host(String v) {
    _host = v;
    _hostSet = true;
  }

  String _hostname;
  bool _hostnameSet = false;
  String get hostname => _hostname;
  set hostname(String v) {
    _hostname = v;
    _hostnameSet = true;
  }

  String _href;
  bool _hrefSet = false;
  String get href => _href;
  set href(String v) {
    _href = v;
    _hrefSet = true;
  }

  String _password;
  bool _passwordSet = false;
  String get password => _password;
  set password(String v) {
    _password = v;
    _passwordSet = true;
  }

  String _pathname;
  bool _pathnameSet = false;
  String get pathname => _pathname;
  set pathname(String v) {
    _pathname = v;
    _pathnameSet = true;
  }

  String _port;
  bool _portSet = false;
  String get port => _port;
  set port(String v) {
    _port = v;
    _portSet = true;
  }

  String _protocol;
  bool _protocolSet = false;
  String get protocol => _protocol;
  set protocol(String v) {
    _protocol = v;
    _protocolSet = true;
  }

  String _search;
  bool _searchSet = false;
  String get search => _search;
  set search(String v) {
    _search = v;
    _searchSet = true;
  }

  String _username;
  bool _usernameSet = false;
  String get username => _username;
  set username(String v) {
    _username = v;
    _usernameSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(AreaElement ele) {
    super.applyAttributesToElement(ele);

    if (_altSet) ele.alt = _alt;
    if (_coordsSet) ele.coords = _coords;
    if (_referrerpolicySet) ele.referrerpolicy = _referrerpolicy;
    if (_shapeSet) ele.shape = _shape;
    if (_targetSet) ele.target = _target;
    if (_hashSet) ele.hash = _hash;
    if (_hostSet) ele.host = _host;
    if (_hostnameSet) ele.hostname = _hostname;
    if (_hrefSet) ele.href = _href;
    if (_passwordSet) ele.password = _password;
    if (_pathnameSet) ele.pathname = _pathname;
    if (_portSet) ele.port = _port;
    if (_protocolSet) ele.protocol = _protocol;
    if (_searchSet) ele.search = _search;
    if (_usernameSet) ele.username = _username;
  }

  @override
  @protected
  void updateElementAttributes(VAreaElement prev, AreaElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_alt != prev._alt) {
      ele.alt = _alt;
      prev.alt = _alt;
    }
    if (_coords != prev._coords) {
      ele.coords = _coords;
      prev.coords = _coords;
    }
    if (_referrerpolicy != prev._referrerpolicy) {
      ele.referrerpolicy = _referrerpolicy;
      prev.referrerpolicy = _referrerpolicy;
    }
    if (_shape != prev._shape) {
      ele.shape = _shape;
      prev.shape = _shape;
    }
    if (_target != prev._target) {
      ele.target = _target;
      prev.target = _target;
    }
    if (_hash != prev._hash) {
      ele.hash = _hash;
      prev.hash = _hash;
    }
    if (_host != prev._host) {
      ele.host = _host;
      prev.host = _host;
    }
    if (_hostname != prev._hostname) {
      ele.hostname = _hostname;
      prev.hostname = _hostname;
    }
    if (_href != prev._href) {
      ele.href = _href;
      prev.href = _href;
    }
    if (_password != prev._password) {
      ele.password = _password;
      prev.password = _password;
    }
    if (_pathname != prev._pathname) {
      ele.pathname = _pathname;
      prev.pathname = _pathname;
    }
    if (_port != prev._port) {
      ele.port = _port;
      prev.port = _port;
    }
    if (_protocol != prev._protocol) {
      ele.protocol = _protocol;
      prev.protocol = _protocol;
    }
    if (_search != prev._search) {
      ele.search = _search;
      prev.search = _search;
    }
    if (_username != prev._username) {
      ele.username = _username;
      prev.username = _username;
    }
  }
}

class VAudioElement extends VMediaElement<AudioElement> {
  @override
  AudioElement elementFactory() => new AudioElement();

  @override
  @protected
  void applyAttributesToElement(AudioElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VAudioElement prev, AudioElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VBRElement extends VHtmlElement<BRElement> {
  @override
  BRElement elementFactory() => new BRElement();

  @override
  @protected
  void applyAttributesToElement(BRElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VBRElement prev, BRElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VBaseElement extends VHtmlElement<BaseElement> {
  @override
  BaseElement elementFactory() => new BaseElement();

  String _href;
  bool _hrefSet = false;
  String get href => _href;
  set href(String v) {
    _href = v;
    _hrefSet = true;
  }

  String _target;
  bool _targetSet = false;
  String get target => _target;
  set target(String v) {
    _target = v;
    _targetSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(BaseElement ele) {
    super.applyAttributesToElement(ele);

    if (_hrefSet) ele.href = _href;
    if (_targetSet) ele.target = _target;
  }

  @override
  @protected
  void updateElementAttributes(VBaseElement prev, BaseElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_href != prev._href) {
      ele.href = _href;
      prev.href = _href;
    }
    if (_target != prev._target) {
      ele.target = _target;
      prev.target = _target;
    }
  }
}

class VBodyElement extends VHtmlElement<BodyElement> {
  @override
  BodyElement elementFactory() => new BodyElement();

  @override
  @protected
  void applyAttributesToElement(BodyElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VBodyElement prev, BodyElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VButtonElement extends VHtmlElement<ButtonElement> {
  @override
  ButtonElement elementFactory() => new ButtonElement();

  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _formAction;
  bool _formActionSet = false;
  String get formAction => _formAction;
  set formAction(String v) {
    _formAction = v;
    _formActionSet = true;
  }

  String _formEnctype;
  bool _formEnctypeSet = false;
  String get formEnctype => _formEnctype;
  set formEnctype(String v) {
    _formEnctype = v;
    _formEnctypeSet = true;
  }

  String _formMethod;
  bool _formMethodSet = false;
  String get formMethod => _formMethod;
  set formMethod(String v) {
    _formMethod = v;
    _formMethodSet = true;
  }

  bool _formNoValidate;
  bool _formNoValidateSet = false;
  bool get formNoValidate => _formNoValidate;
  set formNoValidate(bool v) {
    _formNoValidate = v;
    _formNoValidateSet = true;
  }

  String _formTarget;
  bool _formTargetSet = false;
  String get formTarget => _formTarget;
  set formTarget(String v) {
    _formTarget = v;
    _formTargetSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  set type(String v) {
    _type = v;
    _typeSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  set value(String v) {
    _value = v;
    _valueSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(ButtonElement ele) {
    super.applyAttributesToElement(ele);

    if (_autofocusSet) ele.autofocus = _autofocus;
    if (_disabledSet) ele.disabled = _disabled;
    if (_formActionSet) ele.formAction = _formAction;
    if (_formEnctypeSet) ele.formEnctype = _formEnctype;
    if (_formMethodSet) ele.formMethod = _formMethod;
    if (_formNoValidateSet) ele.formNoValidate = _formNoValidate;
    if (_formTargetSet) ele.formTarget = _formTarget;
    if (_nameSet) ele.name = _name;
    if (_typeSet) ele.type = _type;
    if (_valueSet) ele.value = _value;
  }

  @override
  @protected
  void updateElementAttributes(VButtonElement prev, ButtonElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_autofocus != prev._autofocus) {
      ele.autofocus = _autofocus;
      prev.autofocus = _autofocus;
    }
    if (_disabled != prev._disabled) {
      ele.disabled = _disabled;
      prev.disabled = _disabled;
    }
    if (_formAction != prev._formAction) {
      ele.formAction = _formAction;
      prev.formAction = _formAction;
    }
    if (_formEnctype != prev._formEnctype) {
      ele.formEnctype = _formEnctype;
      prev.formEnctype = _formEnctype;
    }
    if (_formMethod != prev._formMethod) {
      ele.formMethod = _formMethod;
      prev.formMethod = _formMethod;
    }
    if (_formNoValidate != prev._formNoValidate) {
      ele.formNoValidate = _formNoValidate;
      prev.formNoValidate = _formNoValidate;
    }
    if (_formTarget != prev._formTarget) {
      ele.formTarget = _formTarget;
      prev.formTarget = _formTarget;
    }
    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
    if (_type != prev._type) {
      ele.type = _type;
      prev.type = _type;
    }
    if (_value != prev._value) {
      ele.value = _value;
      prev.value = _value;
    }
  }
}

class VCanvasElement extends VHtmlElement<CanvasElement> {
  @override
  CanvasElement elementFactory() => new CanvasElement();

  int _height;
  bool _heightSet = false;
  int get height => _height;
  set height(int v) {
    _height = v;
    _heightSet = true;
  }

  int _width;
  bool _widthSet = false;
  int get width => _width;
  set width(int v) {
    _width = v;
    _widthSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(CanvasElement ele) {
    super.applyAttributesToElement(ele);

    if (_heightSet) ele.height = _height;
    if (_widthSet) ele.width = _width;
  }

  @override
  @protected
  void updateElementAttributes(VCanvasElement prev, CanvasElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_height != prev._height) {
      ele.height = _height;
      prev.height = _height;
    }
    if (_width != prev._width) {
      ele.width = _width;
      prev.width = _width;
    }
  }
}

class VContentElement extends VHtmlElement<ContentElement> {
  @override
  ContentElement elementFactory() => new ContentElement();

  String _select;
  bool _selectSet = false;
  String get select => _select;
  set select(String v) {
    _select = v;
    _selectSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(ContentElement ele) {
    super.applyAttributesToElement(ele);

    if (_selectSet) ele.select = _select;
  }

  @override
  @protected
  void updateElementAttributes(VContentElement prev, ContentElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_select != prev._select) {
      ele.select = _select;
      prev.select = _select;
    }
  }
}

class VDListElement extends VHtmlElement<DListElement> {
  @override
  DListElement elementFactory() => new DListElement();

  @override
  @protected
  void applyAttributesToElement(DListElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VDListElement prev, DListElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VDataListElement extends VHtmlElement<DataListElement> {
  @override
  DataListElement elementFactory() => new DataListElement();

  @override
  @protected
  void applyAttributesToElement(DataListElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VDataListElement prev, DataListElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VDetailsElement extends VHtmlElement<DetailsElement> {
  @override
  DetailsElement elementFactory() => new DetailsElement();

  bool _open;
  bool _openSet = false;
  bool get open => _open;
  set open(bool v) {
    _open = v;
    _openSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(DetailsElement ele) {
    super.applyAttributesToElement(ele);

    if (_openSet) ele.open = _open;
  }

  @override
  @protected
  void updateElementAttributes(VDetailsElement prev, DetailsElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_open != prev._open) {
      ele.open = _open;
      prev.open = _open;
    }
  }
}

abstract class VDialogElement<T extends DialogElement> extends VHtmlElement<T> {
  bool _open;
  bool _openSet = false;
  bool get open => _open;
  set open(bool v) {
    _open = v;
    _openSet = true;
  }

  String _returnValue;
  bool _returnValueSet = false;
  String get returnValue => _returnValue;
  set returnValue(String v) {
    _returnValue = v;
    _returnValueSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);

    if (_openSet) ele.open = _open;
    if (_returnValueSet) ele.returnValue = _returnValue;
  }

  @override
  @protected
  void updateElementAttributes(covariant VDialogElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);

    if (_open != prev._open) {
      ele.open = _open;
      prev.open = _open;
    }
    if (_returnValue != prev._returnValue) {
      ele.returnValue = _returnValue;
      prev.returnValue = _returnValue;
    }
  }
}

class VDivElement extends VHtmlElement<DivElement> {
  @override
  DivElement elementFactory() => new DivElement();

  @override
  @protected
  void applyAttributesToElement(DivElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VDivElement prev, DivElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class Va extends VElement<Element> {
  @override
  Element elementFactory() => new Element.a();
}

class Varticle extends VElement<Element> {
  @override
  Element elementFactory() => new Element.article();
}

class Vaside extends VElement<Element> {
  @override
  Element elementFactory() => new Element.aside();
}

class Vaudio extends VElement<Element> {
  @override
  Element elementFactory() => new Element.audio();
}

class Vbr extends VElement<Element> {
  @override
  Element elementFactory() => new Element.br();
}

class Vcanvas extends VElement<Element> {
  @override
  Element elementFactory() => new Element.canvas();
}

class Vdiv extends VElement<Element> {
  @override
  Element elementFactory() => new Element.div();
}

class Vfooter extends VElement<Element> {
  @override
  Element elementFactory() => new Element.footer();
}

class Vheader extends VElement<Element> {
  @override
  Element elementFactory() => new Element.header();
}

class Vhr extends VElement<Element> {
  @override
  Element elementFactory() => new Element.hr();
}

class Viframe extends VElement<Element> {
  @override
  Element elementFactory() => new Element.iframe();
}

class Vimg extends VElement<Element> {
  @override
  Element elementFactory() => new Element.img();
}

class Vli extends VElement<Element> {
  @override
  Element elementFactory() => new Element.li();
}

class Vnav extends VElement<Element> {
  @override
  Element elementFactory() => new Element.nav();
}

class Vol extends VElement<Element> {
  @override
  Element elementFactory() => new Element.ol();
}

class Voption extends VElement<Element> {
  @override
  Element elementFactory() => new Element.option();
}

class Vp extends VElement<Element> {
  @override
  Element elementFactory() => new Element.p();
}

class Vpre extends VElement<Element> {
  @override
  Element elementFactory() => new Element.pre();
}

class Vsection extends VElement<Element> {
  @override
  Element elementFactory() => new Element.section();
}

class Vselect extends VElement<Element> {
  @override
  Element elementFactory() => new Element.select();
}

class Vspan extends VElement<Element> {
  @override
  Element elementFactory() => new Element.span();
}

class Vsvg extends VElement<Element> {
  @override
  Element elementFactory() => new Element.svg();
}

class Vtable extends VElement<Element> {
  @override
  Element elementFactory() => new Element.table();
}

class Vtd extends VElement<Element> {
  @override
  Element elementFactory() => new Element.td();
}

class Vtextarea extends VElement<Element> {
  @override
  Element elementFactory() => new Element.textarea();
}

class Vth extends VElement<Element> {
  @override
  Element elementFactory() => new Element.th();
}

class Vtr extends VElement<Element> {
  @override
  Element elementFactory() => new Element.tr();
}

class Vul extends VElement<Element> {
  @override
  Element elementFactory() => new Element.ul();
}

class Vvideo extends VElement<Element> {
  @override
  Element elementFactory() => new Element.video();
}

class VEmbedElement extends VHtmlElement<EmbedElement> {
  @override
  EmbedElement elementFactory() => new EmbedElement();

  String _height;
  bool _heightSet = false;
  String get height => _height;
  set height(String v) {
    _height = v;
    _heightSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  set type(String v) {
    _type = v;
    _typeSet = true;
  }

  String _width;
  bool _widthSet = false;
  String get width => _width;
  set width(String v) {
    _width = v;
    _widthSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(EmbedElement ele) {
    super.applyAttributesToElement(ele);

    if (_heightSet) ele.height = _height;
    if (_nameSet) ele.name = _name;
    if (_srcSet) ele.src = _src;
    if (_typeSet) ele.type = _type;
    if (_widthSet) ele.width = _width;
  }

  @override
  @protected
  void updateElementAttributes(VEmbedElement prev, EmbedElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_height != prev._height) {
      ele.height = _height;
      prev.height = _height;
    }
    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
    if (_src != prev._src) {
      ele.src = _src;
      prev.src = _src;
    }
    if (_type != prev._type) {
      ele.type = _type;
      prev.type = _type;
    }
    if (_width != prev._width) {
      ele.width = _width;
      prev.width = _width;
    }
  }
}

class VFieldSetElement extends VHtmlElement<FieldSetElement> {
  @override
  FieldSetElement elementFactory() => new FieldSetElement();

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(FieldSetElement ele) {
    super.applyAttributesToElement(ele);

    if (_disabledSet) ele.disabled = _disabled;
    if (_nameSet) ele.name = _name;
  }

  @override
  @protected
  void updateElementAttributes(VFieldSetElement prev, FieldSetElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_disabled != prev._disabled) {
      ele.disabled = _disabled;
      prev.disabled = _disabled;
    }
    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
  }
}

class VFormElement extends VHtmlElement<FormElement> {
  @override
  FormElement elementFactory() => new FormElement();

  String _acceptCharset;
  bool _acceptCharsetSet = false;
  String get acceptCharset => _acceptCharset;
  set acceptCharset(String v) {
    _acceptCharset = v;
    _acceptCharsetSet = true;
  }

  String _action;
  bool _actionSet = false;
  String get action => _action;
  set action(String v) {
    _action = v;
    _actionSet = true;
  }

  String _autocomplete;
  bool _autocompleteSet = false;
  String get autocomplete => _autocomplete;
  set autocomplete(String v) {
    _autocomplete = v;
    _autocompleteSet = true;
  }

  String _encoding;
  bool _encodingSet = false;
  String get encoding => _encoding;
  set encoding(String v) {
    _encoding = v;
    _encodingSet = true;
  }

  String _enctype;
  bool _enctypeSet = false;
  String get enctype => _enctype;
  set enctype(String v) {
    _enctype = v;
    _enctypeSet = true;
  }

  String _method;
  bool _methodSet = false;
  String get method => _method;
  set method(String v) {
    _method = v;
    _methodSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  bool _noValidate;
  bool _noValidateSet = false;
  bool get noValidate => _noValidate;
  set noValidate(bool v) {
    _noValidate = v;
    _noValidateSet = true;
  }

  String _target;
  bool _targetSet = false;
  String get target => _target;
  set target(String v) {
    _target = v;
    _targetSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(FormElement ele) {
    super.applyAttributesToElement(ele);

    if (_acceptCharsetSet) ele.acceptCharset = _acceptCharset;
    if (_actionSet) ele.action = _action;
    if (_autocompleteSet) ele.autocomplete = _autocomplete;
    if (_encodingSet) ele.encoding = _encoding;
    if (_enctypeSet) ele.enctype = _enctype;
    if (_methodSet) ele.method = _method;
    if (_nameSet) ele.name = _name;
    if (_noValidateSet) ele.noValidate = _noValidate;
    if (_targetSet) ele.target = _target;
  }

  @override
  @protected
  void updateElementAttributes(VFormElement prev, FormElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_acceptCharset != prev._acceptCharset) {
      ele.acceptCharset = _acceptCharset;
      prev.acceptCharset = _acceptCharset;
    }
    if (_action != prev._action) {
      ele.action = _action;
      prev.action = _action;
    }
    if (_autocomplete != prev._autocomplete) {
      ele.autocomplete = _autocomplete;
      prev.autocomplete = _autocomplete;
    }
    if (_encoding != prev._encoding) {
      ele.encoding = _encoding;
      prev.encoding = _encoding;
    }
    if (_enctype != prev._enctype) {
      ele.enctype = _enctype;
      prev.enctype = _enctype;
    }
    if (_method != prev._method) {
      ele.method = _method;
      prev.method = _method;
    }
    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
    if (_noValidate != prev._noValidate) {
      ele.noValidate = _noValidate;
      prev.noValidate = _noValidate;
    }
    if (_target != prev._target) {
      ele.target = _target;
      prev.target = _target;
    }
  }
}

class VHRElement extends VHtmlElement<HRElement> {
  @override
  HRElement elementFactory() => new HRElement();

  String _color;
  bool _colorSet = false;
  String get color => _color;
  set color(String v) {
    _color = v;
    _colorSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(HRElement ele) {
    super.applyAttributesToElement(ele);

    if (_colorSet) ele.color = _color;
  }

  @override
  @protected
  void updateElementAttributes(VHRElement prev, HRElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_color != prev._color) {
      ele.color = _color;
      prev.color = _color;
    }
  }
}

class VHeadElement extends VHtmlElement<HeadElement> {
  @override
  HeadElement elementFactory() => new HeadElement();

  @override
  @protected
  void applyAttributesToElement(HeadElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VHeadElement prev, HeadElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VHeadingElement<T extends HeadingElement>
    extends VHtmlElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VHeadingElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class Vh1 extends VElement<HeadingElement> {
  @override
  HeadingElement elementFactory() => new HeadingElement.h1();
}

class Vh2 extends VElement<HeadingElement> {
  @override
  HeadingElement elementFactory() => new HeadingElement.h2();
}

class Vh3 extends VElement<HeadingElement> {
  @override
  HeadingElement elementFactory() => new HeadingElement.h3();
}

class Vh4 extends VElement<HeadingElement> {
  @override
  HeadingElement elementFactory() => new HeadingElement.h4();
}

class Vh5 extends VElement<HeadingElement> {
  @override
  HeadingElement elementFactory() => new HeadingElement.h5();
}

class Vh6 extends VElement<HeadingElement> {
  @override
  HeadingElement elementFactory() => new HeadingElement.h6();
}

class VHtmlHtmlElement extends VHtmlElement<HtmlHtmlElement> {
  @override
  HtmlHtmlElement elementFactory() => new HtmlHtmlElement();

  @override
  @protected
  void applyAttributesToElement(HtmlHtmlElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VHtmlHtmlElement prev, HtmlHtmlElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VIFrameElement extends VHtmlElement<IFrameElement> {
  @override
  IFrameElement elementFactory() => new IFrameElement();

  bool _allowFullscreen;
  bool _allowFullscreenSet = false;
  bool get allowFullscreen => _allowFullscreen;
  set allowFullscreen(bool v) {
    _allowFullscreen = v;
    _allowFullscreenSet = true;
  }

  String _height;
  bool _heightSet = false;
  String get height => _height;
  set height(String v) {
    _height = v;
    _heightSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _referrerpolicy;
  bool _referrerpolicySet = false;
  String get referrerpolicy => _referrerpolicy;
  set referrerpolicy(String v) {
    _referrerpolicy = v;
    _referrerpolicySet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _srcdoc;
  bool _srcdocSet = false;
  String get srcdoc => _srcdoc;
  set srcdoc(String v) {
    _srcdoc = v;
    _srcdocSet = true;
  }

  String _width;
  bool _widthSet = false;
  String get width => _width;
  set width(String v) {
    _width = v;
    _widthSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(IFrameElement ele) {
    super.applyAttributesToElement(ele);

    if (_allowFullscreenSet) ele.allowFullscreen = _allowFullscreen;
    if (_heightSet) ele.height = _height;
    if (_nameSet) ele.name = _name;
    if (_referrerpolicySet) ele.referrerpolicy = _referrerpolicy;
    if (_srcSet) ele.src = _src;
    if (_srcdocSet) ele.srcdoc = _srcdoc;
    if (_widthSet) ele.width = _width;
  }

  @override
  @protected
  void updateElementAttributes(VIFrameElement prev, IFrameElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_allowFullscreen != prev._allowFullscreen) {
      ele.allowFullscreen = _allowFullscreen;
      prev.allowFullscreen = _allowFullscreen;
    }
    if (_height != prev._height) {
      ele.height = _height;
      prev.height = _height;
    }
    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
    if (_referrerpolicy != prev._referrerpolicy) {
      ele.referrerpolicy = _referrerpolicy;
      prev.referrerpolicy = _referrerpolicy;
    }
    if (_src != prev._src) {
      ele.src = _src;
      prev.src = _src;
    }
    if (_srcdoc != prev._srcdoc) {
      ele.srcdoc = _srcdoc;
      prev.srcdoc = _srcdoc;
    }
    if (_width != prev._width) {
      ele.width = _width;
      prev.width = _width;
    }
  }
}

class VImageElement extends VHtmlElement<ImageElement> {
  @override
  ImageElement elementFactory() => new ImageElement();

  String _alt;
  bool _altSet = false;
  String get alt => _alt;
  set alt(String v) {
    _alt = v;
    _altSet = true;
  }

  String _crossOrigin;
  bool _crossOriginSet = false;
  String get crossOrigin => _crossOrigin;
  set crossOrigin(String v) {
    _crossOrigin = v;
    _crossOriginSet = true;
  }

  int _height;
  bool _heightSet = false;
  int get height => _height;
  set height(int v) {
    _height = v;
    _heightSet = true;
  }

  bool _isMap;
  bool _isMapSet = false;
  bool get isMap => _isMap;
  set isMap(bool v) {
    _isMap = v;
    _isMapSet = true;
  }

  String _referrerpolicy;
  bool _referrerpolicySet = false;
  String get referrerpolicy => _referrerpolicy;
  set referrerpolicy(String v) {
    _referrerpolicy = v;
    _referrerpolicySet = true;
  }

  String _sizes;
  bool _sizesSet = false;
  String get sizes => _sizes;
  set sizes(String v) {
    _sizes = v;
    _sizesSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _srcset;
  bool _srcsetSet = false;
  String get srcset => _srcset;
  set srcset(String v) {
    _srcset = v;
    _srcsetSet = true;
  }

  String _useMap;
  bool _useMapSet = false;
  String get useMap => _useMap;
  set useMap(String v) {
    _useMap = v;
    _useMapSet = true;
  }

  int _width;
  bool _widthSet = false;
  int get width => _width;
  set width(int v) {
    _width = v;
    _widthSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(ImageElement ele) {
    super.applyAttributesToElement(ele);

    if (_altSet) ele.alt = _alt;
    if (_crossOriginSet) ele.crossOrigin = _crossOrigin;
    if (_heightSet) ele.height = _height;
    if (_isMapSet) ele.isMap = _isMap;
    if (_referrerpolicySet) ele.referrerpolicy = _referrerpolicy;
    if (_sizesSet) ele.sizes = _sizes;
    if (_srcSet) ele.src = _src;
    if (_srcsetSet) ele.srcset = _srcset;
    if (_useMapSet) ele.useMap = _useMap;
    if (_widthSet) ele.width = _width;
  }

  @override
  @protected
  void updateElementAttributes(VImageElement prev, ImageElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_alt != prev._alt) {
      ele.alt = _alt;
      prev.alt = _alt;
    }
    if (_crossOrigin != prev._crossOrigin) {
      ele.crossOrigin = _crossOrigin;
      prev.crossOrigin = _crossOrigin;
    }
    if (_height != prev._height) {
      ele.height = _height;
      prev.height = _height;
    }
    if (_isMap != prev._isMap) {
      ele.isMap = _isMap;
      prev.isMap = _isMap;
    }
    if (_referrerpolicy != prev._referrerpolicy) {
      ele.referrerpolicy = _referrerpolicy;
      prev.referrerpolicy = _referrerpolicy;
    }
    if (_sizes != prev._sizes) {
      ele.sizes = _sizes;
      prev.sizes = _sizes;
    }
    if (_src != prev._src) {
      ele.src = _src;
      prev.src = _src;
    }
    if (_srcset != prev._srcset) {
      ele.srcset = _srcset;
      prev.srcset = _srcset;
    }
    if (_useMap != prev._useMap) {
      ele.useMap = _useMap;
      prev.useMap = _useMap;
    }
    if (_width != prev._width) {
      ele.width = _width;
      prev.width = _width;
    }
  }
}

class VInputElement extends VHtmlElement<InputElement> {
  @override
  InputElement elementFactory() => new InputElement();

  String _accept;
  bool _acceptSet = false;
  String get accept => _accept;
  set accept(String v) {
    _accept = v;
    _acceptSet = true;
  }

  String _alt;
  bool _altSet = false;
  String get alt => _alt;
  set alt(String v) {
    _alt = v;
    _altSet = true;
  }

  String _autocapitalize;
  bool _autocapitalizeSet = false;
  String get autocapitalize => _autocapitalize;
  set autocapitalize(String v) {
    _autocapitalize = v;
    _autocapitalizeSet = true;
  }

  String _autocomplete;
  bool _autocompleteSet = false;
  String get autocomplete => _autocomplete;
  set autocomplete(String v) {
    _autocomplete = v;
    _autocompleteSet = true;
  }

  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  bool _capture;
  bool _captureSet = false;
  bool get capture => _capture;
  set capture(bool v) {
    _capture = v;
    _captureSet = true;
  }

  bool _checked;
  bool _checkedSet = false;
  bool get checked => _checked;
  set checked(bool v) {
    _checked = v;
    _checkedSet = true;
  }

  bool _defaultChecked;
  bool _defaultCheckedSet = false;
  bool get defaultChecked => _defaultChecked;
  set defaultChecked(bool v) {
    _defaultChecked = v;
    _defaultCheckedSet = true;
  }

  String _defaultValue;
  bool _defaultValueSet = false;
  String get defaultValue => _defaultValue;
  set defaultValue(String v) {
    _defaultValue = v;
    _defaultValueSet = true;
  }

  String _dirName;
  bool _dirNameSet = false;
  String get dirName => _dirName;
  set dirName(String v) {
    _dirName = v;
    _dirNameSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  List<File> _files;
  bool _filesSet = false;
  List<File> get files => _files;
  set files(List<File> v) {
    _files = v;
    _filesSet = true;
  }

  String _formAction;
  bool _formActionSet = false;
  String get formAction => _formAction;
  set formAction(String v) {
    _formAction = v;
    _formActionSet = true;
  }

  String _formEnctype;
  bool _formEnctypeSet = false;
  String get formEnctype => _formEnctype;
  set formEnctype(String v) {
    _formEnctype = v;
    _formEnctypeSet = true;
  }

  String _formMethod;
  bool _formMethodSet = false;
  String get formMethod => _formMethod;
  set formMethod(String v) {
    _formMethod = v;
    _formMethodSet = true;
  }

  bool _formNoValidate;
  bool _formNoValidateSet = false;
  bool get formNoValidate => _formNoValidate;
  set formNoValidate(bool v) {
    _formNoValidate = v;
    _formNoValidateSet = true;
  }

  String _formTarget;
  bool _formTargetSet = false;
  String get formTarget => _formTarget;
  set formTarget(String v) {
    _formTarget = v;
    _formTargetSet = true;
  }

  int _height;
  bool _heightSet = false;
  int get height => _height;
  set height(int v) {
    _height = v;
    _heightSet = true;
  }

  bool _incremental;
  bool _incrementalSet = false;
  bool get incremental => _incremental;
  set incremental(bool v) {
    _incremental = v;
    _incrementalSet = true;
  }

  bool _indeterminate;
  bool _indeterminateSet = false;
  bool get indeterminate => _indeterminate;
  set indeterminate(bool v) {
    _indeterminate = v;
    _indeterminateSet = true;
  }

  String _inputMode;
  bool _inputModeSet = false;
  String get inputMode => _inputMode;
  set inputMode(String v) {
    _inputMode = v;
    _inputModeSet = true;
  }

  String _max;
  bool _maxSet = false;
  String get max => _max;
  set max(String v) {
    _max = v;
    _maxSet = true;
  }

  int _maxLength;
  bool _maxLengthSet = false;
  int get maxLength => _maxLength;
  set maxLength(int v) {
    _maxLength = v;
    _maxLengthSet = true;
  }

  String _min;
  bool _minSet = false;
  String get min => _min;
  set min(String v) {
    _min = v;
    _minSet = true;
  }

  int _minLength;
  bool _minLengthSet = false;
  int get minLength => _minLength;
  set minLength(int v) {
    _minLength = v;
    _minLengthSet = true;
  }

  bool _multiple;
  bool _multipleSet = false;
  bool get multiple => _multiple;
  set multiple(bool v) {
    _multiple = v;
    _multipleSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _pattern;
  bool _patternSet = false;
  String get pattern => _pattern;
  set pattern(String v) {
    _pattern = v;
    _patternSet = true;
  }

  String _placeholder;
  bool _placeholderSet = false;
  String get placeholder => _placeholder;
  set placeholder(String v) {
    _placeholder = v;
    _placeholderSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  String _selectionDirection;
  bool _selectionDirectionSet = false;
  String get selectionDirection => _selectionDirection;
  set selectionDirection(String v) {
    _selectionDirection = v;
    _selectionDirectionSet = true;
  }

  int _selectionEnd;
  bool _selectionEndSet = false;
  int get selectionEnd => _selectionEnd;
  set selectionEnd(int v) {
    _selectionEnd = v;
    _selectionEndSet = true;
  }

  int _selectionStart;
  bool _selectionStartSet = false;
  int get selectionStart => _selectionStart;
  set selectionStart(int v) {
    _selectionStart = v;
    _selectionStartSet = true;
  }

  int _size;
  bool _sizeSet = false;
  int get size => _size;
  set size(int v) {
    _size = v;
    _sizeSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _step;
  bool _stepSet = false;
  String get step => _step;
  set step(String v) {
    _step = v;
    _stepSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  set type(String v) {
    _type = v;
    _typeSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  set value(String v) {
    _value = v;
    _valueSet = true;
  }

  num _valueAsNumber;
  bool _valueAsNumberSet = false;
  num get valueAsNumber => _valueAsNumber;
  set valueAsNumber(num v) {
    _valueAsNumber = v;
    _valueAsNumberSet = true;
  }

  bool _directory;
  bool _directorySet = false;
  bool get directory => _directory;
  set directory(bool v) {
    _directory = v;
    _directorySet = true;
  }

  int _width;
  bool _widthSet = false;
  int get width => _width;
  set width(int v) {
    _width = v;
    _widthSet = true;
  }

  DateTime _valueAsDate;
  bool _valueAsDateSet = false;
  DateTime get valueAsDate => _valueAsDate;
  set valueAsDate(DateTime v) {
    _valueAsDate = v;
    _valueAsDateSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(InputElement ele) {
    super.applyAttributesToElement(ele);

    if (_acceptSet) ele.accept = _accept;
    if (_altSet) ele.alt = _alt;
    if (_autocapitalizeSet) ele.autocapitalize = _autocapitalize;
    if (_autocompleteSet) ele.autocomplete = _autocomplete;
    if (_autofocusSet) ele.autofocus = _autofocus;
    if (_captureSet) ele.capture = _capture;
    if (_checkedSet) ele.checked = _checked;
    if (_defaultCheckedSet) ele.defaultChecked = _defaultChecked;
    if (_defaultValueSet) ele.defaultValue = _defaultValue;
    if (_dirNameSet) ele.dirName = _dirName;
    if (_disabledSet) ele.disabled = _disabled;
    if (_filesSet) ele.files = _files;
    if (_formActionSet) ele.formAction = _formAction;
    if (_formEnctypeSet) ele.formEnctype = _formEnctype;
    if (_formMethodSet) ele.formMethod = _formMethod;
    if (_formNoValidateSet) ele.formNoValidate = _formNoValidate;
    if (_formTargetSet) ele.formTarget = _formTarget;
    if (_heightSet) ele.height = _height;
    if (_incrementalSet) ele.incremental = _incremental;
    if (_indeterminateSet) ele.indeterminate = _indeterminate;
    if (_inputModeSet) ele.inputMode = _inputMode;
    if (_maxSet) ele.max = _max;
    if (_maxLengthSet) ele.maxLength = _maxLength;
    if (_minSet) ele.min = _min;
    if (_minLengthSet) ele.minLength = _minLength;
    if (_multipleSet) ele.multiple = _multiple;
    if (_nameSet) ele.name = _name;
    if (_patternSet) ele.pattern = _pattern;
    if (_placeholderSet) ele.placeholder = _placeholder;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
    if (_selectionDirectionSet) ele.selectionDirection = _selectionDirection;
    if (_selectionEndSet) ele.selectionEnd = _selectionEnd;
    if (_selectionStartSet) ele.selectionStart = _selectionStart;
    if (_sizeSet) ele.size = _size;
    if (_srcSet) ele.src = _src;
    if (_stepSet) ele.step = _step;
    if (_typeSet) ele.type = _type;
    if (_valueSet) ele.value = _value;
    if (_valueAsNumberSet) ele.valueAsNumber = _valueAsNumber;
    if (_directorySet) ele.directory = _directory;
    if (_widthSet) ele.width = _width;
    if (_valueAsDateSet) ele.valueAsDate = _valueAsDate;
  }

  @override
  @protected
  void updateElementAttributes(VInputElement prev, InputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_accept != prev._accept) {
      ele.accept = _accept;
      prev.accept = _accept;
    }
    if (_alt != prev._alt) {
      ele.alt = _alt;
      prev.alt = _alt;
    }
    if (_autocapitalize != prev._autocapitalize) {
      ele.autocapitalize = _autocapitalize;
      prev.autocapitalize = _autocapitalize;
    }
    if (_autocomplete != prev._autocomplete) {
      ele.autocomplete = _autocomplete;
      prev.autocomplete = _autocomplete;
    }
    if (_autofocus != prev._autofocus) {
      ele.autofocus = _autofocus;
      prev.autofocus = _autofocus;
    }
    if (_capture != prev._capture) {
      ele.capture = _capture;
      prev.capture = _capture;
    }
    if (_checked != prev._checked) {
      ele.checked = _checked;
      prev.checked = _checked;
    }
    if (_defaultChecked != prev._defaultChecked) {
      ele.defaultChecked = _defaultChecked;
      prev.defaultChecked = _defaultChecked;
    }
    if (_defaultValue != prev._defaultValue) {
      ele.defaultValue = _defaultValue;
      prev.defaultValue = _defaultValue;
    }
    if (_dirName != prev._dirName) {
      ele.dirName = _dirName;
      prev.dirName = _dirName;
    }
    if (_disabled != prev._disabled) {
      ele.disabled = _disabled;
      prev.disabled = _disabled;
    }
    if (_files != prev._files) {
      ele.files = _files;
      prev.files = _files;
    }
    if (_formAction != prev._formAction) {
      ele.formAction = _formAction;
      prev.formAction = _formAction;
    }
    if (_formEnctype != prev._formEnctype) {
      ele.formEnctype = _formEnctype;
      prev.formEnctype = _formEnctype;
    }
    if (_formMethod != prev._formMethod) {
      ele.formMethod = _formMethod;
      prev.formMethod = _formMethod;
    }
    if (_formNoValidate != prev._formNoValidate) {
      ele.formNoValidate = _formNoValidate;
      prev.formNoValidate = _formNoValidate;
    }
    if (_formTarget != prev._formTarget) {
      ele.formTarget = _formTarget;
      prev.formTarget = _formTarget;
    }
    if (_height != prev._height) {
      ele.height = _height;
      prev.height = _height;
    }
    if (_incremental != prev._incremental) {
      ele.incremental = _incremental;
      prev.incremental = _incremental;
    }
    if (_indeterminate != prev._indeterminate) {
      ele.indeterminate = _indeterminate;
      prev.indeterminate = _indeterminate;
    }
    if (_inputMode != prev._inputMode) {
      ele.inputMode = _inputMode;
      prev.inputMode = _inputMode;
    }
    if (_max != prev._max) {
      ele.max = _max;
      prev.max = _max;
    }
    if (_maxLength != prev._maxLength) {
      ele.maxLength = _maxLength;
      prev.maxLength = _maxLength;
    }
    if (_min != prev._min) {
      ele.min = _min;
      prev.min = _min;
    }
    if (_minLength != prev._minLength) {
      ele.minLength = _minLength;
      prev.minLength = _minLength;
    }
    if (_multiple != prev._multiple) {
      ele.multiple = _multiple;
      prev.multiple = _multiple;
    }
    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
    if (_pattern != prev._pattern) {
      ele.pattern = _pattern;
      prev.pattern = _pattern;
    }
    if (_placeholder != prev._placeholder) {
      ele.placeholder = _placeholder;
      prev.placeholder = _placeholder;
    }
    if (_readOnly != prev._readOnly) {
      ele.readOnly = _readOnly;
      prev.readOnly = _readOnly;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
    if (_selectionDirection != prev._selectionDirection) {
      ele.selectionDirection = _selectionDirection;
      prev.selectionDirection = _selectionDirection;
    }
    if (_selectionEnd != prev._selectionEnd) {
      ele.selectionEnd = _selectionEnd;
      prev.selectionEnd = _selectionEnd;
    }
    if (_selectionStart != prev._selectionStart) {
      ele.selectionStart = _selectionStart;
      prev.selectionStart = _selectionStart;
    }
    if (_size != prev._size) {
      ele.size = _size;
      prev.size = _size;
    }
    if (_src != prev._src) {
      ele.src = _src;
      prev.src = _src;
    }
    if (_step != prev._step) {
      ele.step = _step;
      prev.step = _step;
    }
    if (_type != prev._type) {
      ele.type = _type;
      prev.type = _type;
    }
    if (_value != prev._value) {
      ele.value = _value;
      prev.value = _value;
    }
    if (_valueAsNumber != prev._valueAsNumber) {
      ele.valueAsNumber = _valueAsNumber;
      prev.valueAsNumber = _valueAsNumber;
    }
    if (_directory != prev._directory) {
      ele.directory = _directory;
      prev.directory = _directory;
    }
    if (_width != prev._width) {
      ele.width = _width;
      prev.width = _width;
    }
    if (_valueAsDate != prev._valueAsDate) {
      ele.valueAsDate = _valueAsDate;
      prev.valueAsDate = _valueAsDate;
    }
  }
}

abstract class VInputElementBase<T extends InputElementBase>
    extends VElement<T> {
  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  bool _incremental;
  bool _incrementalSet = false;
  bool get incremental => _incremental;
  set incremental(bool v) {
    _incremental = v;
    _incrementalSet = true;
  }

  bool _indeterminate;
  bool _indeterminateSet = false;
  bool get indeterminate => _indeterminate;
  set indeterminate(bool v) {
    _indeterminate = v;
    _indeterminateSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  set value(String v) {
    _value = v;
    _valueSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);

    if (_autofocusSet) ele.autofocus = _autofocus;
    if (_disabledSet) ele.disabled = _disabled;
    if (_incrementalSet) ele.incremental = _incremental;
    if (_indeterminateSet) ele.indeterminate = _indeterminate;
    if (_nameSet) ele.name = _name;
    if (_valueSet) ele.value = _value;
  }

  @override
  @protected
  void updateElementAttributes(covariant VInputElementBase<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);

    if (_autofocus != prev._autofocus) {
      ele.autofocus = _autofocus;
      prev.autofocus = _autofocus;
    }
    if (_disabled != prev._disabled) {
      ele.disabled = _disabled;
      prev.disabled = _disabled;
    }
    if (_incremental != prev._incremental) {
      ele.incremental = _incremental;
      prev.incremental = _incremental;
    }
    if (_indeterminate != prev._indeterminate) {
      ele.indeterminate = _indeterminate;
      prev.indeterminate = _indeterminate;
    }
    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
    if (_value != prev._value) {
      ele.value = _value;
      prev.value = _value;
    }
  }
}

class VHiddenInputElement extends VInputElementBase<HiddenInputElement> {
  @override
  HiddenInputElement elementFactory() => new HiddenInputElement();

  @override
  @protected
  void applyAttributesToElement(HiddenInputElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VHiddenInputElement prev, HiddenInputElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VTextInputElementBase<T extends TextInputElementBase>
    extends VInputElementBase<T> {
  String _autocomplete;
  bool _autocompleteSet = false;
  String get autocomplete => _autocomplete;
  set autocomplete(String v) {
    _autocomplete = v;
    _autocompleteSet = true;
  }

  int _maxLength;
  bool _maxLengthSet = false;
  int get maxLength => _maxLength;
  set maxLength(int v) {
    _maxLength = v;
    _maxLengthSet = true;
  }

  String _pattern;
  bool _patternSet = false;
  String get pattern => _pattern;
  set pattern(String v) {
    _pattern = v;
    _patternSet = true;
  }

  String _placeholder;
  bool _placeholderSet = false;
  String get placeholder => _placeholder;
  set placeholder(String v) {
    _placeholder = v;
    _placeholderSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  int _size;
  bool _sizeSet = false;
  int get size => _size;
  set size(int v) {
    _size = v;
    _sizeSet = true;
  }

  String _selectionDirection;
  bool _selectionDirectionSet = false;
  String get selectionDirection => _selectionDirection;
  set selectionDirection(String v) {
    _selectionDirection = v;
    _selectionDirectionSet = true;
  }

  int _selectionEnd;
  bool _selectionEndSet = false;
  int get selectionEnd => _selectionEnd;
  set selectionEnd(int v) {
    _selectionEnd = v;
    _selectionEndSet = true;
  }

  int _selectionStart;
  bool _selectionStartSet = false;
  int get selectionStart => _selectionStart;
  set selectionStart(int v) {
    _selectionStart = v;
    _selectionStartSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);

    if (_autocompleteSet) ele.autocomplete = _autocomplete;
    if (_maxLengthSet) ele.maxLength = _maxLength;
    if (_patternSet) ele.pattern = _pattern;
    if (_placeholderSet) ele.placeholder = _placeholder;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
    if (_sizeSet) ele.size = _size;
    if (_selectionDirectionSet) ele.selectionDirection = _selectionDirection;
    if (_selectionEndSet) ele.selectionEnd = _selectionEnd;
    if (_selectionStartSet) ele.selectionStart = _selectionStart;
  }

  @override
  @protected
  void updateElementAttributes(covariant VTextInputElementBase<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);

    if (_autocomplete != prev._autocomplete) {
      ele.autocomplete = _autocomplete;
      prev.autocomplete = _autocomplete;
    }
    if (_maxLength != prev._maxLength) {
      ele.maxLength = _maxLength;
      prev.maxLength = _maxLength;
    }
    if (_pattern != prev._pattern) {
      ele.pattern = _pattern;
      prev.pattern = _pattern;
    }
    if (_placeholder != prev._placeholder) {
      ele.placeholder = _placeholder;
      prev.placeholder = _placeholder;
    }
    if (_readOnly != prev._readOnly) {
      ele.readOnly = _readOnly;
      prev.readOnly = _readOnly;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
    if (_size != prev._size) {
      ele.size = _size;
      prev.size = _size;
    }
    if (_selectionDirection != prev._selectionDirection) {
      ele.selectionDirection = _selectionDirection;
      prev.selectionDirection = _selectionDirection;
    }
    if (_selectionEnd != prev._selectionEnd) {
      ele.selectionEnd = _selectionEnd;
      prev.selectionEnd = _selectionEnd;
    }
    if (_selectionStart != prev._selectionStart) {
      ele.selectionStart = _selectionStart;
      prev.selectionStart = _selectionStart;
    }
  }
}

class VSearchInputElement extends VTextInputElementBase<SearchInputElement> {
  @override
  SearchInputElement elementFactory() => new SearchInputElement();

  String _dirName;
  bool _dirNameSet = false;
  String get dirName => _dirName;
  set dirName(String v) {
    _dirName = v;
    _dirNameSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(SearchInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_dirNameSet) ele.dirName = _dirName;
  }

  @override
  @protected
  void updateElementAttributes(
      VSearchInputElement prev, SearchInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_dirName != prev._dirName) {
      ele.dirName = _dirName;
      prev.dirName = _dirName;
    }
  }
}

class VTextInputElement extends VTextInputElementBase<TextInputElement> {
  @override
  TextInputElement elementFactory() => new TextInputElement();

  String _dirName;
  bool _dirNameSet = false;
  String get dirName => _dirName;
  set dirName(String v) {
    _dirName = v;
    _dirNameSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(TextInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_dirNameSet) ele.dirName = _dirName;
  }

  @override
  @protected
  void updateElementAttributes(VTextInputElement prev, TextInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_dirName != prev._dirName) {
      ele.dirName = _dirName;
      prev.dirName = _dirName;
    }
  }
}

class VUrlInputElement extends VTextInputElementBase<UrlInputElement> {
  @override
  UrlInputElement elementFactory() => new UrlInputElement();

  @override
  @protected
  void applyAttributesToElement(UrlInputElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VUrlInputElement prev, UrlInputElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VTelephoneInputElement
    extends VTextInputElementBase<TelephoneInputElement> {
  @override
  TelephoneInputElement elementFactory() => new TelephoneInputElement();

  @override
  @protected
  void applyAttributesToElement(TelephoneInputElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VTelephoneInputElement prev, TelephoneInputElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VEmailInputElement extends VTextInputElementBase<EmailInputElement> {
  @override
  EmailInputElement elementFactory() => new EmailInputElement();

  String _autocomplete;
  bool _autocompleteSet = false;
  String get autocomplete => _autocomplete;
  set autocomplete(String v) {
    _autocomplete = v;
    _autocompleteSet = true;
  }

  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  int _maxLength;
  bool _maxLengthSet = false;
  int get maxLength => _maxLength;
  set maxLength(int v) {
    _maxLength = v;
    _maxLengthSet = true;
  }

  bool _multiple;
  bool _multipleSet = false;
  bool get multiple => _multiple;
  set multiple(bool v) {
    _multiple = v;
    _multipleSet = true;
  }

  String _pattern;
  bool _patternSet = false;
  String get pattern => _pattern;
  set pattern(String v) {
    _pattern = v;
    _patternSet = true;
  }

  String _placeholder;
  bool _placeholderSet = false;
  String get placeholder => _placeholder;
  set placeholder(String v) {
    _placeholder = v;
    _placeholderSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  int _size;
  bool _sizeSet = false;
  int get size => _size;
  set size(int v) {
    _size = v;
    _sizeSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(EmailInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_autocompleteSet) ele.autocomplete = _autocomplete;
    if (_autofocusSet) ele.autofocus = _autofocus;
    if (_maxLengthSet) ele.maxLength = _maxLength;
    if (_multipleSet) ele.multiple = _multiple;
    if (_patternSet) ele.pattern = _pattern;
    if (_placeholderSet) ele.placeholder = _placeholder;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
    if (_sizeSet) ele.size = _size;
  }

  @override
  @protected
  void updateElementAttributes(VEmailInputElement prev, EmailInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_autocomplete != prev._autocomplete) {
      ele.autocomplete = _autocomplete;
      prev.autocomplete = _autocomplete;
    }
    if (_autofocus != prev._autofocus) {
      ele.autofocus = _autofocus;
      prev.autofocus = _autofocus;
    }
    if (_maxLength != prev._maxLength) {
      ele.maxLength = _maxLength;
      prev.maxLength = _maxLength;
    }
    if (_multiple != prev._multiple) {
      ele.multiple = _multiple;
      prev.multiple = _multiple;
    }
    if (_pattern != prev._pattern) {
      ele.pattern = _pattern;
      prev.pattern = _pattern;
    }
    if (_placeholder != prev._placeholder) {
      ele.placeholder = _placeholder;
      prev.placeholder = _placeholder;
    }
    if (_readOnly != prev._readOnly) {
      ele.readOnly = _readOnly;
      prev.readOnly = _readOnly;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
    if (_size != prev._size) {
      ele.size = _size;
      prev.size = _size;
    }
  }
}

class VPasswordInputElement
    extends VTextInputElementBase<PasswordInputElement> {
  @override
  PasswordInputElement elementFactory() => new PasswordInputElement();

  @override
  @protected
  void applyAttributesToElement(PasswordInputElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VPasswordInputElement prev, PasswordInputElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VRangeInputElementBase<T extends RangeInputElementBase>
    extends VInputElementBase<T> {
  String _max;
  bool _maxSet = false;
  String get max => _max;
  set max(String v) {
    _max = v;
    _maxSet = true;
  }

  String _min;
  bool _minSet = false;
  String get min => _min;
  set min(String v) {
    _min = v;
    _minSet = true;
  }

  String _step;
  bool _stepSet = false;
  String get step => _step;
  set step(String v) {
    _step = v;
    _stepSet = true;
  }

  num _valueAsNumber;
  bool _valueAsNumberSet = false;
  num get valueAsNumber => _valueAsNumber;
  set valueAsNumber(num v) {
    _valueAsNumber = v;
    _valueAsNumberSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);

    if (_maxSet) ele.max = _max;
    if (_minSet) ele.min = _min;
    if (_stepSet) ele.step = _step;
    if (_valueAsNumberSet) ele.valueAsNumber = _valueAsNumber;
  }

  @override
  @protected
  void updateElementAttributes(
      covariant VRangeInputElementBase<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);

    if (_max != prev._max) {
      ele.max = _max;
      prev.max = _max;
    }
    if (_min != prev._min) {
      ele.min = _min;
      prev.min = _min;
    }
    if (_step != prev._step) {
      ele.step = _step;
      prev.step = _step;
    }
    if (_valueAsNumber != prev._valueAsNumber) {
      ele.valueAsNumber = _valueAsNumber;
      prev.valueAsNumber = _valueAsNumber;
    }
  }
}

class VDateInputElement extends VRangeInputElementBase<DateInputElement> {
  @override
  DateInputElement elementFactory() => new DateInputElement();

  DateTime _valueAsDate;
  bool _valueAsDateSet = false;
  DateTime get valueAsDate => _valueAsDate;
  set valueAsDate(DateTime v) {
    _valueAsDate = v;
    _valueAsDateSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(DateInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_valueAsDateSet) ele.valueAsDate = _valueAsDate;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
  }

  @override
  @protected
  void updateElementAttributes(VDateInputElement prev, DateInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_valueAsDate != prev._valueAsDate) {
      ele.valueAsDate = _valueAsDate;
      prev.valueAsDate = _valueAsDate;
    }
    if (_readOnly != prev._readOnly) {
      ele.readOnly = _readOnly;
      prev.readOnly = _readOnly;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
  }
}

class VMonthInputElement extends VRangeInputElementBase<MonthInputElement> {
  @override
  MonthInputElement elementFactory() => new MonthInputElement();

  DateTime _valueAsDate;
  bool _valueAsDateSet = false;
  DateTime get valueAsDate => _valueAsDate;
  set valueAsDate(DateTime v) {
    _valueAsDate = v;
    _valueAsDateSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(MonthInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_valueAsDateSet) ele.valueAsDate = _valueAsDate;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
  }

  @override
  @protected
  void updateElementAttributes(VMonthInputElement prev, MonthInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_valueAsDate != prev._valueAsDate) {
      ele.valueAsDate = _valueAsDate;
      prev.valueAsDate = _valueAsDate;
    }
    if (_readOnly != prev._readOnly) {
      ele.readOnly = _readOnly;
      prev.readOnly = _readOnly;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
  }
}

class VWeekInputElement extends VRangeInputElementBase<WeekInputElement> {
  @override
  WeekInputElement elementFactory() => new WeekInputElement();

  DateTime _valueAsDate;
  bool _valueAsDateSet = false;
  DateTime get valueAsDate => _valueAsDate;
  set valueAsDate(DateTime v) {
    _valueAsDate = v;
    _valueAsDateSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(WeekInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_valueAsDateSet) ele.valueAsDate = _valueAsDate;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
  }

  @override
  @protected
  void updateElementAttributes(VWeekInputElement prev, WeekInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_valueAsDate != prev._valueAsDate) {
      ele.valueAsDate = _valueAsDate;
      prev.valueAsDate = _valueAsDate;
    }
    if (_readOnly != prev._readOnly) {
      ele.readOnly = _readOnly;
      prev.readOnly = _readOnly;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
  }
}

class VTimeInputElement extends VRangeInputElementBase<TimeInputElement> {
  @override
  TimeInputElement elementFactory() => new TimeInputElement();

  DateTime _valueAsDate;
  bool _valueAsDateSet = false;
  DateTime get valueAsDate => _valueAsDate;
  set valueAsDate(DateTime v) {
    _valueAsDate = v;
    _valueAsDateSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(TimeInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_valueAsDateSet) ele.valueAsDate = _valueAsDate;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
  }

  @override
  @protected
  void updateElementAttributes(VTimeInputElement prev, TimeInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_valueAsDate != prev._valueAsDate) {
      ele.valueAsDate = _valueAsDate;
      prev.valueAsDate = _valueAsDate;
    }
    if (_readOnly != prev._readOnly) {
      ele.readOnly = _readOnly;
      prev.readOnly = _readOnly;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
  }
}

class VLocalDateTimeInputElement
    extends VRangeInputElementBase<LocalDateTimeInputElement> {
  @override
  LocalDateTimeInputElement elementFactory() => new LocalDateTimeInputElement();

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(LocalDateTimeInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
  }

  @override
  @protected
  void updateElementAttributes(
      VLocalDateTimeInputElement prev, LocalDateTimeInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_readOnly != prev._readOnly) {
      ele.readOnly = _readOnly;
      prev.readOnly = _readOnly;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
  }
}

class VNumberInputElement extends VRangeInputElementBase<NumberInputElement> {
  @override
  NumberInputElement elementFactory() => new NumberInputElement();

  String _placeholder;
  bool _placeholderSet = false;
  String get placeholder => _placeholder;
  set placeholder(String v) {
    _placeholder = v;
    _placeholderSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(NumberInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_placeholderSet) ele.placeholder = _placeholder;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
  }

  @override
  @protected
  void updateElementAttributes(
      VNumberInputElement prev, NumberInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_placeholder != prev._placeholder) {
      ele.placeholder = _placeholder;
      prev.placeholder = _placeholder;
    }
    if (_readOnly != prev._readOnly) {
      ele.readOnly = _readOnly;
      prev.readOnly = _readOnly;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
  }
}

class VRangeInputElement extends VRangeInputElementBase<RangeInputElement> {
  @override
  RangeInputElement elementFactory() => new RangeInputElement();

  @override
  @protected
  void applyAttributesToElement(RangeInputElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VRangeInputElement prev, RangeInputElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VCheckboxInputElement extends VInputElementBase<CheckboxInputElement> {
  @override
  CheckboxInputElement elementFactory() => new CheckboxInputElement();

  bool _checked;
  bool _checkedSet = false;
  bool get checked => _checked;
  set checked(bool v) {
    _checked = v;
    _checkedSet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(CheckboxInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_checkedSet) ele.checked = _checked;
    if (_requiredSet) ele.required = _required;
  }

  @override
  @protected
  void updateElementAttributes(
      VCheckboxInputElement prev, CheckboxInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_checked != prev._checked) {
      ele.checked = _checked;
      prev.checked = _checked;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
  }
}

class VRadioButtonInputElement
    extends VInputElementBase<RadioButtonInputElement> {
  @override
  RadioButtonInputElement elementFactory() => new RadioButtonInputElement();

  bool _checked;
  bool _checkedSet = false;
  bool get checked => _checked;
  set checked(bool v) {
    _checked = v;
    _checkedSet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(RadioButtonInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_checkedSet) ele.checked = _checked;
    if (_requiredSet) ele.required = _required;
  }

  @override
  @protected
  void updateElementAttributes(
      VRadioButtonInputElement prev, RadioButtonInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_checked != prev._checked) {
      ele.checked = _checked;
      prev.checked = _checked;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
  }
}

class VFileUploadInputElement
    extends VInputElementBase<FileUploadInputElement> {
  @override
  FileUploadInputElement elementFactory() => new FileUploadInputElement();

  String _accept;
  bool _acceptSet = false;
  String get accept => _accept;
  set accept(String v) {
    _accept = v;
    _acceptSet = true;
  }

  bool _multiple;
  bool _multipleSet = false;
  bool get multiple => _multiple;
  set multiple(bool v) {
    _multiple = v;
    _multipleSet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  List<File> _files;
  bool _filesSet = false;
  List<File> get files => _files;
  set files(List<File> v) {
    _files = v;
    _filesSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(FileUploadInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_acceptSet) ele.accept = _accept;
    if (_multipleSet) ele.multiple = _multiple;
    if (_requiredSet) ele.required = _required;
    if (_filesSet) ele.files = _files;
  }

  @override
  @protected
  void updateElementAttributes(
      VFileUploadInputElement prev, FileUploadInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_accept != prev._accept) {
      ele.accept = _accept;
      prev.accept = _accept;
    }
    if (_multiple != prev._multiple) {
      ele.multiple = _multiple;
      prev.multiple = _multiple;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
    if (_files != prev._files) {
      ele.files = _files;
      prev.files = _files;
    }
  }
}

class VSubmitButtonInputElement
    extends VInputElementBase<SubmitButtonInputElement> {
  @override
  SubmitButtonInputElement elementFactory() => new SubmitButtonInputElement();

  String _formAction;
  bool _formActionSet = false;
  String get formAction => _formAction;
  set formAction(String v) {
    _formAction = v;
    _formActionSet = true;
  }

  String _formEnctype;
  bool _formEnctypeSet = false;
  String get formEnctype => _formEnctype;
  set formEnctype(String v) {
    _formEnctype = v;
    _formEnctypeSet = true;
  }

  String _formMethod;
  bool _formMethodSet = false;
  String get formMethod => _formMethod;
  set formMethod(String v) {
    _formMethod = v;
    _formMethodSet = true;
  }

  bool _formNoValidate;
  bool _formNoValidateSet = false;
  bool get formNoValidate => _formNoValidate;
  set formNoValidate(bool v) {
    _formNoValidate = v;
    _formNoValidateSet = true;
  }

  String _formTarget;
  bool _formTargetSet = false;
  String get formTarget => _formTarget;
  set formTarget(String v) {
    _formTarget = v;
    _formTargetSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(SubmitButtonInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_formActionSet) ele.formAction = _formAction;
    if (_formEnctypeSet) ele.formEnctype = _formEnctype;
    if (_formMethodSet) ele.formMethod = _formMethod;
    if (_formNoValidateSet) ele.formNoValidate = _formNoValidate;
    if (_formTargetSet) ele.formTarget = _formTarget;
  }

  @override
  @protected
  void updateElementAttributes(
      VSubmitButtonInputElement prev, SubmitButtonInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_formAction != prev._formAction) {
      ele.formAction = _formAction;
      prev.formAction = _formAction;
    }
    if (_formEnctype != prev._formEnctype) {
      ele.formEnctype = _formEnctype;
      prev.formEnctype = _formEnctype;
    }
    if (_formMethod != prev._formMethod) {
      ele.formMethod = _formMethod;
      prev.formMethod = _formMethod;
    }
    if (_formNoValidate != prev._formNoValidate) {
      ele.formNoValidate = _formNoValidate;
      prev.formNoValidate = _formNoValidate;
    }
    if (_formTarget != prev._formTarget) {
      ele.formTarget = _formTarget;
      prev.formTarget = _formTarget;
    }
  }
}

class VImageButtonInputElement
    extends VInputElementBase<ImageButtonInputElement> {
  @override
  ImageButtonInputElement elementFactory() => new ImageButtonInputElement();

  String _alt;
  bool _altSet = false;
  String get alt => _alt;
  set alt(String v) {
    _alt = v;
    _altSet = true;
  }

  String _formAction;
  bool _formActionSet = false;
  String get formAction => _formAction;
  set formAction(String v) {
    _formAction = v;
    _formActionSet = true;
  }

  String _formEnctype;
  bool _formEnctypeSet = false;
  String get formEnctype => _formEnctype;
  set formEnctype(String v) {
    _formEnctype = v;
    _formEnctypeSet = true;
  }

  String _formMethod;
  bool _formMethodSet = false;
  String get formMethod => _formMethod;
  set formMethod(String v) {
    _formMethod = v;
    _formMethodSet = true;
  }

  bool _formNoValidate;
  bool _formNoValidateSet = false;
  bool get formNoValidate => _formNoValidate;
  set formNoValidate(bool v) {
    _formNoValidate = v;
    _formNoValidateSet = true;
  }

  String _formTarget;
  bool _formTargetSet = false;
  String get formTarget => _formTarget;
  set formTarget(String v) {
    _formTarget = v;
    _formTargetSet = true;
  }

  int _height;
  bool _heightSet = false;
  int get height => _height;
  set height(int v) {
    _height = v;
    _heightSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  set src(String v) {
    _src = v;
    _srcSet = true;
  }

  int _width;
  bool _widthSet = false;
  int get width => _width;
  set width(int v) {
    _width = v;
    _widthSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(ImageButtonInputElement ele) {
    super.applyAttributesToElement(ele);

    if (_altSet) ele.alt = _alt;
    if (_formActionSet) ele.formAction = _formAction;
    if (_formEnctypeSet) ele.formEnctype = _formEnctype;
    if (_formMethodSet) ele.formMethod = _formMethod;
    if (_formNoValidateSet) ele.formNoValidate = _formNoValidate;
    if (_formTargetSet) ele.formTarget = _formTarget;
    if (_heightSet) ele.height = _height;
    if (_srcSet) ele.src = _src;
    if (_widthSet) ele.width = _width;
  }

  @override
  @protected
  void updateElementAttributes(
      VImageButtonInputElement prev, ImageButtonInputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_alt != prev._alt) {
      ele.alt = _alt;
      prev.alt = _alt;
    }
    if (_formAction != prev._formAction) {
      ele.formAction = _formAction;
      prev.formAction = _formAction;
    }
    if (_formEnctype != prev._formEnctype) {
      ele.formEnctype = _formEnctype;
      prev.formEnctype = _formEnctype;
    }
    if (_formMethod != prev._formMethod) {
      ele.formMethod = _formMethod;
      prev.formMethod = _formMethod;
    }
    if (_formNoValidate != prev._formNoValidate) {
      ele.formNoValidate = _formNoValidate;
      prev.formNoValidate = _formNoValidate;
    }
    if (_formTarget != prev._formTarget) {
      ele.formTarget = _formTarget;
      prev.formTarget = _formTarget;
    }
    if (_height != prev._height) {
      ele.height = _height;
      prev.height = _height;
    }
    if (_src != prev._src) {
      ele.src = _src;
      prev.src = _src;
    }
    if (_width != prev._width) {
      ele.width = _width;
      prev.width = _width;
    }
  }
}

class VResetButtonInputElement
    extends VInputElementBase<ResetButtonInputElement> {
  @override
  ResetButtonInputElement elementFactory() => new ResetButtonInputElement();

  @override
  @protected
  void applyAttributesToElement(ResetButtonInputElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VResetButtonInputElement prev, ResetButtonInputElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VButtonInputElement extends VInputElementBase<ButtonInputElement> {
  @override
  ButtonInputElement elementFactory() => new ButtonInputElement();

  @override
  @protected
  void applyAttributesToElement(ButtonInputElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VButtonInputElement prev, ButtonInputElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VKeygenElement extends VHtmlElement<KeygenElement> {
  @override
  KeygenElement elementFactory() => new KeygenElement();

  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  String _challenge;
  bool _challengeSet = false;
  String get challenge => _challenge;
  set challenge(String v) {
    _challenge = v;
    _challengeSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _keytype;
  bool _keytypeSet = false;
  String get keytype => _keytype;
  set keytype(String v) {
    _keytype = v;
    _keytypeSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(KeygenElement ele) {
    super.applyAttributesToElement(ele);

    if (_autofocusSet) ele.autofocus = _autofocus;
    if (_challengeSet) ele.challenge = _challenge;
    if (_disabledSet) ele.disabled = _disabled;
    if (_keytypeSet) ele.keytype = _keytype;
    if (_nameSet) ele.name = _name;
  }

  @override
  @protected
  void updateElementAttributes(VKeygenElement prev, KeygenElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_autofocus != prev._autofocus) {
      ele.autofocus = _autofocus;
      prev.autofocus = _autofocus;
    }
    if (_challenge != prev._challenge) {
      ele.challenge = _challenge;
      prev.challenge = _challenge;
    }
    if (_disabled != prev._disabled) {
      ele.disabled = _disabled;
      prev.disabled = _disabled;
    }
    if (_keytype != prev._keytype) {
      ele.keytype = _keytype;
      prev.keytype = _keytype;
    }
    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
  }
}

class VLIElement extends VHtmlElement<LIElement> {
  @override
  LIElement elementFactory() => new LIElement();

  int _value;
  bool _valueSet = false;
  int get value => _value;
  set value(int v) {
    _value = v;
    _valueSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(LIElement ele) {
    super.applyAttributesToElement(ele);

    if (_valueSet) ele.value = _value;
  }

  @override
  @protected
  void updateElementAttributes(VLIElement prev, LIElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_value != prev._value) {
      ele.value = _value;
      prev.value = _value;
    }
  }
}

class VLabelElement extends VHtmlElement<LabelElement> {
  @override
  LabelElement elementFactory() => new LabelElement();

  String _htmlFor;
  bool _htmlForSet = false;
  String get htmlFor => _htmlFor;
  set htmlFor(String v) {
    _htmlFor = v;
    _htmlForSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(LabelElement ele) {
    super.applyAttributesToElement(ele);

    if (_htmlForSet) ele.htmlFor = _htmlFor;
  }

  @override
  @protected
  void updateElementAttributes(VLabelElement prev, LabelElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_htmlFor != prev._htmlFor) {
      ele.htmlFor = _htmlFor;
      prev.htmlFor = _htmlFor;
    }
  }
}

class VLegendElement extends VHtmlElement<LegendElement> {
  @override
  LegendElement elementFactory() => new LegendElement();

  @override
  @protected
  void applyAttributesToElement(LegendElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VLegendElement prev, LegendElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VLinkElement extends VHtmlElement<LinkElement> {
  @override
  LinkElement elementFactory() => new LinkElement();

  String _as;
  bool _asSet = false;
  String get as => _as;
  set as(String v) {
    _as = v;
    _asSet = true;
  }

  String _crossOrigin;
  bool _crossOriginSet = false;
  String get crossOrigin => _crossOrigin;
  set crossOrigin(String v) {
    _crossOrigin = v;
    _crossOriginSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _href;
  bool _hrefSet = false;
  String get href => _href;
  set href(String v) {
    _href = v;
    _hrefSet = true;
  }

  String _hreflang;
  bool _hreflangSet = false;
  String get hreflang => _hreflang;
  set hreflang(String v) {
    _hreflang = v;
    _hreflangSet = true;
  }

  String _integrity;
  bool _integritySet = false;
  String get integrity => _integrity;
  set integrity(String v) {
    _integrity = v;
    _integritySet = true;
  }

  String _media;
  bool _mediaSet = false;
  String get media => _media;
  set media(String v) {
    _media = v;
    _mediaSet = true;
  }

  String _rel;
  bool _relSet = false;
  String get rel => _rel;
  set rel(String v) {
    _rel = v;
    _relSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(LinkElement ele) {
    super.applyAttributesToElement(ele);

    if (_asSet) ele.as = _as;
    if (_crossOriginSet) ele.crossOrigin = _crossOrigin;
    if (_disabledSet) ele.disabled = _disabled;
    if (_hrefSet) ele.href = _href;
    if (_hreflangSet) ele.hreflang = _hreflang;
    if (_integritySet) ele.integrity = _integrity;
    if (_mediaSet) ele.media = _media;
    if (_relSet) ele.rel = _rel;
    if (_typeSet) ele.type = _type;
  }

  @override
  @protected
  void updateElementAttributes(VLinkElement prev, LinkElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_as != prev._as) {
      ele.as = _as;
      prev.as = _as;
    }
    if (_crossOrigin != prev._crossOrigin) {
      ele.crossOrigin = _crossOrigin;
      prev.crossOrigin = _crossOrigin;
    }
    if (_disabled != prev._disabled) {
      ele.disabled = _disabled;
      prev.disabled = _disabled;
    }
    if (_href != prev._href) {
      ele.href = _href;
      prev.href = _href;
    }
    if (_hreflang != prev._hreflang) {
      ele.hreflang = _hreflang;
      prev.hreflang = _hreflang;
    }
    if (_integrity != prev._integrity) {
      ele.integrity = _integrity;
      prev.integrity = _integrity;
    }
    if (_media != prev._media) {
      ele.media = _media;
      prev.media = _media;
    }
    if (_rel != prev._rel) {
      ele.rel = _rel;
      prev.rel = _rel;
    }
    if (_type != prev._type) {
      ele.type = _type;
      prev.type = _type;
    }
  }
}

class VMapElement extends VHtmlElement<MapElement> {
  @override
  MapElement elementFactory() => new MapElement();

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(MapElement ele) {
    super.applyAttributesToElement(ele);

    if (_nameSet) ele.name = _name;
  }

  @override
  @protected
  void updateElementAttributes(VMapElement prev, MapElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
  }
}

abstract class VMediaElement<T extends MediaElement> extends VHtmlElement<T> {
  bool _autoplay;
  bool _autoplaySet = false;
  bool get autoplay => _autoplay;
  set autoplay(bool v) {
    _autoplay = v;
    _autoplaySet = true;
  }

  bool _controls;
  bool _controlsSet = false;
  bool get controls => _controls;
  set controls(bool v) {
    _controls = v;
    _controlsSet = true;
  }

  String _crossOrigin;
  bool _crossOriginSet = false;
  String get crossOrigin => _crossOrigin;
  set crossOrigin(String v) {
    _crossOrigin = v;
    _crossOriginSet = true;
  }

  num _currentTime;
  bool _currentTimeSet = false;
  num get currentTime => _currentTime;
  set currentTime(num v) {
    _currentTime = v;
    _currentTimeSet = true;
  }

  bool _defaultMuted;
  bool _defaultMutedSet = false;
  bool get defaultMuted => _defaultMuted;
  set defaultMuted(bool v) {
    _defaultMuted = v;
    _defaultMutedSet = true;
  }

  num _defaultPlaybackRate;
  bool _defaultPlaybackRateSet = false;
  num get defaultPlaybackRate => _defaultPlaybackRate;
  set defaultPlaybackRate(num v) {
    _defaultPlaybackRate = v;
    _defaultPlaybackRateSet = true;
  }

  bool _disableRemotePlayback;
  bool _disableRemotePlaybackSet = false;
  bool get disableRemotePlayback => _disableRemotePlayback;
  set disableRemotePlayback(bool v) {
    _disableRemotePlayback = v;
    _disableRemotePlaybackSet = true;
  }

  bool _loop;
  bool _loopSet = false;
  bool get loop => _loop;
  set loop(bool v) {
    _loop = v;
    _loopSet = true;
  }

  bool _muted;
  bool _mutedSet = false;
  bool get muted => _muted;
  set muted(bool v) {
    _muted = v;
    _mutedSet = true;
  }

  num _playbackRate;
  bool _playbackRateSet = false;
  num get playbackRate => _playbackRate;
  set playbackRate(num v) {
    _playbackRate = v;
    _playbackRateSet = true;
  }

  String _preload;
  bool _preloadSet = false;
  String get preload => _preload;
  set preload(String v) {
    _preload = v;
    _preloadSet = true;
  }

  MediaSession _session;
  bool _sessionSet = false;
  MediaSession get session => _session;
  set session(MediaSession v) {
    _session = v;
    _sessionSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  set src(String v) {
    _src = v;
    _srcSet = true;
  }

  num _volume;
  bool _volumeSet = false;
  num get volume => _volume;
  set volume(num v) {
    _volume = v;
    _volumeSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);

    if (_autoplaySet) ele.autoplay = _autoplay;
    if (_controlsSet) ele.controls = _controls;
    if (_crossOriginSet) ele.crossOrigin = _crossOrigin;
    if (_currentTimeSet) ele.currentTime = _currentTime;
    if (_defaultMutedSet) ele.defaultMuted = _defaultMuted;
    if (_defaultPlaybackRateSet) ele.defaultPlaybackRate = _defaultPlaybackRate;
    if (_disableRemotePlaybackSet)
      ele.disableRemotePlayback = _disableRemotePlayback;
    if (_loopSet) ele.loop = _loop;
    if (_mutedSet) ele.muted = _muted;
    if (_playbackRateSet) ele.playbackRate = _playbackRate;
    if (_preloadSet) ele.preload = _preload;
    if (_sessionSet) ele.session = _session;
    if (_srcSet) ele.src = _src;
    if (_volumeSet) ele.volume = _volume;
  }

  @override
  @protected
  void updateElementAttributes(covariant VMediaElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);

    if (_autoplay != prev._autoplay) {
      ele.autoplay = _autoplay;
      prev.autoplay = _autoplay;
    }
    if (_controls != prev._controls) {
      ele.controls = _controls;
      prev.controls = _controls;
    }
    if (_crossOrigin != prev._crossOrigin) {
      ele.crossOrigin = _crossOrigin;
      prev.crossOrigin = _crossOrigin;
    }
    if (_currentTime != prev._currentTime) {
      ele.currentTime = _currentTime;
      prev.currentTime = _currentTime;
    }
    if (_defaultMuted != prev._defaultMuted) {
      ele.defaultMuted = _defaultMuted;
      prev.defaultMuted = _defaultMuted;
    }
    if (_defaultPlaybackRate != prev._defaultPlaybackRate) {
      ele.defaultPlaybackRate = _defaultPlaybackRate;
      prev.defaultPlaybackRate = _defaultPlaybackRate;
    }
    if (_disableRemotePlayback != prev._disableRemotePlayback) {
      ele.disableRemotePlayback = _disableRemotePlayback;
      prev.disableRemotePlayback = _disableRemotePlayback;
    }
    if (_loop != prev._loop) {
      ele.loop = _loop;
      prev.loop = _loop;
    }
    if (_muted != prev._muted) {
      ele.muted = _muted;
      prev.muted = _muted;
    }
    if (_playbackRate != prev._playbackRate) {
      ele.playbackRate = _playbackRate;
      prev.playbackRate = _playbackRate;
    }
    if (_preload != prev._preload) {
      ele.preload = _preload;
      prev.preload = _preload;
    }
    if (_session != prev._session) {
      ele.session = _session;
      prev.session = _session;
    }
    if (_src != prev._src) {
      ele.src = _src;
      prev.src = _src;
    }
    if (_volume != prev._volume) {
      ele.volume = _volume;
      prev.volume = _volume;
    }
  }
}

class VMenuElement extends VHtmlElement<MenuElement> {
  @override
  MenuElement elementFactory() => new MenuElement();

  String _label;
  bool _labelSet = false;
  String get label => _label;
  set label(String v) {
    _label = v;
    _labelSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(MenuElement ele) {
    super.applyAttributesToElement(ele);

    if (_labelSet) ele.label = _label;
    if (_typeSet) ele.type = _type;
  }

  @override
  @protected
  void updateElementAttributes(VMenuElement prev, MenuElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_label != prev._label) {
      ele.label = _label;
      prev.label = _label;
    }
    if (_type != prev._type) {
      ele.type = _type;
      prev.type = _type;
    }
  }
}

abstract class VMenuItemElement<T extends MenuItemElement>
    extends VHtmlElement<T> {
  bool _checked;
  bool _checkedSet = false;
  bool get checked => _checked;
  set checked(bool v) {
    _checked = v;
    _checkedSet = true;
  }

  bool _defaultValue;
  bool _defaultValueSet = false;
  bool get defaultValue => _defaultValue;
  set defaultValue(bool v) {
    _defaultValue = v;
    _defaultValueSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _icon;
  bool _iconSet = false;
  String get icon => _icon;
  set icon(String v) {
    _icon = v;
    _iconSet = true;
  }

  String _label;
  bool _labelSet = false;
  String get label => _label;
  set label(String v) {
    _label = v;
    _labelSet = true;
  }

  String _radiogroup;
  bool _radiogroupSet = false;
  String get radiogroup => _radiogroup;
  set radiogroup(String v) {
    _radiogroup = v;
    _radiogroupSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);

    if (_checkedSet) ele.checked = _checked;
    if (_defaultValueSet) ele.defaultValue = _defaultValue;
    if (_disabledSet) ele.disabled = _disabled;
    if (_iconSet) ele.icon = _icon;
    if (_labelSet) ele.label = _label;
    if (_radiogroupSet) ele.radiogroup = _radiogroup;
    if (_typeSet) ele.type = _type;
  }

  @override
  @protected
  void updateElementAttributes(covariant VMenuItemElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);

    if (_checked != prev._checked) {
      ele.checked = _checked;
      prev.checked = _checked;
    }
    if (_defaultValue != prev._defaultValue) {
      ele.defaultValue = _defaultValue;
      prev.defaultValue = _defaultValue;
    }
    if (_disabled != prev._disabled) {
      ele.disabled = _disabled;
      prev.disabled = _disabled;
    }
    if (_icon != prev._icon) {
      ele.icon = _icon;
      prev.icon = _icon;
    }
    if (_label != prev._label) {
      ele.label = _label;
      prev.label = _label;
    }
    if (_radiogroup != prev._radiogroup) {
      ele.radiogroup = _radiogroup;
      prev.radiogroup = _radiogroup;
    }
    if (_type != prev._type) {
      ele.type = _type;
      prev.type = _type;
    }
  }
}

class VMetaElement extends VHtmlElement<MetaElement> {
  @override
  MetaElement elementFactory() => new MetaElement();

  String _content;
  bool _contentSet = false;
  String get content => _content;
  set content(String v) {
    _content = v;
    _contentSet = true;
  }

  String _httpEquiv;
  bool _httpEquivSet = false;
  String get httpEquiv => _httpEquiv;
  set httpEquiv(String v) {
    _httpEquiv = v;
    _httpEquivSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(MetaElement ele) {
    super.applyAttributesToElement(ele);

    if (_contentSet) ele.content = _content;
    if (_httpEquivSet) ele.httpEquiv = _httpEquiv;
    if (_nameSet) ele.name = _name;
  }

  @override
  @protected
  void updateElementAttributes(VMetaElement prev, MetaElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_content != prev._content) {
      ele.content = _content;
      prev.content = _content;
    }
    if (_httpEquiv != prev._httpEquiv) {
      ele.httpEquiv = _httpEquiv;
      prev.httpEquiv = _httpEquiv;
    }
    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
  }
}

class VMeterElement extends VHtmlElement<MeterElement> {
  @override
  MeterElement elementFactory() => new MeterElement();

  num _high;
  bool _highSet = false;
  num get high => _high;
  set high(num v) {
    _high = v;
    _highSet = true;
  }

  num _low;
  bool _lowSet = false;
  num get low => _low;
  set low(num v) {
    _low = v;
    _lowSet = true;
  }

  num _max;
  bool _maxSet = false;
  num get max => _max;
  set max(num v) {
    _max = v;
    _maxSet = true;
  }

  num _min;
  bool _minSet = false;
  num get min => _min;
  set min(num v) {
    _min = v;
    _minSet = true;
  }

  num _optimum;
  bool _optimumSet = false;
  num get optimum => _optimum;
  set optimum(num v) {
    _optimum = v;
    _optimumSet = true;
  }

  num _value;
  bool _valueSet = false;
  num get value => _value;
  set value(num v) {
    _value = v;
    _valueSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(MeterElement ele) {
    super.applyAttributesToElement(ele);

    if (_highSet) ele.high = _high;
    if (_lowSet) ele.low = _low;
    if (_maxSet) ele.max = _max;
    if (_minSet) ele.min = _min;
    if (_optimumSet) ele.optimum = _optimum;
    if (_valueSet) ele.value = _value;
  }

  @override
  @protected
  void updateElementAttributes(VMeterElement prev, MeterElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_high != prev._high) {
      ele.high = _high;
      prev.high = _high;
    }
    if (_low != prev._low) {
      ele.low = _low;
      prev.low = _low;
    }
    if (_max != prev._max) {
      ele.max = _max;
      prev.max = _max;
    }
    if (_min != prev._min) {
      ele.min = _min;
      prev.min = _min;
    }
    if (_optimum != prev._optimum) {
      ele.optimum = _optimum;
      prev.optimum = _optimum;
    }
    if (_value != prev._value) {
      ele.value = _value;
      prev.value = _value;
    }
  }
}

abstract class VModElement<T extends ModElement> extends VHtmlElement<T> {
  String _cite;
  bool _citeSet = false;
  String get cite => _cite;
  set cite(String v) {
    _cite = v;
    _citeSet = true;
  }

  String _dateTime;
  bool _dateTimeSet = false;
  String get dateTime => _dateTime;
  set dateTime(String v) {
    _dateTime = v;
    _dateTimeSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);

    if (_citeSet) ele.cite = _cite;
    if (_dateTimeSet) ele.dateTime = _dateTime;
  }

  @override
  @protected
  void updateElementAttributes(covariant VModElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);

    if (_cite != prev._cite) {
      ele.cite = _cite;
      prev.cite = _cite;
    }
    if (_dateTime != prev._dateTime) {
      ele.dateTime = _dateTime;
      prev.dateTime = _dateTime;
    }
  }
}

class VOListElement extends VHtmlElement<OListElement> {
  @override
  OListElement elementFactory() => new OListElement();

  bool _reversed;
  bool _reversedSet = false;
  bool get reversed => _reversed;
  set reversed(bool v) {
    _reversed = v;
    _reversedSet = true;
  }

  int _start;
  bool _startSet = false;
  int get start => _start;
  set start(int v) {
    _start = v;
    _startSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(OListElement ele) {
    super.applyAttributesToElement(ele);

    if (_reversedSet) ele.reversed = _reversed;
    if (_startSet) ele.start = _start;
    if (_typeSet) ele.type = _type;
  }

  @override
  @protected
  void updateElementAttributes(VOListElement prev, OListElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_reversed != prev._reversed) {
      ele.reversed = _reversed;
      prev.reversed = _reversed;
    }
    if (_start != prev._start) {
      ele.start = _start;
      prev.start = _start;
    }
    if (_type != prev._type) {
      ele.type = _type;
      prev.type = _type;
    }
  }
}

class VObjectElement extends VHtmlElement<ObjectElement> {
  @override
  ObjectElement elementFactory() => new ObjectElement();

  String _data;
  bool _dataSet = false;
  String get data => _data;
  set data(String v) {
    _data = v;
    _dataSet = true;
  }

  String _height;
  bool _heightSet = false;
  String get height => _height;
  set height(String v) {
    _height = v;
    _heightSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  set type(String v) {
    _type = v;
    _typeSet = true;
  }

  String _useMap;
  bool _useMapSet = false;
  String get useMap => _useMap;
  set useMap(String v) {
    _useMap = v;
    _useMapSet = true;
  }

  String _width;
  bool _widthSet = false;
  String get width => _width;
  set width(String v) {
    _width = v;
    _widthSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(ObjectElement ele) {
    super.applyAttributesToElement(ele);

    if (_dataSet) ele.data = _data;
    if (_heightSet) ele.height = _height;
    if (_nameSet) ele.name = _name;
    if (_typeSet) ele.type = _type;
    if (_useMapSet) ele.useMap = _useMap;
    if (_widthSet) ele.width = _width;
  }

  @override
  @protected
  void updateElementAttributes(VObjectElement prev, ObjectElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_data != prev._data) {
      ele.data = _data;
      prev.data = _data;
    }
    if (_height != prev._height) {
      ele.height = _height;
      prev.height = _height;
    }
    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
    if (_type != prev._type) {
      ele.type = _type;
      prev.type = _type;
    }
    if (_useMap != prev._useMap) {
      ele.useMap = _useMap;
      prev.useMap = _useMap;
    }
    if (_width != prev._width) {
      ele.width = _width;
      prev.width = _width;
    }
  }
}

class VOptGroupElement extends VHtmlElement<OptGroupElement> {
  @override
  OptGroupElement elementFactory() => new OptGroupElement();

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _label;
  bool _labelSet = false;
  String get label => _label;
  set label(String v) {
    _label = v;
    _labelSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(OptGroupElement ele) {
    super.applyAttributesToElement(ele);

    if (_disabledSet) ele.disabled = _disabled;
    if (_labelSet) ele.label = _label;
  }

  @override
  @protected
  void updateElementAttributes(VOptGroupElement prev, OptGroupElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_disabled != prev._disabled) {
      ele.disabled = _disabled;
      prev.disabled = _disabled;
    }
    if (_label != prev._label) {
      ele.label = _label;
      prev.label = _label;
    }
  }
}

class VOptionElement extends VHtmlElement<OptionElement> {
  @override
  OptionElement elementFactory() => new OptionElement();

  bool _defaultSelected;
  bool _defaultSelectedSet = false;
  bool get defaultSelected => _defaultSelected;
  set defaultSelected(bool v) {
    _defaultSelected = v;
    _defaultSelectedSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _label;
  bool _labelSet = false;
  String get label => _label;
  set label(String v) {
    _label = v;
    _labelSet = true;
  }

  bool _selected;
  bool _selectedSet = false;
  bool get selected => _selected;
  set selected(bool v) {
    _selected = v;
    _selectedSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  set value(String v) {
    _value = v;
    _valueSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(OptionElement ele) {
    super.applyAttributesToElement(ele);

    if (_defaultSelectedSet) ele.defaultSelected = _defaultSelected;
    if (_disabledSet) ele.disabled = _disabled;
    if (_labelSet) ele.label = _label;
    if (_selectedSet) ele.selected = _selected;
    if (_valueSet) ele.value = _value;
  }

  @override
  @protected
  void updateElementAttributes(VOptionElement prev, OptionElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_defaultSelected != prev._defaultSelected) {
      ele.defaultSelected = _defaultSelected;
      prev.defaultSelected = _defaultSelected;
    }
    if (_disabled != prev._disabled) {
      ele.disabled = _disabled;
      prev.disabled = _disabled;
    }
    if (_label != prev._label) {
      ele.label = _label;
      prev.label = _label;
    }
    if (_selected != prev._selected) {
      ele.selected = _selected;
      prev.selected = _selected;
    }
    if (_value != prev._value) {
      ele.value = _value;
      prev.value = _value;
    }
  }
}

class VOutputElement extends VHtmlElement<OutputElement> {
  @override
  OutputElement elementFactory() => new OutputElement();

  String _defaultValue;
  bool _defaultValueSet = false;
  String get defaultValue => _defaultValue;
  set defaultValue(String v) {
    _defaultValue = v;
    _defaultValueSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  set value(String v) {
    _value = v;
    _valueSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(OutputElement ele) {
    super.applyAttributesToElement(ele);

    if (_defaultValueSet) ele.defaultValue = _defaultValue;
    if (_nameSet) ele.name = _name;
    if (_valueSet) ele.value = _value;
  }

  @override
  @protected
  void updateElementAttributes(VOutputElement prev, OutputElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_defaultValue != prev._defaultValue) {
      ele.defaultValue = _defaultValue;
      prev.defaultValue = _defaultValue;
    }
    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
    if (_value != prev._value) {
      ele.value = _value;
      prev.value = _value;
    }
  }
}

class VParagraphElement extends VHtmlElement<ParagraphElement> {
  @override
  ParagraphElement elementFactory() => new ParagraphElement();

  @override
  @protected
  void applyAttributesToElement(ParagraphElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VParagraphElement prev, ParagraphElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VParamElement extends VHtmlElement<ParamElement> {
  @override
  ParamElement elementFactory() => new ParamElement();

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  set value(String v) {
    _value = v;
    _valueSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(ParamElement ele) {
    super.applyAttributesToElement(ele);

    if (_nameSet) ele.name = _name;
    if (_valueSet) ele.value = _value;
  }

  @override
  @protected
  void updateElementAttributes(VParamElement prev, ParamElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
    if (_value != prev._value) {
      ele.value = _value;
      prev.value = _value;
    }
  }
}

abstract class VPictureElement<T extends PictureElement>
    extends VHtmlElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VPictureElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VPreElement extends VHtmlElement<PreElement> {
  @override
  PreElement elementFactory() => new PreElement();

  @override
  @protected
  void applyAttributesToElement(PreElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VPreElement prev, PreElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VProgressElement extends VHtmlElement<ProgressElement> {
  @override
  ProgressElement elementFactory() => new ProgressElement();

  num _max;
  bool _maxSet = false;
  num get max => _max;
  set max(num v) {
    _max = v;
    _maxSet = true;
  }

  num _value;
  bool _valueSet = false;
  num get value => _value;
  set value(num v) {
    _value = v;
    _valueSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(ProgressElement ele) {
    super.applyAttributesToElement(ele);

    if (_maxSet) ele.max = _max;
    if (_valueSet) ele.value = _value;
  }

  @override
  @protected
  void updateElementAttributes(VProgressElement prev, ProgressElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_max != prev._max) {
      ele.max = _max;
      prev.max = _max;
    }
    if (_value != prev._value) {
      ele.value = _value;
      prev.value = _value;
    }
  }
}

class VQuoteElement extends VHtmlElement<QuoteElement> {
  @override
  QuoteElement elementFactory() => new QuoteElement();

  String _cite;
  bool _citeSet = false;
  String get cite => _cite;
  set cite(String v) {
    _cite = v;
    _citeSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(QuoteElement ele) {
    super.applyAttributesToElement(ele);

    if (_citeSet) ele.cite = _cite;
  }

  @override
  @protected
  void updateElementAttributes(VQuoteElement prev, QuoteElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_cite != prev._cite) {
      ele.cite = _cite;
      prev.cite = _cite;
    }
  }
}

class VScriptElement extends VHtmlElement<ScriptElement> {
  @override
  ScriptElement elementFactory() => new ScriptElement();

  bool _async;
  bool _asyncSet = false;
  bool get async => _async;
  set async(bool v) {
    _async = v;
    _asyncSet = true;
  }

  String _charset;
  bool _charsetSet = false;
  String get charset => _charset;
  set charset(String v) {
    _charset = v;
    _charsetSet = true;
  }

  String _crossOrigin;
  bool _crossOriginSet = false;
  String get crossOrigin => _crossOrigin;
  set crossOrigin(String v) {
    _crossOrigin = v;
    _crossOriginSet = true;
  }

  bool _defer;
  bool _deferSet = false;
  bool get defer => _defer;
  set defer(bool v) {
    _defer = v;
    _deferSet = true;
  }

  String _integrity;
  bool _integritySet = false;
  String get integrity => _integrity;
  set integrity(String v) {
    _integrity = v;
    _integritySet = true;
  }

  String _nonce;
  bool _nonceSet = false;
  String get nonce => _nonce;
  set nonce(String v) {
    _nonce = v;
    _nonceSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(ScriptElement ele) {
    super.applyAttributesToElement(ele);

    if (_asyncSet) ele.async = _async;
    if (_charsetSet) ele.charset = _charset;
    if (_crossOriginSet) ele.crossOrigin = _crossOrigin;
    if (_deferSet) ele.defer = _defer;
    if (_integritySet) ele.integrity = _integrity;
    if (_nonceSet) ele.nonce = _nonce;
    if (_srcSet) ele.src = _src;
    if (_typeSet) ele.type = _type;
  }

  @override
  @protected
  void updateElementAttributes(VScriptElement prev, ScriptElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_async != prev._async) {
      ele.async = _async;
      prev.async = _async;
    }
    if (_charset != prev._charset) {
      ele.charset = _charset;
      prev.charset = _charset;
    }
    if (_crossOrigin != prev._crossOrigin) {
      ele.crossOrigin = _crossOrigin;
      prev.crossOrigin = _crossOrigin;
    }
    if (_defer != prev._defer) {
      ele.defer = _defer;
      prev.defer = _defer;
    }
    if (_integrity != prev._integrity) {
      ele.integrity = _integrity;
      prev.integrity = _integrity;
    }
    if (_nonce != prev._nonce) {
      ele.nonce = _nonce;
      prev.nonce = _nonce;
    }
    if (_src != prev._src) {
      ele.src = _src;
      prev.src = _src;
    }
    if (_type != prev._type) {
      ele.type = _type;
      prev.type = _type;
    }
  }
}

class VSelectElement extends VHtmlElement<SelectElement> {
  @override
  SelectElement elementFactory() => new SelectElement();

  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  int _length;
  bool _lengthSet = false;
  int get length => _length;
  set length(int v) {
    _length = v;
    _lengthSet = true;
  }

  bool _multiple;
  bool _multipleSet = false;
  bool get multiple => _multiple;
  set multiple(bool v) {
    _multiple = v;
    _multipleSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  int _selectedIndex;
  bool _selectedIndexSet = false;
  int get selectedIndex => _selectedIndex;
  set selectedIndex(int v) {
    _selectedIndex = v;
    _selectedIndexSet = true;
  }

  int _size;
  bool _sizeSet = false;
  int get size => _size;
  set size(int v) {
    _size = v;
    _sizeSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  set value(String v) {
    _value = v;
    _valueSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(SelectElement ele) {
    super.applyAttributesToElement(ele);

    if (_autofocusSet) ele.autofocus = _autofocus;
    if (_disabledSet) ele.disabled = _disabled;
    if (_lengthSet) ele.length = _length;
    if (_multipleSet) ele.multiple = _multiple;
    if (_nameSet) ele.name = _name;
    if (_requiredSet) ele.required = _required;
    if (_selectedIndexSet) ele.selectedIndex = _selectedIndex;
    if (_sizeSet) ele.size = _size;
    if (_valueSet) ele.value = _value;
  }

  @override
  @protected
  void updateElementAttributes(VSelectElement prev, SelectElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_autofocus != prev._autofocus) {
      ele.autofocus = _autofocus;
      prev.autofocus = _autofocus;
    }
    if (_disabled != prev._disabled) {
      ele.disabled = _disabled;
      prev.disabled = _disabled;
    }
    if (_length != prev._length) {
      ele.length = _length;
      prev.length = _length;
    }
    if (_multiple != prev._multiple) {
      ele.multiple = _multiple;
      prev.multiple = _multiple;
    }
    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
    if (_selectedIndex != prev._selectedIndex) {
      ele.selectedIndex = _selectedIndex;
      prev.selectedIndex = _selectedIndex;
    }
    if (_size != prev._size) {
      ele.size = _size;
      prev.size = _size;
    }
    if (_value != prev._value) {
      ele.value = _value;
      prev.value = _value;
    }
  }
}

class VShadowElement extends VHtmlElement<ShadowElement> {
  @override
  ShadowElement elementFactory() => new ShadowElement();

  @override
  @protected
  void applyAttributesToElement(ShadowElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VShadowElement prev, ShadowElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VSlotElement<T extends SlotElement> extends VHtmlElement<T> {
  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);

    if (_nameSet) ele.name = _name;
  }

  @override
  @protected
  void updateElementAttributes(covariant VSlotElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);

    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
  }
}

class VSourceElement extends VHtmlElement<SourceElement> {
  @override
  SourceElement elementFactory() => new SourceElement();

  String _media;
  bool _mediaSet = false;
  String get media => _media;
  set media(String v) {
    _media = v;
    _mediaSet = true;
  }

  String _sizes;
  bool _sizesSet = false;
  String get sizes => _sizes;
  set sizes(String v) {
    _sizes = v;
    _sizesSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _srcset;
  bool _srcsetSet = false;
  String get srcset => _srcset;
  set srcset(String v) {
    _srcset = v;
    _srcsetSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(SourceElement ele) {
    super.applyAttributesToElement(ele);

    if (_mediaSet) ele.media = _media;
    if (_sizesSet) ele.sizes = _sizes;
    if (_srcSet) ele.src = _src;
    if (_srcsetSet) ele.srcset = _srcset;
    if (_typeSet) ele.type = _type;
  }

  @override
  @protected
  void updateElementAttributes(VSourceElement prev, SourceElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_media != prev._media) {
      ele.media = _media;
      prev.media = _media;
    }
    if (_sizes != prev._sizes) {
      ele.sizes = _sizes;
      prev.sizes = _sizes;
    }
    if (_src != prev._src) {
      ele.src = _src;
      prev.src = _src;
    }
    if (_srcset != prev._srcset) {
      ele.srcset = _srcset;
      prev.srcset = _srcset;
    }
    if (_type != prev._type) {
      ele.type = _type;
      prev.type = _type;
    }
  }
}

class VSpanElement extends VHtmlElement<SpanElement> {
  @override
  SpanElement elementFactory() => new SpanElement();

  @override
  @protected
  void applyAttributesToElement(SpanElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VSpanElement prev, SpanElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VStyleElement extends VHtmlElement<StyleElement> {
  @override
  StyleElement elementFactory() => new StyleElement();

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _media;
  bool _mediaSet = false;
  String get media => _media;
  set media(String v) {
    _media = v;
    _mediaSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(StyleElement ele) {
    super.applyAttributesToElement(ele);

    if (_disabledSet) ele.disabled = _disabled;
    if (_mediaSet) ele.media = _media;
    if (_typeSet) ele.type = _type;
  }

  @override
  @protected
  void updateElementAttributes(VStyleElement prev, StyleElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_disabled != prev._disabled) {
      ele.disabled = _disabled;
      prev.disabled = _disabled;
    }
    if (_media != prev._media) {
      ele.media = _media;
      prev.media = _media;
    }
    if (_type != prev._type) {
      ele.type = _type;
      prev.type = _type;
    }
  }
}

class VTableCaptionElement extends VHtmlElement<TableCaptionElement> {
  @override
  TableCaptionElement elementFactory() => new TableCaptionElement();

  @override
  @protected
  void applyAttributesToElement(TableCaptionElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VTableCaptionElement prev, TableCaptionElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VTableCellElement extends VHtmlElement<TableCellElement> {
  @override
  TableCellElement elementFactory() => new TableCellElement();

  int _colSpan;
  bool _colSpanSet = false;
  int get colSpan => _colSpan;
  set colSpan(int v) {
    _colSpan = v;
    _colSpanSet = true;
  }

  String _headers;
  bool _headersSet = false;
  String get headers => _headers;
  set headers(String v) {
    _headers = v;
    _headersSet = true;
  }

  int _rowSpan;
  bool _rowSpanSet = false;
  int get rowSpan => _rowSpan;
  set rowSpan(int v) {
    _rowSpan = v;
    _rowSpanSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(TableCellElement ele) {
    super.applyAttributesToElement(ele);

    if (_colSpanSet) ele.colSpan = _colSpan;
    if (_headersSet) ele.headers = _headers;
    if (_rowSpanSet) ele.rowSpan = _rowSpan;
  }

  @override
  @protected
  void updateElementAttributes(VTableCellElement prev, TableCellElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_colSpan != prev._colSpan) {
      ele.colSpan = _colSpan;
      prev.colSpan = _colSpan;
    }
    if (_headers != prev._headers) {
      ele.headers = _headers;
      prev.headers = _headers;
    }
    if (_rowSpan != prev._rowSpan) {
      ele.rowSpan = _rowSpan;
      prev.rowSpan = _rowSpan;
    }
  }
}

class VTableColElement extends VHtmlElement<TableColElement> {
  @override
  TableColElement elementFactory() => new TableColElement();

  int _span;
  bool _spanSet = false;
  int get span => _span;
  set span(int v) {
    _span = v;
    _spanSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(TableColElement ele) {
    super.applyAttributesToElement(ele);

    if (_spanSet) ele.span = _span;
  }

  @override
  @protected
  void updateElementAttributes(VTableColElement prev, TableColElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_span != prev._span) {
      ele.span = _span;
      prev.span = _span;
    }
  }
}

class VTableElement extends VHtmlElement<TableElement> {
  @override
  TableElement elementFactory() => new TableElement();

  TableCaptionElement _caption;
  bool _captionSet = false;
  TableCaptionElement get caption => _caption;
  set caption(TableCaptionElement v) {
    _caption = v;
    _captionSet = true;
  }

  TableSectionElement _tFoot;
  bool _tFootSet = false;
  TableSectionElement get tFoot => _tFoot;
  set tFoot(TableSectionElement v) {
    _tFoot = v;
    _tFootSet = true;
  }

  TableSectionElement _tHead;
  bool _tHeadSet = false;
  TableSectionElement get tHead => _tHead;
  set tHead(TableSectionElement v) {
    _tHead = v;
    _tHeadSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(TableElement ele) {
    super.applyAttributesToElement(ele);

    if (_captionSet) ele.caption = _caption;
    if (_tFootSet) ele.tFoot = _tFoot;
    if (_tHeadSet) ele.tHead = _tHead;
  }

  @override
  @protected
  void updateElementAttributes(VTableElement prev, TableElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_caption != prev._caption) {
      ele.caption = _caption;
      prev.caption = _caption;
    }
    if (_tFoot != prev._tFoot) {
      ele.tFoot = _tFoot;
      prev.tFoot = _tFoot;
    }
    if (_tHead != prev._tHead) {
      ele.tHead = _tHead;
      prev.tHead = _tHead;
    }
  }
}

class VTableRowElement extends VHtmlElement<TableRowElement> {
  @override
  TableRowElement elementFactory() => new TableRowElement();

  @override
  @protected
  void applyAttributesToElement(TableRowElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VTableRowElement prev, TableRowElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VTableSectionElement<T extends TableSectionElement>
    extends VHtmlElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VTableSectionElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VTemplateElement extends VHtmlElement<TemplateElement> {
  @override
  TemplateElement elementFactory() => new TemplateElement();

  @override
  @protected
  void applyAttributesToElement(TemplateElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VTemplateElement prev, TemplateElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VTextAreaElement extends VHtmlElement<TextAreaElement> {
  @override
  TextAreaElement elementFactory() => new TextAreaElement();

  String _autocapitalize;
  bool _autocapitalizeSet = false;
  String get autocapitalize => _autocapitalize;
  set autocapitalize(String v) {
    _autocapitalize = v;
    _autocapitalizeSet = true;
  }

  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  int _cols;
  bool _colsSet = false;
  int get cols => _cols;
  set cols(int v) {
    _cols = v;
    _colsSet = true;
  }

  String _defaultValue;
  bool _defaultValueSet = false;
  String get defaultValue => _defaultValue;
  set defaultValue(String v) {
    _defaultValue = v;
    _defaultValueSet = true;
  }

  String _dirName;
  bool _dirNameSet = false;
  String get dirName => _dirName;
  set dirName(String v) {
    _dirName = v;
    _dirNameSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _inputMode;
  bool _inputModeSet = false;
  String get inputMode => _inputMode;
  set inputMode(String v) {
    _inputMode = v;
    _inputModeSet = true;
  }

  int _maxLength;
  bool _maxLengthSet = false;
  int get maxLength => _maxLength;
  set maxLength(int v) {
    _maxLength = v;
    _maxLengthSet = true;
  }

  int _minLength;
  bool _minLengthSet = false;
  int get minLength => _minLength;
  set minLength(int v) {
    _minLength = v;
    _minLengthSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _placeholder;
  bool _placeholderSet = false;
  String get placeholder => _placeholder;
  set placeholder(String v) {
    _placeholder = v;
    _placeholderSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  int _rows;
  bool _rowsSet = false;
  int get rows => _rows;
  set rows(int v) {
    _rows = v;
    _rowsSet = true;
  }

  String _selectionDirection;
  bool _selectionDirectionSet = false;
  String get selectionDirection => _selectionDirection;
  set selectionDirection(String v) {
    _selectionDirection = v;
    _selectionDirectionSet = true;
  }

  int _selectionEnd;
  bool _selectionEndSet = false;
  int get selectionEnd => _selectionEnd;
  set selectionEnd(int v) {
    _selectionEnd = v;
    _selectionEndSet = true;
  }

  int _selectionStart;
  bool _selectionStartSet = false;
  int get selectionStart => _selectionStart;
  set selectionStart(int v) {
    _selectionStart = v;
    _selectionStartSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  set value(String v) {
    _value = v;
    _valueSet = true;
  }

  String _wrap;
  bool _wrapSet = false;
  String get wrap => _wrap;
  set wrap(String v) {
    _wrap = v;
    _wrapSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(TextAreaElement ele) {
    super.applyAttributesToElement(ele);

    if (_autocapitalizeSet) ele.autocapitalize = _autocapitalize;
    if (_autofocusSet) ele.autofocus = _autofocus;
    if (_colsSet) ele.cols = _cols;
    if (_defaultValueSet) ele.defaultValue = _defaultValue;
    if (_dirNameSet) ele.dirName = _dirName;
    if (_disabledSet) ele.disabled = _disabled;
    if (_inputModeSet) ele.inputMode = _inputMode;
    if (_maxLengthSet) ele.maxLength = _maxLength;
    if (_minLengthSet) ele.minLength = _minLength;
    if (_nameSet) ele.name = _name;
    if (_placeholderSet) ele.placeholder = _placeholder;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
    if (_rowsSet) ele.rows = _rows;
    if (_selectionDirectionSet) ele.selectionDirection = _selectionDirection;
    if (_selectionEndSet) ele.selectionEnd = _selectionEnd;
    if (_selectionStartSet) ele.selectionStart = _selectionStart;
    if (_valueSet) ele.value = _value;
    if (_wrapSet) ele.wrap = _wrap;
  }

  @override
  @protected
  void updateElementAttributes(VTextAreaElement prev, TextAreaElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_autocapitalize != prev._autocapitalize) {
      ele.autocapitalize = _autocapitalize;
      prev.autocapitalize = _autocapitalize;
    }
    if (_autofocus != prev._autofocus) {
      ele.autofocus = _autofocus;
      prev.autofocus = _autofocus;
    }
    if (_cols != prev._cols) {
      ele.cols = _cols;
      prev.cols = _cols;
    }
    if (_defaultValue != prev._defaultValue) {
      ele.defaultValue = _defaultValue;
      prev.defaultValue = _defaultValue;
    }
    if (_dirName != prev._dirName) {
      ele.dirName = _dirName;
      prev.dirName = _dirName;
    }
    if (_disabled != prev._disabled) {
      ele.disabled = _disabled;
      prev.disabled = _disabled;
    }
    if (_inputMode != prev._inputMode) {
      ele.inputMode = _inputMode;
      prev.inputMode = _inputMode;
    }
    if (_maxLength != prev._maxLength) {
      ele.maxLength = _maxLength;
      prev.maxLength = _maxLength;
    }
    if (_minLength != prev._minLength) {
      ele.minLength = _minLength;
      prev.minLength = _minLength;
    }
    if (_name != prev._name) {
      ele.name = _name;
      prev.name = _name;
    }
    if (_placeholder != prev._placeholder) {
      ele.placeholder = _placeholder;
      prev.placeholder = _placeholder;
    }
    if (_readOnly != prev._readOnly) {
      ele.readOnly = _readOnly;
      prev.readOnly = _readOnly;
    }
    if (_required != prev._required) {
      ele.required = _required;
      prev.required = _required;
    }
    if (_rows != prev._rows) {
      ele.rows = _rows;
      prev.rows = _rows;
    }
    if (_selectionDirection != prev._selectionDirection) {
      ele.selectionDirection = _selectionDirection;
      prev.selectionDirection = _selectionDirection;
    }
    if (_selectionEnd != prev._selectionEnd) {
      ele.selectionEnd = _selectionEnd;
      prev.selectionEnd = _selectionEnd;
    }
    if (_selectionStart != prev._selectionStart) {
      ele.selectionStart = _selectionStart;
      prev.selectionStart = _selectionStart;
    }
    if (_value != prev._value) {
      ele.value = _value;
      prev.value = _value;
    }
    if (_wrap != prev._wrap) {
      ele.wrap = _wrap;
      prev.wrap = _wrap;
    }
  }
}

class VTitleElement extends VHtmlElement<TitleElement> {
  @override
  TitleElement elementFactory() => new TitleElement();

  @override
  @protected
  void applyAttributesToElement(TitleElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VTitleElement prev, TitleElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VTrackElement extends VHtmlElement<TrackElement> {
  @override
  TrackElement elementFactory() => new TrackElement();

  bool _defaultValue;
  bool _defaultValueSet = false;
  bool get defaultValue => _defaultValue;
  set defaultValue(bool v) {
    _defaultValue = v;
    _defaultValueSet = true;
  }

  String _kind;
  bool _kindSet = false;
  String get kind => _kind;
  set kind(String v) {
    _kind = v;
    _kindSet = true;
  }

  String _label;
  bool _labelSet = false;
  String get label => _label;
  set label(String v) {
    _label = v;
    _labelSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _srclang;
  bool _srclangSet = false;
  String get srclang => _srclang;
  set srclang(String v) {
    _srclang = v;
    _srclangSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(TrackElement ele) {
    super.applyAttributesToElement(ele);

    if (_defaultValueSet) ele.defaultValue = _defaultValue;
    if (_kindSet) ele.kind = _kind;
    if (_labelSet) ele.label = _label;
    if (_srcSet) ele.src = _src;
    if (_srclangSet) ele.srclang = _srclang;
  }

  @override
  @protected
  void updateElementAttributes(VTrackElement prev, TrackElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_defaultValue != prev._defaultValue) {
      ele.defaultValue = _defaultValue;
      prev.defaultValue = _defaultValue;
    }
    if (_kind != prev._kind) {
      ele.kind = _kind;
      prev.kind = _kind;
    }
    if (_label != prev._label) {
      ele.label = _label;
      prev.label = _label;
    }
    if (_src != prev._src) {
      ele.src = _src;
      prev.src = _src;
    }
    if (_srclang != prev._srclang) {
      ele.srclang = _srclang;
      prev.srclang = _srclang;
    }
  }
}

class VUListElement extends VHtmlElement<UListElement> {
  @override
  UListElement elementFactory() => new UListElement();

  @override
  @protected
  void applyAttributesToElement(UListElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VUListElement prev, UListElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VUnknownElement<T extends UnknownElement>
    extends VHtmlElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VUnknownElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VVideoElement extends VMediaElement<VideoElement> {
  @override
  VideoElement elementFactory() => new VideoElement();

  int _height;
  bool _heightSet = false;
  int get height => _height;
  set height(int v) {
    _height = v;
    _heightSet = true;
  }

  String _poster;
  bool _posterSet = false;
  String get poster => _poster;
  set poster(String v) {
    _poster = v;
    _posterSet = true;
  }

  int _width;
  bool _widthSet = false;
  int get width => _width;
  set width(int v) {
    _width = v;
    _widthSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(VideoElement ele) {
    super.applyAttributesToElement(ele);

    if (_heightSet) ele.height = _height;
    if (_posterSet) ele.poster = _poster;
    if (_widthSet) ele.width = _width;
  }

  @override
  @protected
  void updateElementAttributes(VVideoElement prev, VideoElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_height != prev._height) {
      ele.height = _height;
      prev.height = _height;
    }
    if (_poster != prev._poster) {
      ele.poster = _poster;
      prev.poster = _poster;
    }
    if (_width != prev._width) {
      ele.width = _width;
      prev.width = _width;
    }
  }
}
