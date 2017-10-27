part of wui_builder;

abstract class VHtmlElement<T extends HtmlElement> extends VElement<T> {
  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(covariant VHtmlElement<T> prev, T ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VAnchorElement extends VHtmlElement<AnchorElement> {
  @override
  AnchorElement _elementFactory() => new AnchorElement();

  String _download;
  bool _downloadSet = false;
  String get download => _download;
  void set download(String v) {
    _download = v;
    _downloadSet = true;
  }

  String _hreflang;
  bool _hreflangSet = false;
  String get hreflang => _hreflang;
  void set hreflang(String v) {
    _hreflang = v;
    _hreflangSet = true;
  }

  String _referrerpolicy;
  bool _referrerpolicySet = false;
  String get referrerpolicy => _referrerpolicy;
  void set referrerpolicy(String v) {
    _referrerpolicy = v;
    _referrerpolicySet = true;
  }

  String _rel;
  bool _relSet = false;
  String get rel => _rel;
  void set rel(String v) {
    _rel = v;
    _relSet = true;
  }

  String _target;
  bool _targetSet = false;
  String get target => _target;
  void set target(String v) {
    _target = v;
    _targetSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  void set type(String v) {
    _type = v;
    _typeSet = true;
  }

  String _hash;
  bool _hashSet = false;
  String get hash => _hash;
  void set hash(String v) {
    _hash = v;
    _hashSet = true;
  }

  String _host;
  bool _hostSet = false;
  String get host => _host;
  void set host(String v) {
    _host = v;
    _hostSet = true;
  }

  String _hostname;
  bool _hostnameSet = false;
  String get hostname => _hostname;
  void set hostname(String v) {
    _hostname = v;
    _hostnameSet = true;
  }

  String _href;
  bool _hrefSet = false;
  String get href => _href;
  void set href(String v) {
    _href = v;
    _hrefSet = true;
  }

  String _password;
  bool _passwordSet = false;
  String get password => _password;
  void set password(String v) {
    _password = v;
    _passwordSet = true;
  }

  String _pathname;
  bool _pathnameSet = false;
  String get pathname => _pathname;
  void set pathname(String v) {
    _pathname = v;
    _pathnameSet = true;
  }

  String _port;
  bool _portSet = false;
  String get port => _port;
  void set port(String v) {
    _port = v;
    _portSet = true;
  }

  String _protocol;
  bool _protocolSet = false;
  String get protocol => _protocol;
  void set protocol(String v) {
    _protocol = v;
    _protocolSet = true;
  }

  String _search;
  bool _searchSet = false;
  String get search => _search;
  void set search(String v) {
    _search = v;
    _searchSet = true;
  }

  String _username;
  bool _usernameSet = false;
  String get username => _username;
  void set username(String v) {
    _username = v;
    _usernameSet = true;
  }

  @override
  void _applyAttributesToElement(AnchorElement ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(VAnchorElement prev, AnchorElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_download != prev._download) ele.download = _download;
    if (_hreflang != prev._hreflang) ele.hreflang = _hreflang;
    if (_referrerpolicy != prev._referrerpolicy)
      ele.referrerpolicy = _referrerpolicy;
    if (_rel != prev._rel) ele.rel = _rel;
    if (_target != prev._target) ele.target = _target;
    if (_type != prev._type) ele.type = _type;
    if (_hash != prev._hash) ele.hash = _hash;
    if (_host != prev._host) ele.host = _host;
    if (_hostname != prev._hostname) ele.hostname = _hostname;
    if (_href != prev._href) ele.href = _href;
    if (_password != prev._password) ele.password = _password;
    if (_pathname != prev._pathname) ele.pathname = _pathname;
    if (_port != prev._port) ele.port = _port;
    if (_protocol != prev._protocol) ele.protocol = _protocol;
    if (_search != prev._search) ele.search = _search;
    if (_username != prev._username) ele.username = _username;
  }
}

class VAreaElement extends VHtmlElement<AreaElement> {
  @override
  AreaElement _elementFactory() => new AreaElement();

  String _alt;
  bool _altSet = false;
  String get alt => _alt;
  void set alt(String v) {
    _alt = v;
    _altSet = true;
  }

  String _coords;
  bool _coordsSet = false;
  String get coords => _coords;
  void set coords(String v) {
    _coords = v;
    _coordsSet = true;
  }

  String _referrerpolicy;
  bool _referrerpolicySet = false;
  String get referrerpolicy => _referrerpolicy;
  void set referrerpolicy(String v) {
    _referrerpolicy = v;
    _referrerpolicySet = true;
  }

  String _shape;
  bool _shapeSet = false;
  String get shape => _shape;
  void set shape(String v) {
    _shape = v;
    _shapeSet = true;
  }

  String _target;
  bool _targetSet = false;
  String get target => _target;
  void set target(String v) {
    _target = v;
    _targetSet = true;
  }

  String _hash;
  bool _hashSet = false;
  String get hash => _hash;
  void set hash(String v) {
    _hash = v;
    _hashSet = true;
  }

  String _host;
  bool _hostSet = false;
  String get host => _host;
  void set host(String v) {
    _host = v;
    _hostSet = true;
  }

  String _hostname;
  bool _hostnameSet = false;
  String get hostname => _hostname;
  void set hostname(String v) {
    _hostname = v;
    _hostnameSet = true;
  }

  String _href;
  bool _hrefSet = false;
  String get href => _href;
  void set href(String v) {
    _href = v;
    _hrefSet = true;
  }

  String _password;
  bool _passwordSet = false;
  String get password => _password;
  void set password(String v) {
    _password = v;
    _passwordSet = true;
  }

  String _pathname;
  bool _pathnameSet = false;
  String get pathname => _pathname;
  void set pathname(String v) {
    _pathname = v;
    _pathnameSet = true;
  }

  String _port;
  bool _portSet = false;
  String get port => _port;
  void set port(String v) {
    _port = v;
    _portSet = true;
  }

  String _protocol;
  bool _protocolSet = false;
  String get protocol => _protocol;
  void set protocol(String v) {
    _protocol = v;
    _protocolSet = true;
  }

  String _search;
  bool _searchSet = false;
  String get search => _search;
  void set search(String v) {
    _search = v;
    _searchSet = true;
  }

  String _username;
  bool _usernameSet = false;
  String get username => _username;
  void set username(String v) {
    _username = v;
    _usernameSet = true;
  }

  @override
  void _applyAttributesToElement(AreaElement ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(VAreaElement prev, AreaElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_alt != prev._alt) ele.alt = _alt;
    if (_coords != prev._coords) ele.coords = _coords;
    if (_referrerpolicy != prev._referrerpolicy)
      ele.referrerpolicy = _referrerpolicy;
    if (_shape != prev._shape) ele.shape = _shape;
    if (_target != prev._target) ele.target = _target;
    if (_hash != prev._hash) ele.hash = _hash;
    if (_host != prev._host) ele.host = _host;
    if (_hostname != prev._hostname) ele.hostname = _hostname;
    if (_href != prev._href) ele.href = _href;
    if (_password != prev._password) ele.password = _password;
    if (_pathname != prev._pathname) ele.pathname = _pathname;
    if (_port != prev._port) ele.port = _port;
    if (_protocol != prev._protocol) ele.protocol = _protocol;
    if (_search != prev._search) ele.search = _search;
    if (_username != prev._username) ele.username = _username;
  }
}

class VAudioElement extends VMediaElement<AudioElement> {
  @override
  AudioElement _elementFactory() => new AudioElement();

  @override
  void _applyAttributesToElement(AudioElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VAudioElement prev, AudioElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VBRElement extends VHtmlElement<BRElement> {
  @override
  BRElement _elementFactory() => new BRElement();

  @override
  void _applyAttributesToElement(BRElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VBRElement prev, BRElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VBaseElement extends VHtmlElement<BaseElement> {
  @override
  BaseElement _elementFactory() => new BaseElement();

  String _href;
  bool _hrefSet = false;
  String get href => _href;
  void set href(String v) {
    _href = v;
    _hrefSet = true;
  }

  String _target;
  bool _targetSet = false;
  String get target => _target;
  void set target(String v) {
    _target = v;
    _targetSet = true;
  }

  @override
  void _applyAttributesToElement(BaseElement ele) {
    super._applyAttributesToElement(ele);

    if (_hrefSet) ele.href = _href;
    if (_targetSet) ele.target = _target;
  }

  @override
  void _updateElementAttributes(VBaseElement prev, BaseElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_href != prev._href) ele.href = _href;
    if (_target != prev._target) ele.target = _target;
  }
}

class VBodyElement extends VHtmlElement<BodyElement> {
  @override
  BodyElement _elementFactory() => new BodyElement();

  @override
  void _applyAttributesToElement(BodyElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VBodyElement prev, BodyElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VButtonElement extends VHtmlElement<ButtonElement> {
  @override
  ButtonElement _elementFactory() => new ButtonElement();

  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  void set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  void set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _formAction;
  bool _formActionSet = false;
  String get formAction => _formAction;
  void set formAction(String v) {
    _formAction = v;
    _formActionSet = true;
  }

  String _formEnctype;
  bool _formEnctypeSet = false;
  String get formEnctype => _formEnctype;
  void set formEnctype(String v) {
    _formEnctype = v;
    _formEnctypeSet = true;
  }

  String _formMethod;
  bool _formMethodSet = false;
  String get formMethod => _formMethod;
  void set formMethod(String v) {
    _formMethod = v;
    _formMethodSet = true;
  }

  bool _formNoValidate;
  bool _formNoValidateSet = false;
  bool get formNoValidate => _formNoValidate;
  void set formNoValidate(bool v) {
    _formNoValidate = v;
    _formNoValidateSet = true;
  }

  String _formTarget;
  bool _formTargetSet = false;
  String get formTarget => _formTarget;
  void set formTarget(String v) {
    _formTarget = v;
    _formTargetSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  void set type(String v) {
    _type = v;
    _typeSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  void set value(String v) {
    _value = v;
    _valueSet = true;
  }

  @override
  void _applyAttributesToElement(ButtonElement ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(VButtonElement prev, ButtonElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_autofocus != prev._autofocus) ele.autofocus = _autofocus;
    if (_disabled != prev._disabled) ele.disabled = _disabled;
    if (_formAction != prev._formAction) ele.formAction = _formAction;
    if (_formEnctype != prev._formEnctype) ele.formEnctype = _formEnctype;
    if (_formMethod != prev._formMethod) ele.formMethod = _formMethod;
    if (_formNoValidate != prev._formNoValidate)
      ele.formNoValidate = _formNoValidate;
    if (_formTarget != prev._formTarget) ele.formTarget = _formTarget;
    if (_name != prev._name) ele.name = _name;
    if (_type != prev._type) ele.type = _type;
    if (_value != prev._value) ele.value = _value;
  }
}

class VCanvasElement extends VHtmlElement<CanvasElement> {
  @override
  CanvasElement _elementFactory() => new CanvasElement();

  int _height;
  bool _heightSet = false;
  int get height => _height;
  void set height(int v) {
    _height = v;
    _heightSet = true;
  }

  int _width;
  bool _widthSet = false;
  int get width => _width;
  void set width(int v) {
    _width = v;
    _widthSet = true;
  }

  @override
  void _applyAttributesToElement(CanvasElement ele) {
    super._applyAttributesToElement(ele);

    if (_heightSet) ele.height = _height;
    if (_widthSet) ele.width = _width;
  }

  @override
  void _updateElementAttributes(VCanvasElement prev, CanvasElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_height != prev._height) ele.height = _height;
    if (_width != prev._width) ele.width = _width;
  }
}

class VContentElement extends VHtmlElement<ContentElement> {
  @override
  ContentElement _elementFactory() => new ContentElement();

  String _select;
  bool _selectSet = false;
  String get select => _select;
  void set select(String v) {
    _select = v;
    _selectSet = true;
  }

  @override
  void _applyAttributesToElement(ContentElement ele) {
    super._applyAttributesToElement(ele);

    if (_selectSet) ele.select = _select;
  }

  @override
  void _updateElementAttributes(VContentElement prev, ContentElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_select != prev._select) ele.select = _select;
  }
}

class VDListElement extends VHtmlElement<DListElement> {
  @override
  DListElement _elementFactory() => new DListElement();

  @override
  void _applyAttributesToElement(DListElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VDListElement prev, DListElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VDataListElement extends VHtmlElement<DataListElement> {
  @override
  DataListElement _elementFactory() => new DataListElement();

  @override
  void _applyAttributesToElement(DataListElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VDataListElement prev, DataListElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VDetailsElement extends VHtmlElement<DetailsElement> {
  @override
  DetailsElement _elementFactory() => new DetailsElement();

  bool _open;
  bool _openSet = false;
  bool get open => _open;
  void set open(bool v) {
    _open = v;
    _openSet = true;
  }

  @override
  void _applyAttributesToElement(DetailsElement ele) {
    super._applyAttributesToElement(ele);

    if (_openSet) ele.open = _open;
  }

  @override
  void _updateElementAttributes(VDetailsElement prev, DetailsElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_open != prev._open) ele.open = _open;
  }
}

abstract class VDialogElement<T extends DialogElement> extends VHtmlElement<T> {
  bool _open;
  bool _openSet = false;
  bool get open => _open;
  void set open(bool v) {
    _open = v;
    _openSet = true;
  }

  String _returnValue;
  bool _returnValueSet = false;
  String get returnValue => _returnValue;
  void set returnValue(String v) {
    _returnValue = v;
    _returnValueSet = true;
  }

  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);

    if (_openSet) ele.open = _open;
    if (_returnValueSet) ele.returnValue = _returnValue;
  }

  @override
  void _updateElementAttributes(covariant VDialogElement<T> prev, T ele) {
    super._updateElementAttributes(prev, ele);

    if (_open != prev._open) ele.open = _open;
    if (_returnValue != prev._returnValue) ele.returnValue = _returnValue;
  }
}

class VDivElement extends VHtmlElement<DivElement> {
  @override
  DivElement _elementFactory() => new DivElement();

  @override
  void _applyAttributesToElement(DivElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VDivElement prev, DivElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

abstract class VElement<E extends Element> extends VNode {
  E _elementFactory();

  bool shouldUpdateSubs = false;

  StyleBuilder styleBuilder;

  List<VNode> _children;
  bool _childrenSet = false;
  List<VNode> get children => _children;
  void set children(Iterable<VNode> c) {
    print('tolist');
    _children = c.toList();
    _childrenSet = true;
  }

  String _text;
  bool _textSet = false;
  String get text => _text;
  void set text(String v) {
    _text = v;
    _textSet = true;
  }

  String _contentEditable;
  bool _contentEditableSet = false;
  String get contentEditable => _contentEditable;
  void set contentEditable(String v) {
    _contentEditable = v;
    _contentEditableSet = true;
  }

  MenuElement _contextMenu;
  bool _contextMenuSet = false;
  MenuElement get contextMenu => _contextMenu;
  void set contextMenu(MenuElement v) {
    _contextMenu = v;
    _contextMenuSet = true;
  }

  String _dir;
  bool _dirSet = false;
  String get dir => _dir;
  void set dir(String v) {
    _dir = v;
    _dirSet = true;
  }

  bool _draggable;
  bool _draggableSet = false;
  bool get draggable => _draggable;
  void set draggable(bool v) {
    _draggable = v;
    _draggableSet = true;
  }

  bool _hidden;
  bool _hiddenSet = false;
  bool get hidden => _hidden;
  void set hidden(bool v) {
    _hidden = v;
    _hiddenSet = true;
  }

  String _lang;
  bool _langSet = false;
  String get lang => _lang;
  void set lang(String v) {
    _lang = v;
    _langSet = true;
  }

  bool _spellcheck;
  bool _spellcheckSet = false;
  bool get spellcheck => _spellcheck;
  void set spellcheck(bool v) {
    _spellcheck = v;
    _spellcheckSet = true;
  }

  int _tabIndex;
  bool _tabIndexSet = false;
  int get tabIndex => _tabIndex;
  void set tabIndex(int v) {
    _tabIndex = v;
    _tabIndexSet = true;
  }

  String _title;
  bool _titleSet = false;
  String get title => _title;
  void set title(String v) {
    _title = v;
    _titleSet = true;
  }

  bool _translate;
  bool _translateSet = false;
  bool get translate => _translate;
  void set translate(bool v) {
    _translate = v;
    _translateSet = true;
  }

  String _dropzone;
  bool _dropzoneSet = false;
  String get dropzone => _dropzone;
  void set dropzone(String v) {
    _dropzone = v;
    _dropzoneSet = true;
  }

  String _className;
  bool _classNameSet = false;
  String get className => _className;
  void set className(String v) {
    _className = v;
    _classNameSet = true;
  }

  String _id;
  bool _idSet = false;
  String get id => _id;
  void set id(String v) {
    _id = v;
    _idSet = true;
  }

  String _slot;
  bool _slotSet = false;
  String get slot => _slot;
  void set slot(String v) {
    _slot = v;
    _slotSet = true;
  }

  Map<String, String> _attributes;
  bool _attributesSet = false;
  Map<String, String> get attributes => _attributes;
  void set attributes(Map<String, String> v) {
    _attributes = v;
    _attributesSet = true;
  }

  Iterable<String> _classes;
  bool _classesSet = false;
  Iterable<String> get classes => _classes;
  void set classes(Iterable<String> v) {
    _classes = v;
    _classesSet = true;
  }

  Map<String, String> _dataset;
  bool _datasetSet = false;
  Map<String, String> get dataset => _dataset;
  void set dataset(Map<String, String> v) {
    _dataset = v;
    _datasetSet = true;
  }

  Element _xtag;
  bool _xtagSet = false;
  Element get xtag => _xtag;
  void set xtag(Element v) {
    _xtag = v;
    _xtagSet = true;
  }

  String _innerHtml;
  bool _innerHtmlSet = false;
  String get innerHtml => _innerHtml;
  void set innerHtml(String v) {
    _innerHtml = v;
    _innerHtmlSet = true;
  }

  int _scrollLeft;
  bool _scrollLeftSet = false;
  int get scrollLeft => _scrollLeft;
  void set scrollLeft(int v) {
    _scrollLeft = v;
    _scrollLeftSet = true;
  }

  int _scrollTop;
  bool _scrollTopSet = false;
  int get scrollTop => _scrollTop;
  void set scrollTop(int v) {
    _scrollTop = v;
    _scrollTopSet = true;
  }

  StreamSubscription _onAbortSub;
  bool _onAbortSet = false;
  EventHandler<Event> _onAbort;
  EventHandler<Event> get onAbort => _onAbort;
  void set onAbort(EventHandler<Event> v) {
    _onAbort = v;
    _onAbortSet = true;
  }

  StreamSubscription _onBeforeCopySub;
  bool _onBeforeCopySet = false;
  EventHandler<Event> _onBeforeCopy;
  EventHandler<Event> get onBeforeCopy => _onBeforeCopy;
  void set onBeforeCopy(EventHandler<Event> v) {
    _onBeforeCopy = v;
    _onBeforeCopySet = true;
  }

  StreamSubscription _onBeforeCutSub;
  bool _onBeforeCutSet = false;
  EventHandler<Event> _onBeforeCut;
  EventHandler<Event> get onBeforeCut => _onBeforeCut;
  void set onBeforeCut(EventHandler<Event> v) {
    _onBeforeCut = v;
    _onBeforeCutSet = true;
  }

  StreamSubscription _onBeforePasteSub;
  bool _onBeforePasteSet = false;
  EventHandler<Event> _onBeforePaste;
  EventHandler<Event> get onBeforePaste => _onBeforePaste;
  void set onBeforePaste(EventHandler<Event> v) {
    _onBeforePaste = v;
    _onBeforePasteSet = true;
  }

  StreamSubscription _onBlurSub;
  bool _onBlurSet = false;
  EventHandler<Event> _onBlur;
  EventHandler<Event> get onBlur => _onBlur;
  void set onBlur(EventHandler<Event> v) {
    _onBlur = v;
    _onBlurSet = true;
  }

  StreamSubscription _onCanPlaySub;
  bool _onCanPlaySet = false;
  EventHandler<Event> _onCanPlay;
  EventHandler<Event> get onCanPlay => _onCanPlay;
  void set onCanPlay(EventHandler<Event> v) {
    _onCanPlay = v;
    _onCanPlaySet = true;
  }

  StreamSubscription _onCanPlayThroughSub;
  bool _onCanPlayThroughSet = false;
  EventHandler<Event> _onCanPlayThrough;
  EventHandler<Event> get onCanPlayThrough => _onCanPlayThrough;
  void set onCanPlayThrough(EventHandler<Event> v) {
    _onCanPlayThrough = v;
    _onCanPlayThroughSet = true;
  }

  StreamSubscription _onChangeSub;
  bool _onChangeSet = false;
  EventHandler<Event> _onChange;
  EventHandler<Event> get onChange => _onChange;
  void set onChange(EventHandler<Event> v) {
    _onChange = v;
    _onChangeSet = true;
  }

  StreamSubscription _onClickSub;
  bool _onClickSet = false;
  EventHandler<MouseEvent> _onClick;
  EventHandler<MouseEvent> get onClick => _onClick;
  void set onClick(EventHandler<MouseEvent> v) {
    _onClick = v;
    _onClickSet = true;
  }

  StreamSubscription _onContextMenuSub;
  bool _onContextMenuSet = false;
  EventHandler<MouseEvent> _onContextMenu;
  EventHandler<MouseEvent> get onContextMenu => _onContextMenu;
  void set onContextMenu(EventHandler<MouseEvent> v) {
    _onContextMenu = v;
    _onContextMenuSet = true;
  }

  StreamSubscription _onCopySub;
  bool _onCopySet = false;
  EventHandler<ClipboardEvent> _onCopy;
  EventHandler<ClipboardEvent> get onCopy => _onCopy;
  void set onCopy(EventHandler<ClipboardEvent> v) {
    _onCopy = v;
    _onCopySet = true;
  }

  StreamSubscription _onCutSub;
  bool _onCutSet = false;
  EventHandler<ClipboardEvent> _onCut;
  EventHandler<ClipboardEvent> get onCut => _onCut;
  void set onCut(EventHandler<ClipboardEvent> v) {
    _onCut = v;
    _onCutSet = true;
  }

  StreamSubscription _onDoubleClickSub;
  bool _onDoubleClickSet = false;
  EventHandler<Event> _onDoubleClick;
  EventHandler<Event> get onDoubleClick => _onDoubleClick;
  void set onDoubleClick(EventHandler<Event> v) {
    _onDoubleClick = v;
    _onDoubleClickSet = true;
  }

  StreamSubscription _onDragSub;
  bool _onDragSet = false;
  EventHandler<MouseEvent> _onDrag;
  EventHandler<MouseEvent> get onDrag => _onDrag;
  void set onDrag(EventHandler<MouseEvent> v) {
    _onDrag = v;
    _onDragSet = true;
  }

  StreamSubscription _onDragEndSub;
  bool _onDragEndSet = false;
  EventHandler<MouseEvent> _onDragEnd;
  EventHandler<MouseEvent> get onDragEnd => _onDragEnd;
  void set onDragEnd(EventHandler<MouseEvent> v) {
    _onDragEnd = v;
    _onDragEndSet = true;
  }

  StreamSubscription _onDragEnterSub;
  bool _onDragEnterSet = false;
  EventHandler<MouseEvent> _onDragEnter;
  EventHandler<MouseEvent> get onDragEnter => _onDragEnter;
  void set onDragEnter(EventHandler<MouseEvent> v) {
    _onDragEnter = v;
    _onDragEnterSet = true;
  }

  StreamSubscription _onDragLeaveSub;
  bool _onDragLeaveSet = false;
  EventHandler<MouseEvent> _onDragLeave;
  EventHandler<MouseEvent> get onDragLeave => _onDragLeave;
  void set onDragLeave(EventHandler<MouseEvent> v) {
    _onDragLeave = v;
    _onDragLeaveSet = true;
  }

  StreamSubscription _onDragOverSub;
  bool _onDragOverSet = false;
  EventHandler<MouseEvent> _onDragOver;
  EventHandler<MouseEvent> get onDragOver => _onDragOver;
  void set onDragOver(EventHandler<MouseEvent> v) {
    _onDragOver = v;
    _onDragOverSet = true;
  }

  StreamSubscription _onDragStartSub;
  bool _onDragStartSet = false;
  EventHandler<MouseEvent> _onDragStart;
  EventHandler<MouseEvent> get onDragStart => _onDragStart;
  void set onDragStart(EventHandler<MouseEvent> v) {
    _onDragStart = v;
    _onDragStartSet = true;
  }

  StreamSubscription _onDropSub;
  bool _onDropSet = false;
  EventHandler<MouseEvent> _onDrop;
  EventHandler<MouseEvent> get onDrop => _onDrop;
  void set onDrop(EventHandler<MouseEvent> v) {
    _onDrop = v;
    _onDropSet = true;
  }

  StreamSubscription _onDurationChangeSub;
  bool _onDurationChangeSet = false;
  EventHandler<Event> _onDurationChange;
  EventHandler<Event> get onDurationChange => _onDurationChange;
  void set onDurationChange(EventHandler<Event> v) {
    _onDurationChange = v;
    _onDurationChangeSet = true;
  }

  StreamSubscription _onEmptiedSub;
  bool _onEmptiedSet = false;
  EventHandler<Event> _onEmptied;
  EventHandler<Event> get onEmptied => _onEmptied;
  void set onEmptied(EventHandler<Event> v) {
    _onEmptied = v;
    _onEmptiedSet = true;
  }

  StreamSubscription _onEndedSub;
  bool _onEndedSet = false;
  EventHandler<Event> _onEnded;
  EventHandler<Event> get onEnded => _onEnded;
  void set onEnded(EventHandler<Event> v) {
    _onEnded = v;
    _onEndedSet = true;
  }

  StreamSubscription _onErrorSub;
  bool _onErrorSet = false;
  EventHandler<Event> _onError;
  EventHandler<Event> get onError => _onError;
  void set onError(EventHandler<Event> v) {
    _onError = v;
    _onErrorSet = true;
  }

  StreamSubscription _onFocusSub;
  bool _onFocusSet = false;
  EventHandler<Event> _onFocus;
  EventHandler<Event> get onFocus => _onFocus;
  void set onFocus(EventHandler<Event> v) {
    _onFocus = v;
    _onFocusSet = true;
  }

  StreamSubscription _onInputSub;
  bool _onInputSet = false;
  EventHandler<Event> _onInput;
  EventHandler<Event> get onInput => _onInput;
  void set onInput(EventHandler<Event> v) {
    _onInput = v;
    _onInputSet = true;
  }

  StreamSubscription _onInvalidSub;
  bool _onInvalidSet = false;
  EventHandler<Event> _onInvalid;
  EventHandler<Event> get onInvalid => _onInvalid;
  void set onInvalid(EventHandler<Event> v) {
    _onInvalid = v;
    _onInvalidSet = true;
  }

  StreamSubscription _onKeyDownSub;
  bool _onKeyDownSet = false;
  EventHandler<KeyboardEvent> _onKeyDown;
  EventHandler<KeyboardEvent> get onKeyDown => _onKeyDown;
  void set onKeyDown(EventHandler<KeyboardEvent> v) {
    _onKeyDown = v;
    _onKeyDownSet = true;
  }

  StreamSubscription _onKeyPressSub;
  bool _onKeyPressSet = false;
  EventHandler<KeyboardEvent> _onKeyPress;
  EventHandler<KeyboardEvent> get onKeyPress => _onKeyPress;
  void set onKeyPress(EventHandler<KeyboardEvent> v) {
    _onKeyPress = v;
    _onKeyPressSet = true;
  }

  StreamSubscription _onKeyUpSub;
  bool _onKeyUpSet = false;
  EventHandler<KeyboardEvent> _onKeyUp;
  EventHandler<KeyboardEvent> get onKeyUp => _onKeyUp;
  void set onKeyUp(EventHandler<KeyboardEvent> v) {
    _onKeyUp = v;
    _onKeyUpSet = true;
  }

  StreamSubscription _onLoadSub;
  bool _onLoadSet = false;
  EventHandler<Event> _onLoad;
  EventHandler<Event> get onLoad => _onLoad;
  void set onLoad(EventHandler<Event> v) {
    _onLoad = v;
    _onLoadSet = true;
  }

  StreamSubscription _onLoadedDataSub;
  bool _onLoadedDataSet = false;
  EventHandler<Event> _onLoadedData;
  EventHandler<Event> get onLoadedData => _onLoadedData;
  void set onLoadedData(EventHandler<Event> v) {
    _onLoadedData = v;
    _onLoadedDataSet = true;
  }

  StreamSubscription _onLoadedMetadataSub;
  bool _onLoadedMetadataSet = false;
  EventHandler<Event> _onLoadedMetadata;
  EventHandler<Event> get onLoadedMetadata => _onLoadedMetadata;
  void set onLoadedMetadata(EventHandler<Event> v) {
    _onLoadedMetadata = v;
    _onLoadedMetadataSet = true;
  }

  StreamSubscription _onMouseDownSub;
  bool _onMouseDownSet = false;
  EventHandler<MouseEvent> _onMouseDown;
  EventHandler<MouseEvent> get onMouseDown => _onMouseDown;
  void set onMouseDown(EventHandler<MouseEvent> v) {
    _onMouseDown = v;
    _onMouseDownSet = true;
  }

  StreamSubscription _onMouseEnterSub;
  bool _onMouseEnterSet = false;
  EventHandler<MouseEvent> _onMouseEnter;
  EventHandler<MouseEvent> get onMouseEnter => _onMouseEnter;
  void set onMouseEnter(EventHandler<MouseEvent> v) {
    _onMouseEnter = v;
    _onMouseEnterSet = true;
  }

  StreamSubscription _onMouseLeaveSub;
  bool _onMouseLeaveSet = false;
  EventHandler<MouseEvent> _onMouseLeave;
  EventHandler<MouseEvent> get onMouseLeave => _onMouseLeave;
  void set onMouseLeave(EventHandler<MouseEvent> v) {
    _onMouseLeave = v;
    _onMouseLeaveSet = true;
  }

  StreamSubscription _onMouseMoveSub;
  bool _onMouseMoveSet = false;
  EventHandler<MouseEvent> _onMouseMove;
  EventHandler<MouseEvent> get onMouseMove => _onMouseMove;
  void set onMouseMove(EventHandler<MouseEvent> v) {
    _onMouseMove = v;
    _onMouseMoveSet = true;
  }

  StreamSubscription _onMouseOutSub;
  bool _onMouseOutSet = false;
  EventHandler<MouseEvent> _onMouseOut;
  EventHandler<MouseEvent> get onMouseOut => _onMouseOut;
  void set onMouseOut(EventHandler<MouseEvent> v) {
    _onMouseOut = v;
    _onMouseOutSet = true;
  }

  StreamSubscription _onMouseOverSub;
  bool _onMouseOverSet = false;
  EventHandler<MouseEvent> _onMouseOver;
  EventHandler<MouseEvent> get onMouseOver => _onMouseOver;
  void set onMouseOver(EventHandler<MouseEvent> v) {
    _onMouseOver = v;
    _onMouseOverSet = true;
  }

  StreamSubscription _onMouseUpSub;
  bool _onMouseUpSet = false;
  EventHandler<MouseEvent> _onMouseUp;
  EventHandler<MouseEvent> get onMouseUp => _onMouseUp;
  void set onMouseUp(EventHandler<MouseEvent> v) {
    _onMouseUp = v;
    _onMouseUpSet = true;
  }

  StreamSubscription _onMouseWheelSub;
  bool _onMouseWheelSet = false;
  EventHandler<WheelEvent> _onMouseWheel;
  EventHandler<WheelEvent> get onMouseWheel => _onMouseWheel;
  void set onMouseWheel(EventHandler<WheelEvent> v) {
    _onMouseWheel = v;
    _onMouseWheelSet = true;
  }

  StreamSubscription _onPasteSub;
  bool _onPasteSet = false;
  EventHandler<ClipboardEvent> _onPaste;
  EventHandler<ClipboardEvent> get onPaste => _onPaste;
  void set onPaste(EventHandler<ClipboardEvent> v) {
    _onPaste = v;
    _onPasteSet = true;
  }

  StreamSubscription _onPauseSub;
  bool _onPauseSet = false;
  EventHandler<Event> _onPause;
  EventHandler<Event> get onPause => _onPause;
  void set onPause(EventHandler<Event> v) {
    _onPause = v;
    _onPauseSet = true;
  }

  StreamSubscription _onPlaySub;
  bool _onPlaySet = false;
  EventHandler<Event> _onPlay;
  EventHandler<Event> get onPlay => _onPlay;
  void set onPlay(EventHandler<Event> v) {
    _onPlay = v;
    _onPlaySet = true;
  }

  StreamSubscription _onPlayingSub;
  bool _onPlayingSet = false;
  EventHandler<Event> _onPlaying;
  EventHandler<Event> get onPlaying => _onPlaying;
  void set onPlaying(EventHandler<Event> v) {
    _onPlaying = v;
    _onPlayingSet = true;
  }

  StreamSubscription _onRateChangeSub;
  bool _onRateChangeSet = false;
  EventHandler<Event> _onRateChange;
  EventHandler<Event> get onRateChange => _onRateChange;
  void set onRateChange(EventHandler<Event> v) {
    _onRateChange = v;
    _onRateChangeSet = true;
  }

  StreamSubscription _onResetSub;
  bool _onResetSet = false;
  EventHandler<Event> _onReset;
  EventHandler<Event> get onReset => _onReset;
  void set onReset(EventHandler<Event> v) {
    _onReset = v;
    _onResetSet = true;
  }

  StreamSubscription _onResizeSub;
  bool _onResizeSet = false;
  EventHandler<Event> _onResize;
  EventHandler<Event> get onResize => _onResize;
  void set onResize(EventHandler<Event> v) {
    _onResize = v;
    _onResizeSet = true;
  }

  StreamSubscription _onScrollSub;
  bool _onScrollSet = false;
  EventHandler<Event> _onScroll;
  EventHandler<Event> get onScroll => _onScroll;
  void set onScroll(EventHandler<Event> v) {
    _onScroll = v;
    _onScrollSet = true;
  }

  StreamSubscription _onSearchSub;
  bool _onSearchSet = false;
  EventHandler<Event> _onSearch;
  EventHandler<Event> get onSearch => _onSearch;
  void set onSearch(EventHandler<Event> v) {
    _onSearch = v;
    _onSearchSet = true;
  }

  StreamSubscription _onSeekedSub;
  bool _onSeekedSet = false;
  EventHandler<Event> _onSeeked;
  EventHandler<Event> get onSeeked => _onSeeked;
  void set onSeeked(EventHandler<Event> v) {
    _onSeeked = v;
    _onSeekedSet = true;
  }

  StreamSubscription _onSeekingSub;
  bool _onSeekingSet = false;
  EventHandler<Event> _onSeeking;
  EventHandler<Event> get onSeeking => _onSeeking;
  void set onSeeking(EventHandler<Event> v) {
    _onSeeking = v;
    _onSeekingSet = true;
  }

  StreamSubscription _onSelectSub;
  bool _onSelectSet = false;
  EventHandler<Event> _onSelect;
  EventHandler<Event> get onSelect => _onSelect;
  void set onSelect(EventHandler<Event> v) {
    _onSelect = v;
    _onSelectSet = true;
  }

  StreamSubscription _onSelectStartSub;
  bool _onSelectStartSet = false;
  EventHandler<Event> _onSelectStart;
  EventHandler<Event> get onSelectStart => _onSelectStart;
  void set onSelectStart(EventHandler<Event> v) {
    _onSelectStart = v;
    _onSelectStartSet = true;
  }

  StreamSubscription _onStalledSub;
  bool _onStalledSet = false;
  EventHandler<Event> _onStalled;
  EventHandler<Event> get onStalled => _onStalled;
  void set onStalled(EventHandler<Event> v) {
    _onStalled = v;
    _onStalledSet = true;
  }

  StreamSubscription _onSubmitSub;
  bool _onSubmitSet = false;
  EventHandler<Event> _onSubmit;
  EventHandler<Event> get onSubmit => _onSubmit;
  void set onSubmit(EventHandler<Event> v) {
    _onSubmit = v;
    _onSubmitSet = true;
  }

  StreamSubscription _onSuspendSub;
  bool _onSuspendSet = false;
  EventHandler<Event> _onSuspend;
  EventHandler<Event> get onSuspend => _onSuspend;
  void set onSuspend(EventHandler<Event> v) {
    _onSuspend = v;
    _onSuspendSet = true;
  }

  StreamSubscription _onTimeUpdateSub;
  bool _onTimeUpdateSet = false;
  EventHandler<Event> _onTimeUpdate;
  EventHandler<Event> get onTimeUpdate => _onTimeUpdate;
  void set onTimeUpdate(EventHandler<Event> v) {
    _onTimeUpdate = v;
    _onTimeUpdateSet = true;
  }

  StreamSubscription _onTouchCancelSub;
  bool _onTouchCancelSet = false;
  EventHandler<TouchEvent> _onTouchCancel;
  EventHandler<TouchEvent> get onTouchCancel => _onTouchCancel;
  void set onTouchCancel(EventHandler<TouchEvent> v) {
    _onTouchCancel = v;
    _onTouchCancelSet = true;
  }

  StreamSubscription _onTouchEndSub;
  bool _onTouchEndSet = false;
  EventHandler<TouchEvent> _onTouchEnd;
  EventHandler<TouchEvent> get onTouchEnd => _onTouchEnd;
  void set onTouchEnd(EventHandler<TouchEvent> v) {
    _onTouchEnd = v;
    _onTouchEndSet = true;
  }

  StreamSubscription _onTouchEnterSub;
  bool _onTouchEnterSet = false;
  EventHandler<TouchEvent> _onTouchEnter;
  EventHandler<TouchEvent> get onTouchEnter => _onTouchEnter;
  void set onTouchEnter(EventHandler<TouchEvent> v) {
    _onTouchEnter = v;
    _onTouchEnterSet = true;
  }

  StreamSubscription _onTouchLeaveSub;
  bool _onTouchLeaveSet = false;
  EventHandler<TouchEvent> _onTouchLeave;
  EventHandler<TouchEvent> get onTouchLeave => _onTouchLeave;
  void set onTouchLeave(EventHandler<TouchEvent> v) {
    _onTouchLeave = v;
    _onTouchLeaveSet = true;
  }

  StreamSubscription _onTouchMoveSub;
  bool _onTouchMoveSet = false;
  EventHandler<TouchEvent> _onTouchMove;
  EventHandler<TouchEvent> get onTouchMove => _onTouchMove;
  void set onTouchMove(EventHandler<TouchEvent> v) {
    _onTouchMove = v;
    _onTouchMoveSet = true;
  }

  StreamSubscription _onTouchStartSub;
  bool _onTouchStartSet = false;
  EventHandler<TouchEvent> _onTouchStart;
  EventHandler<TouchEvent> get onTouchStart => _onTouchStart;
  void set onTouchStart(EventHandler<TouchEvent> v) {
    _onTouchStart = v;
    _onTouchStartSet = true;
  }

  StreamSubscription _onTransitionEndSub;
  bool _onTransitionEndSet = false;
  EventHandler<TransitionEvent> _onTransitionEnd;
  EventHandler<TransitionEvent> get onTransitionEnd => _onTransitionEnd;
  void set onTransitionEnd(EventHandler<TransitionEvent> v) {
    _onTransitionEnd = v;
    _onTransitionEndSet = true;
  }

  StreamSubscription _onVolumeChangeSub;
  bool _onVolumeChangeSet = false;
  EventHandler<Event> _onVolumeChange;
  EventHandler<Event> get onVolumeChange => _onVolumeChange;
  void set onVolumeChange(EventHandler<Event> v) {
    _onVolumeChange = v;
    _onVolumeChangeSet = true;
  }

  StreamSubscription _onWaitingSub;
  bool _onWaitingSet = false;
  EventHandler<Event> _onWaiting;
  EventHandler<Event> get onWaiting => _onWaiting;
  void set onWaiting(EventHandler<Event> v) {
    _onWaiting = v;
    _onWaitingSet = true;
  }

  StreamSubscription _onFullscreenChangeSub;
  bool _onFullscreenChangeSet = false;
  EventHandler<Event> _onFullscreenChange;
  EventHandler<Event> get onFullscreenChange => _onFullscreenChange;
  void set onFullscreenChange(EventHandler<Event> v) {
    _onFullscreenChange = v;
    _onFullscreenChangeSet = true;
  }

  StreamSubscription _onFullscreenErrorSub;
  bool _onFullscreenErrorSet = false;
  EventHandler<Event> _onFullscreenError;
  EventHandler<Event> get onFullscreenError => _onFullscreenError;
  void set onFullscreenError(EventHandler<Event> v) {
    _onFullscreenError = v;
    _onFullscreenErrorSet = true;
  }

  void _applyAttributesToElement(E ele) {
    if (_textSet) {
      final first = ele.firstChild;
      if (first != null &&
          first == ele.lastChild &&
          first.nodeType == Node.TEXT_NODE) {
        first.text = text;
      } else {
        ele.text = text;
      }
    }
    if (styleBuilder != null) styleBuilder(ele.style);

    if (_contentEditableSet) ele.contentEditable = _contentEditable;
    if (_contextMenuSet) ele.contextMenu = _contextMenu;
    if (_dirSet) ele.dir = _dir;
    if (_draggableSet) ele.draggable = _draggable;
    if (_hiddenSet) ele.hidden = _hidden;
    if (_langSet) ele.lang = _lang;
    if (_spellcheckSet) ele.spellcheck = _spellcheck;
    if (_tabIndexSet) ele.tabIndex = _tabIndex;
    if (_titleSet) ele.title = _title;
    if (_translateSet) ele.translate = _translate;
    if (_dropzoneSet) ele.dropzone = _dropzone;
    if (_classNameSet) ele.className = _className;
    if (_idSet) ele.id = _id;
    if (_slotSet) ele.slot = _slot;
    if (_attributesSet) ele.attributes = _attributes;
    if (_classesSet) ele.classes = _classes;
    if (_datasetSet) ele.dataset = _dataset;
    if (_xtagSet) ele.xtag = _xtag;
    if (_innerHtmlSet) ele.innerHtml = _innerHtml;
    if (_scrollLeftSet) ele.scrollLeft = _scrollLeft;
    if (_scrollTopSet) ele.scrollTop = _scrollTop;
  }

  void _updateElementAttributes(covariant VElement<E> prev, E ele) {
    if (_text != prev._text) {
      final first = ele.firstChild;
      if (first != null &&
          first == ele.lastChild &&
          first.nodeType == Node.TEXT_NODE) {
        first.text = text;
      } else {
        ele.text = text;
      }
    }
    if (styleBuilder != null) styleBuilder(ele.style);

    if (_contentEditable != prev._contentEditable)
      ele.contentEditable = _contentEditable;
    if (_contextMenu != prev._contextMenu) ele.contextMenu = _contextMenu;
    if (_dir != prev._dir) ele.dir = _dir;
    if (_draggable != prev._draggable) ele.draggable = _draggable;
    if (_hidden != prev._hidden) ele.hidden = _hidden;
    if (_lang != prev._lang) ele.lang = _lang;
    if (_spellcheck != prev._spellcheck) ele.spellcheck = _spellcheck;
    if (_tabIndex != prev._tabIndex) ele.tabIndex = _tabIndex;
    if (_title != prev._title) ele.title = _title;
    if (_translate != prev._translate) ele.translate = _translate;
    if (_dropzone != prev._dropzone) ele.dropzone = _dropzone;
    if (_className != prev._className) ele.className = _className;
    if (_id != prev._id) ele.id = _id;
    if (_slot != prev._slot) ele.slot = _slot;
    if (_attributes != prev._attributes) ele.attributes = _attributes;
    if (_classes != prev._classes) ele.classes = _classes;
    if (_dataset != prev._dataset) ele.dataset = _dataset;
    if (_xtag != prev._xtag) ele.xtag = _xtag;
    if (_innerHtml != prev._innerHtml) ele.innerHtml = _innerHtml;
    if (_scrollLeft != prev._scrollLeft) ele.scrollLeft = _scrollLeft;
    if (_scrollTop != prev._scrollTop) ele.scrollTop = _scrollTop;
  }

  void _applyEventListenersToElement(Element ele) {
    if (_onAbortSet) _onAbortSub = ele.onAbort.listen(onAbort);
    if (_onBeforeCopySet)
      _onBeforeCopySub = ele.onBeforeCopy.listen(onBeforeCopy);
    if (_onBeforeCutSet) _onBeforeCutSub = ele.onBeforeCut.listen(onBeforeCut);
    if (_onBeforePasteSet)
      _onBeforePasteSub = ele.onBeforePaste.listen(onBeforePaste);
    if (_onBlurSet) _onBlurSub = ele.onBlur.listen(onBlur);
    if (_onCanPlaySet) _onCanPlaySub = ele.onCanPlay.listen(onCanPlay);
    if (_onCanPlayThroughSet)
      _onCanPlayThroughSub = ele.onCanPlayThrough.listen(onCanPlayThrough);
    if (_onChangeSet) _onChangeSub = ele.onChange.listen(onChange);
    if (_onClickSet) _onClickSub = ele.onClick.listen(onClick);
    if (_onContextMenuSet)
      _onContextMenuSub = ele.onContextMenu.listen(onContextMenu);
    if (_onCopySet) _onCopySub = ele.onCopy.listen(onCopy);
    if (_onCutSet) _onCutSub = ele.onCut.listen(onCut);
    if (_onDoubleClickSet)
      _onDoubleClickSub = ele.onDoubleClick.listen(onDoubleClick);
    if (_onDragSet) _onDragSub = ele.onDrag.listen(onDrag);
    if (_onDragEndSet) _onDragEndSub = ele.onDragEnd.listen(onDragEnd);
    if (_onDragEnterSet) _onDragEnterSub = ele.onDragEnter.listen(onDragEnter);
    if (_onDragLeaveSet) _onDragLeaveSub = ele.onDragLeave.listen(onDragLeave);
    if (_onDragOverSet) _onDragOverSub = ele.onDragOver.listen(onDragOver);
    if (_onDragStartSet) _onDragStartSub = ele.onDragStart.listen(onDragStart);
    if (_onDropSet) _onDropSub = ele.onDrop.listen(onDrop);
    if (_onDurationChangeSet)
      _onDurationChangeSub = ele.onDurationChange.listen(onDurationChange);
    if (_onEmptiedSet) _onEmptiedSub = ele.onEmptied.listen(onEmptied);
    if (_onEndedSet) _onEndedSub = ele.onEnded.listen(onEnded);
    if (_onErrorSet) _onErrorSub = ele.onError.listen(onError);
    if (_onFocusSet) _onFocusSub = ele.onFocus.listen(onFocus);
    if (_onInputSet) _onInputSub = ele.onInput.listen(onInput);
    if (_onInvalidSet) _onInvalidSub = ele.onInvalid.listen(onInvalid);
    if (_onKeyDownSet) _onKeyDownSub = ele.onKeyDown.listen(onKeyDown);
    if (_onKeyPressSet) _onKeyPressSub = ele.onKeyPress.listen(onKeyPress);
    if (_onKeyUpSet) _onKeyUpSub = ele.onKeyUp.listen(onKeyUp);
    if (_onLoadSet) _onLoadSub = ele.onLoad.listen(onLoad);
    if (_onLoadedDataSet)
      _onLoadedDataSub = ele.onLoadedData.listen(onLoadedData);
    if (_onLoadedMetadataSet)
      _onLoadedMetadataSub = ele.onLoadedMetadata.listen(onLoadedMetadata);
    if (_onMouseDownSet) _onMouseDownSub = ele.onMouseDown.listen(onMouseDown);
    if (_onMouseEnterSet)
      _onMouseEnterSub = ele.onMouseEnter.listen(onMouseEnter);
    if (_onMouseLeaveSet)
      _onMouseLeaveSub = ele.onMouseLeave.listen(onMouseLeave);
    if (_onMouseMoveSet) _onMouseMoveSub = ele.onMouseMove.listen(onMouseMove);
    if (_onMouseOutSet) _onMouseOutSub = ele.onMouseOut.listen(onMouseOut);
    if (_onMouseOverSet) _onMouseOverSub = ele.onMouseOver.listen(onMouseOver);
    if (_onMouseUpSet) _onMouseUpSub = ele.onMouseUp.listen(onMouseUp);
    if (_onMouseWheelSet)
      _onMouseWheelSub = ele.onMouseWheel.listen(onMouseWheel);
    if (_onPasteSet) _onPasteSub = ele.onPaste.listen(onPaste);
    if (_onPauseSet) _onPauseSub = ele.onPause.listen(onPause);
    if (_onPlaySet) _onPlaySub = ele.onPlay.listen(onPlay);
    if (_onPlayingSet) _onPlayingSub = ele.onPlaying.listen(onPlaying);
    if (_onRateChangeSet)
      _onRateChangeSub = ele.onRateChange.listen(onRateChange);
    if (_onResetSet) _onResetSub = ele.onReset.listen(onReset);
    if (_onResizeSet) _onResizeSub = ele.onResize.listen(onResize);
    if (_onScrollSet) _onScrollSub = ele.onScroll.listen(onScroll);
    if (_onSearchSet) _onSearchSub = ele.onSearch.listen(onSearch);
    if (_onSeekedSet) _onSeekedSub = ele.onSeeked.listen(onSeeked);
    if (_onSeekingSet) _onSeekingSub = ele.onSeeking.listen(onSeeking);
    if (_onSelectSet) _onSelectSub = ele.onSelect.listen(onSelect);
    if (_onSelectStartSet)
      _onSelectStartSub = ele.onSelectStart.listen(onSelectStart);
    if (_onStalledSet) _onStalledSub = ele.onStalled.listen(onStalled);
    if (_onSubmitSet) _onSubmitSub = ele.onSubmit.listen(onSubmit);
    if (_onSuspendSet) _onSuspendSub = ele.onSuspend.listen(onSuspend);
    if (_onTimeUpdateSet)
      _onTimeUpdateSub = ele.onTimeUpdate.listen(onTimeUpdate);
    if (_onTouchCancelSet)
      _onTouchCancelSub = ele.onTouchCancel.listen(onTouchCancel);
    if (_onTouchEndSet) _onTouchEndSub = ele.onTouchEnd.listen(onTouchEnd);
    if (_onTouchEnterSet)
      _onTouchEnterSub = ele.onTouchEnter.listen(onTouchEnter);
    if (_onTouchLeaveSet)
      _onTouchLeaveSub = ele.onTouchLeave.listen(onTouchLeave);
    if (_onTouchMoveSet) _onTouchMoveSub = ele.onTouchMove.listen(onTouchMove);
    if (_onTouchStartSet)
      _onTouchStartSub = ele.onTouchStart.listen(onTouchStart);
    if (_onTransitionEndSet)
      _onTransitionEndSub = ele.onTransitionEnd.listen(onTransitionEnd);
    if (_onVolumeChangeSet)
      _onVolumeChangeSub = ele.onVolumeChange.listen(onVolumeChange);
    if (_onWaitingSet) _onWaitingSub = ele.onWaiting.listen(onWaiting);
    if (_onFullscreenChangeSet)
      _onFullscreenChangeSub =
          ele.onFullscreenChange.listen(onFullscreenChange);
    if (_onFullscreenErrorSet)
      _onFullscreenErrorSub = ele.onFullscreenError.listen(onFullscreenError);
  }

  void _updateEventListenersToElement(VElement prev, Element ele) {
    if (_onAbortSet) {
      if (!prev._onAbortSet) {
        _onAbortSub = ele.onAbort.listen(onAbort);
      } else if (prev.onAbort != onAbort) {
        prev._onAbortSub.cancel();
        _onAbortSub = ele.onAbort.listen(onAbort);
      } else {
        _onAbortSub = prev._onAbortSub;
      }
    } else if (prev._onAbortSet) {
      prev._onAbortSub.cancel();
    }
    if (_onBeforeCopySet) {
      if (!prev._onBeforeCopySet) {
        _onBeforeCopySub = ele.onBeforeCopy.listen(onBeforeCopy);
      } else if (prev.onBeforeCopy != onBeforeCopy) {
        prev._onBeforeCopySub.cancel();
        _onBeforeCopySub = ele.onBeforeCopy.listen(onBeforeCopy);
      } else {
        _onBeforeCopySub = prev._onBeforeCopySub;
      }
    } else if (prev._onBeforeCopySet) {
      prev._onBeforeCopySub.cancel();
    }
    if (_onBeforeCutSet) {
      if (!prev._onBeforeCutSet) {
        _onBeforeCutSub = ele.onBeforeCut.listen(onBeforeCut);
      } else if (prev.onBeforeCut != onBeforeCut) {
        prev._onBeforeCutSub.cancel();
        _onBeforeCutSub = ele.onBeforeCut.listen(onBeforeCut);
      } else {
        _onBeforeCutSub = prev._onBeforeCutSub;
      }
    } else if (prev._onBeforeCutSet) {
      prev._onBeforeCutSub.cancel();
    }
    if (_onBeforePasteSet) {
      if (!prev._onBeforePasteSet) {
        _onBeforePasteSub = ele.onBeforePaste.listen(onBeforePaste);
      } else if (prev.onBeforePaste != onBeforePaste) {
        prev._onBeforePasteSub.cancel();
        _onBeforePasteSub = ele.onBeforePaste.listen(onBeforePaste);
      } else {
        _onBeforePasteSub = prev._onBeforePasteSub;
      }
    } else if (prev._onBeforePasteSet) {
      prev._onBeforePasteSub.cancel();
    }
    if (_onBlurSet) {
      if (!prev._onBlurSet) {
        _onBlurSub = ele.onBlur.listen(onBlur);
      } else if (prev.onBlur != onBlur) {
        prev._onBlurSub.cancel();
        _onBlurSub = ele.onBlur.listen(onBlur);
      } else {
        _onBlurSub = prev._onBlurSub;
      }
    } else if (prev._onBlurSet) {
      prev._onBlurSub.cancel();
    }
    if (_onCanPlaySet) {
      if (!prev._onCanPlaySet) {
        _onCanPlaySub = ele.onCanPlay.listen(onCanPlay);
      } else if (prev.onCanPlay != onCanPlay) {
        prev._onCanPlaySub.cancel();
        _onCanPlaySub = ele.onCanPlay.listen(onCanPlay);
      } else {
        _onCanPlaySub = prev._onCanPlaySub;
      }
    } else if (prev._onCanPlaySet) {
      prev._onCanPlaySub.cancel();
    }
    if (_onCanPlayThroughSet) {
      if (!prev._onCanPlayThroughSet) {
        _onCanPlayThroughSub = ele.onCanPlayThrough.listen(onCanPlayThrough);
      } else if (prev.onCanPlayThrough != onCanPlayThrough) {
        prev._onCanPlayThroughSub.cancel();
        _onCanPlayThroughSub = ele.onCanPlayThrough.listen(onCanPlayThrough);
      } else {
        _onCanPlayThroughSub = prev._onCanPlayThroughSub;
      }
    } else if (prev._onCanPlayThroughSet) {
      prev._onCanPlayThroughSub.cancel();
    }
    if (_onChangeSet) {
      if (!prev._onChangeSet) {
        _onChangeSub = ele.onChange.listen(onChange);
      } else if (prev.onChange != onChange) {
        prev._onChangeSub.cancel();
        _onChangeSub = ele.onChange.listen(onChange);
      } else {
        _onChangeSub = prev._onChangeSub;
      }
    } else if (prev._onChangeSet) {
      prev._onChangeSub.cancel();
    }
    if (_onClickSet) {
      if (!prev._onClickSet) {
        _onClickSub = ele.onClick.listen(onClick);
      } else if (prev.onClick != onClick) {
        prev._onClickSub.cancel();
        _onClickSub = ele.onClick.listen(onClick);
      } else {
        _onClickSub = prev._onClickSub;
      }
    } else if (prev._onClickSet) {
      prev._onClickSub.cancel();
    }
    if (_onContextMenuSet) {
      if (!prev._onContextMenuSet) {
        _onContextMenuSub = ele.onContextMenu.listen(onContextMenu);
      } else if (prev.onContextMenu != onContextMenu) {
        prev._onContextMenuSub.cancel();
        _onContextMenuSub = ele.onContextMenu.listen(onContextMenu);
      } else {
        _onContextMenuSub = prev._onContextMenuSub;
      }
    } else if (prev._onContextMenuSet) {
      prev._onContextMenuSub.cancel();
    }
    if (_onCopySet) {
      if (!prev._onCopySet) {
        _onCopySub = ele.onCopy.listen(onCopy);
      } else if (prev.onCopy != onCopy) {
        prev._onCopySub.cancel();
        _onCopySub = ele.onCopy.listen(onCopy);
      } else {
        _onCopySub = prev._onCopySub;
      }
    } else if (prev._onCopySet) {
      prev._onCopySub.cancel();
    }
    if (_onCutSet) {
      if (!prev._onCutSet) {
        _onCutSub = ele.onCut.listen(onCut);
      } else if (prev.onCut != onCut) {
        prev._onCutSub.cancel();
        _onCutSub = ele.onCut.listen(onCut);
      } else {
        _onCutSub = prev._onCutSub;
      }
    } else if (prev._onCutSet) {
      prev._onCutSub.cancel();
    }
    if (_onDoubleClickSet) {
      if (!prev._onDoubleClickSet) {
        _onDoubleClickSub = ele.onDoubleClick.listen(onDoubleClick);
      } else if (prev.onDoubleClick != onDoubleClick) {
        prev._onDoubleClickSub.cancel();
        _onDoubleClickSub = ele.onDoubleClick.listen(onDoubleClick);
      } else {
        _onDoubleClickSub = prev._onDoubleClickSub;
      }
    } else if (prev._onDoubleClickSet) {
      prev._onDoubleClickSub.cancel();
    }
    if (_onDragSet) {
      if (!prev._onDragSet) {
        _onDragSub = ele.onDrag.listen(onDrag);
      } else if (prev.onDrag != onDrag) {
        prev._onDragSub.cancel();
        _onDragSub = ele.onDrag.listen(onDrag);
      } else {
        _onDragSub = prev._onDragSub;
      }
    } else if (prev._onDragSet) {
      prev._onDragSub.cancel();
    }
    if (_onDragEndSet) {
      if (!prev._onDragEndSet) {
        _onDragEndSub = ele.onDragEnd.listen(onDragEnd);
      } else if (prev.onDragEnd != onDragEnd) {
        prev._onDragEndSub.cancel();
        _onDragEndSub = ele.onDragEnd.listen(onDragEnd);
      } else {
        _onDragEndSub = prev._onDragEndSub;
      }
    } else if (prev._onDragEndSet) {
      prev._onDragEndSub.cancel();
    }
    if (_onDragEnterSet) {
      if (!prev._onDragEnterSet) {
        _onDragEnterSub = ele.onDragEnter.listen(onDragEnter);
      } else if (prev.onDragEnter != onDragEnter) {
        prev._onDragEnterSub.cancel();
        _onDragEnterSub = ele.onDragEnter.listen(onDragEnter);
      } else {
        _onDragEnterSub = prev._onDragEnterSub;
      }
    } else if (prev._onDragEnterSet) {
      prev._onDragEnterSub.cancel();
    }
    if (_onDragLeaveSet) {
      if (!prev._onDragLeaveSet) {
        _onDragLeaveSub = ele.onDragLeave.listen(onDragLeave);
      } else if (prev.onDragLeave != onDragLeave) {
        prev._onDragLeaveSub.cancel();
        _onDragLeaveSub = ele.onDragLeave.listen(onDragLeave);
      } else {
        _onDragLeaveSub = prev._onDragLeaveSub;
      }
    } else if (prev._onDragLeaveSet) {
      prev._onDragLeaveSub.cancel();
    }
    if (_onDragOverSet) {
      if (!prev._onDragOverSet) {
        _onDragOverSub = ele.onDragOver.listen(onDragOver);
      } else if (prev.onDragOver != onDragOver) {
        prev._onDragOverSub.cancel();
        _onDragOverSub = ele.onDragOver.listen(onDragOver);
      } else {
        _onDragOverSub = prev._onDragOverSub;
      }
    } else if (prev._onDragOverSet) {
      prev._onDragOverSub.cancel();
    }
    if (_onDragStartSet) {
      if (!prev._onDragStartSet) {
        _onDragStartSub = ele.onDragStart.listen(onDragStart);
      } else if (prev.onDragStart != onDragStart) {
        prev._onDragStartSub.cancel();
        _onDragStartSub = ele.onDragStart.listen(onDragStart);
      } else {
        _onDragStartSub = prev._onDragStartSub;
      }
    } else if (prev._onDragStartSet) {
      prev._onDragStartSub.cancel();
    }
    if (_onDropSet) {
      if (!prev._onDropSet) {
        _onDropSub = ele.onDrop.listen(onDrop);
      } else if (prev.onDrop != onDrop) {
        prev._onDropSub.cancel();
        _onDropSub = ele.onDrop.listen(onDrop);
      } else {
        _onDropSub = prev._onDropSub;
      }
    } else if (prev._onDropSet) {
      prev._onDropSub.cancel();
    }
    if (_onDurationChangeSet) {
      if (!prev._onDurationChangeSet) {
        _onDurationChangeSub = ele.onDurationChange.listen(onDurationChange);
      } else if (prev.onDurationChange != onDurationChange) {
        prev._onDurationChangeSub.cancel();
        _onDurationChangeSub = ele.onDurationChange.listen(onDurationChange);
      } else {
        _onDurationChangeSub = prev._onDurationChangeSub;
      }
    } else if (prev._onDurationChangeSet) {
      prev._onDurationChangeSub.cancel();
    }
    if (_onEmptiedSet) {
      if (!prev._onEmptiedSet) {
        _onEmptiedSub = ele.onEmptied.listen(onEmptied);
      } else if (prev.onEmptied != onEmptied) {
        prev._onEmptiedSub.cancel();
        _onEmptiedSub = ele.onEmptied.listen(onEmptied);
      } else {
        _onEmptiedSub = prev._onEmptiedSub;
      }
    } else if (prev._onEmptiedSet) {
      prev._onEmptiedSub.cancel();
    }
    if (_onEndedSet) {
      if (!prev._onEndedSet) {
        _onEndedSub = ele.onEnded.listen(onEnded);
      } else if (prev.onEnded != onEnded) {
        prev._onEndedSub.cancel();
        _onEndedSub = ele.onEnded.listen(onEnded);
      } else {
        _onEndedSub = prev._onEndedSub;
      }
    } else if (prev._onEndedSet) {
      prev._onEndedSub.cancel();
    }
    if (_onErrorSet) {
      if (!prev._onErrorSet) {
        _onErrorSub = ele.onError.listen(onError);
      } else if (prev.onError != onError) {
        prev._onErrorSub.cancel();
        _onErrorSub = ele.onError.listen(onError);
      } else {
        _onErrorSub = prev._onErrorSub;
      }
    } else if (prev._onErrorSet) {
      prev._onErrorSub.cancel();
    }
    if (_onFocusSet) {
      if (!prev._onFocusSet) {
        _onFocusSub = ele.onFocus.listen(onFocus);
      } else if (prev.onFocus != onFocus) {
        prev._onFocusSub.cancel();
        _onFocusSub = ele.onFocus.listen(onFocus);
      } else {
        _onFocusSub = prev._onFocusSub;
      }
    } else if (prev._onFocusSet) {
      prev._onFocusSub.cancel();
    }
    if (_onInputSet) {
      if (!prev._onInputSet) {
        _onInputSub = ele.onInput.listen(onInput);
      } else if (prev.onInput != onInput) {
        prev._onInputSub.cancel();
        _onInputSub = ele.onInput.listen(onInput);
      } else {
        _onInputSub = prev._onInputSub;
      }
    } else if (prev._onInputSet) {
      prev._onInputSub.cancel();
    }
    if (_onInvalidSet) {
      if (!prev._onInvalidSet) {
        _onInvalidSub = ele.onInvalid.listen(onInvalid);
      } else if (prev.onInvalid != onInvalid) {
        prev._onInvalidSub.cancel();
        _onInvalidSub = ele.onInvalid.listen(onInvalid);
      } else {
        _onInvalidSub = prev._onInvalidSub;
      }
    } else if (prev._onInvalidSet) {
      prev._onInvalidSub.cancel();
    }
    if (_onKeyDownSet) {
      if (!prev._onKeyDownSet) {
        _onKeyDownSub = ele.onKeyDown.listen(onKeyDown);
      } else if (prev.onKeyDown != onKeyDown) {
        prev._onKeyDownSub.cancel();
        _onKeyDownSub = ele.onKeyDown.listen(onKeyDown);
      } else {
        _onKeyDownSub = prev._onKeyDownSub;
      }
    } else if (prev._onKeyDownSet) {
      prev._onKeyDownSub.cancel();
    }
    if (_onKeyPressSet) {
      if (!prev._onKeyPressSet) {
        _onKeyPressSub = ele.onKeyPress.listen(onKeyPress);
      } else if (prev.onKeyPress != onKeyPress) {
        prev._onKeyPressSub.cancel();
        _onKeyPressSub = ele.onKeyPress.listen(onKeyPress);
      } else {
        _onKeyPressSub = prev._onKeyPressSub;
      }
    } else if (prev._onKeyPressSet) {
      prev._onKeyPressSub.cancel();
    }
    if (_onKeyUpSet) {
      if (!prev._onKeyUpSet) {
        _onKeyUpSub = ele.onKeyUp.listen(onKeyUp);
      } else if (prev.onKeyUp != onKeyUp) {
        prev._onKeyUpSub.cancel();
        _onKeyUpSub = ele.onKeyUp.listen(onKeyUp);
      } else {
        _onKeyUpSub = prev._onKeyUpSub;
      }
    } else if (prev._onKeyUpSet) {
      prev._onKeyUpSub.cancel();
    }
    if (_onLoadSet) {
      if (!prev._onLoadSet) {
        _onLoadSub = ele.onLoad.listen(onLoad);
      } else if (prev.onLoad != onLoad) {
        prev._onLoadSub.cancel();
        _onLoadSub = ele.onLoad.listen(onLoad);
      } else {
        _onLoadSub = prev._onLoadSub;
      }
    } else if (prev._onLoadSet) {
      prev._onLoadSub.cancel();
    }
    if (_onLoadedDataSet) {
      if (!prev._onLoadedDataSet) {
        _onLoadedDataSub = ele.onLoadedData.listen(onLoadedData);
      } else if (prev.onLoadedData != onLoadedData) {
        prev._onLoadedDataSub.cancel();
        _onLoadedDataSub = ele.onLoadedData.listen(onLoadedData);
      } else {
        _onLoadedDataSub = prev._onLoadedDataSub;
      }
    } else if (prev._onLoadedDataSet) {
      prev._onLoadedDataSub.cancel();
    }
    if (_onLoadedMetadataSet) {
      if (!prev._onLoadedMetadataSet) {
        _onLoadedMetadataSub = ele.onLoadedMetadata.listen(onLoadedMetadata);
      } else if (prev.onLoadedMetadata != onLoadedMetadata) {
        prev._onLoadedMetadataSub.cancel();
        _onLoadedMetadataSub = ele.onLoadedMetadata.listen(onLoadedMetadata);
      } else {
        _onLoadedMetadataSub = prev._onLoadedMetadataSub;
      }
    } else if (prev._onLoadedMetadataSet) {
      prev._onLoadedMetadataSub.cancel();
    }
    if (_onMouseDownSet) {
      if (!prev._onMouseDownSet) {
        _onMouseDownSub = ele.onMouseDown.listen(onMouseDown);
      } else if (prev.onMouseDown != onMouseDown) {
        prev._onMouseDownSub.cancel();
        _onMouseDownSub = ele.onMouseDown.listen(onMouseDown);
      } else {
        _onMouseDownSub = prev._onMouseDownSub;
      }
    } else if (prev._onMouseDownSet) {
      prev._onMouseDownSub.cancel();
    }
    if (_onMouseEnterSet) {
      if (!prev._onMouseEnterSet) {
        _onMouseEnterSub = ele.onMouseEnter.listen(onMouseEnter);
      } else if (prev.onMouseEnter != onMouseEnter) {
        prev._onMouseEnterSub.cancel();
        _onMouseEnterSub = ele.onMouseEnter.listen(onMouseEnter);
      } else {
        _onMouseEnterSub = prev._onMouseEnterSub;
      }
    } else if (prev._onMouseEnterSet) {
      prev._onMouseEnterSub.cancel();
    }
    if (_onMouseLeaveSet) {
      if (!prev._onMouseLeaveSet) {
        _onMouseLeaveSub = ele.onMouseLeave.listen(onMouseLeave);
      } else if (prev.onMouseLeave != onMouseLeave) {
        prev._onMouseLeaveSub.cancel();
        _onMouseLeaveSub = ele.onMouseLeave.listen(onMouseLeave);
      } else {
        _onMouseLeaveSub = prev._onMouseLeaveSub;
      }
    } else if (prev._onMouseLeaveSet) {
      prev._onMouseLeaveSub.cancel();
    }
    if (_onMouseMoveSet) {
      if (!prev._onMouseMoveSet) {
        _onMouseMoveSub = ele.onMouseMove.listen(onMouseMove);
      } else if (prev.onMouseMove != onMouseMove) {
        prev._onMouseMoveSub.cancel();
        _onMouseMoveSub = ele.onMouseMove.listen(onMouseMove);
      } else {
        _onMouseMoveSub = prev._onMouseMoveSub;
      }
    } else if (prev._onMouseMoveSet) {
      prev._onMouseMoveSub.cancel();
    }
    if (_onMouseOutSet) {
      if (!prev._onMouseOutSet) {
        _onMouseOutSub = ele.onMouseOut.listen(onMouseOut);
      } else if (prev.onMouseOut != onMouseOut) {
        prev._onMouseOutSub.cancel();
        _onMouseOutSub = ele.onMouseOut.listen(onMouseOut);
      } else {
        _onMouseOutSub = prev._onMouseOutSub;
      }
    } else if (prev._onMouseOutSet) {
      prev._onMouseOutSub.cancel();
    }
    if (_onMouseOverSet) {
      if (!prev._onMouseOverSet) {
        _onMouseOverSub = ele.onMouseOver.listen(onMouseOver);
      } else if (prev.onMouseOver != onMouseOver) {
        prev._onMouseOverSub.cancel();
        _onMouseOverSub = ele.onMouseOver.listen(onMouseOver);
      } else {
        _onMouseOverSub = prev._onMouseOverSub;
      }
    } else if (prev._onMouseOverSet) {
      prev._onMouseOverSub.cancel();
    }
    if (_onMouseUpSet) {
      if (!prev._onMouseUpSet) {
        _onMouseUpSub = ele.onMouseUp.listen(onMouseUp);
      } else if (prev.onMouseUp != onMouseUp) {
        prev._onMouseUpSub.cancel();
        _onMouseUpSub = ele.onMouseUp.listen(onMouseUp);
      } else {
        _onMouseUpSub = prev._onMouseUpSub;
      }
    } else if (prev._onMouseUpSet) {
      prev._onMouseUpSub.cancel();
    }
    if (_onMouseWheelSet) {
      if (!prev._onMouseWheelSet) {
        _onMouseWheelSub = ele.onMouseWheel.listen(onMouseWheel);
      } else if (prev.onMouseWheel != onMouseWheel) {
        prev._onMouseWheelSub.cancel();
        _onMouseWheelSub = ele.onMouseWheel.listen(onMouseWheel);
      } else {
        _onMouseWheelSub = prev._onMouseWheelSub;
      }
    } else if (prev._onMouseWheelSet) {
      prev._onMouseWheelSub.cancel();
    }
    if (_onPasteSet) {
      if (!prev._onPasteSet) {
        _onPasteSub = ele.onPaste.listen(onPaste);
      } else if (prev.onPaste != onPaste) {
        prev._onPasteSub.cancel();
        _onPasteSub = ele.onPaste.listen(onPaste);
      } else {
        _onPasteSub = prev._onPasteSub;
      }
    } else if (prev._onPasteSet) {
      prev._onPasteSub.cancel();
    }
    if (_onPauseSet) {
      if (!prev._onPauseSet) {
        _onPauseSub = ele.onPause.listen(onPause);
      } else if (prev.onPause != onPause) {
        prev._onPauseSub.cancel();
        _onPauseSub = ele.onPause.listen(onPause);
      } else {
        _onPauseSub = prev._onPauseSub;
      }
    } else if (prev._onPauseSet) {
      prev._onPauseSub.cancel();
    }
    if (_onPlaySet) {
      if (!prev._onPlaySet) {
        _onPlaySub = ele.onPlay.listen(onPlay);
      } else if (prev.onPlay != onPlay) {
        prev._onPlaySub.cancel();
        _onPlaySub = ele.onPlay.listen(onPlay);
      } else {
        _onPlaySub = prev._onPlaySub;
      }
    } else if (prev._onPlaySet) {
      prev._onPlaySub.cancel();
    }
    if (_onPlayingSet) {
      if (!prev._onPlayingSet) {
        _onPlayingSub = ele.onPlaying.listen(onPlaying);
      } else if (prev.onPlaying != onPlaying) {
        prev._onPlayingSub.cancel();
        _onPlayingSub = ele.onPlaying.listen(onPlaying);
      } else {
        _onPlayingSub = prev._onPlayingSub;
      }
    } else if (prev._onPlayingSet) {
      prev._onPlayingSub.cancel();
    }
    if (_onRateChangeSet) {
      if (!prev._onRateChangeSet) {
        _onRateChangeSub = ele.onRateChange.listen(onRateChange);
      } else if (prev.onRateChange != onRateChange) {
        prev._onRateChangeSub.cancel();
        _onRateChangeSub = ele.onRateChange.listen(onRateChange);
      } else {
        _onRateChangeSub = prev._onRateChangeSub;
      }
    } else if (prev._onRateChangeSet) {
      prev._onRateChangeSub.cancel();
    }
    if (_onResetSet) {
      if (!prev._onResetSet) {
        _onResetSub = ele.onReset.listen(onReset);
      } else if (prev.onReset != onReset) {
        prev._onResetSub.cancel();
        _onResetSub = ele.onReset.listen(onReset);
      } else {
        _onResetSub = prev._onResetSub;
      }
    } else if (prev._onResetSet) {
      prev._onResetSub.cancel();
    }
    if (_onResizeSet) {
      if (!prev._onResizeSet) {
        _onResizeSub = ele.onResize.listen(onResize);
      } else if (prev.onResize != onResize) {
        prev._onResizeSub.cancel();
        _onResizeSub = ele.onResize.listen(onResize);
      } else {
        _onResizeSub = prev._onResizeSub;
      }
    } else if (prev._onResizeSet) {
      prev._onResizeSub.cancel();
    }
    if (_onScrollSet) {
      if (!prev._onScrollSet) {
        _onScrollSub = ele.onScroll.listen(onScroll);
      } else if (prev.onScroll != onScroll) {
        prev._onScrollSub.cancel();
        _onScrollSub = ele.onScroll.listen(onScroll);
      } else {
        _onScrollSub = prev._onScrollSub;
      }
    } else if (prev._onScrollSet) {
      prev._onScrollSub.cancel();
    }
    if (_onSearchSet) {
      if (!prev._onSearchSet) {
        _onSearchSub = ele.onSearch.listen(onSearch);
      } else if (prev.onSearch != onSearch) {
        prev._onSearchSub.cancel();
        _onSearchSub = ele.onSearch.listen(onSearch);
      } else {
        _onSearchSub = prev._onSearchSub;
      }
    } else if (prev._onSearchSet) {
      prev._onSearchSub.cancel();
    }
    if (_onSeekedSet) {
      if (!prev._onSeekedSet) {
        _onSeekedSub = ele.onSeeked.listen(onSeeked);
      } else if (prev.onSeeked != onSeeked) {
        prev._onSeekedSub.cancel();
        _onSeekedSub = ele.onSeeked.listen(onSeeked);
      } else {
        _onSeekedSub = prev._onSeekedSub;
      }
    } else if (prev._onSeekedSet) {
      prev._onSeekedSub.cancel();
    }
    if (_onSeekingSet) {
      if (!prev._onSeekingSet) {
        _onSeekingSub = ele.onSeeking.listen(onSeeking);
      } else if (prev.onSeeking != onSeeking) {
        prev._onSeekingSub.cancel();
        _onSeekingSub = ele.onSeeking.listen(onSeeking);
      } else {
        _onSeekingSub = prev._onSeekingSub;
      }
    } else if (prev._onSeekingSet) {
      prev._onSeekingSub.cancel();
    }
    if (_onSelectSet) {
      if (!prev._onSelectSet) {
        _onSelectSub = ele.onSelect.listen(onSelect);
      } else if (prev.onSelect != onSelect) {
        prev._onSelectSub.cancel();
        _onSelectSub = ele.onSelect.listen(onSelect);
      } else {
        _onSelectSub = prev._onSelectSub;
      }
    } else if (prev._onSelectSet) {
      prev._onSelectSub.cancel();
    }
    if (_onSelectStartSet) {
      if (!prev._onSelectStartSet) {
        _onSelectStartSub = ele.onSelectStart.listen(onSelectStart);
      } else if (prev.onSelectStart != onSelectStart) {
        prev._onSelectStartSub.cancel();
        _onSelectStartSub = ele.onSelectStart.listen(onSelectStart);
      } else {
        _onSelectStartSub = prev._onSelectStartSub;
      }
    } else if (prev._onSelectStartSet) {
      prev._onSelectStartSub.cancel();
    }
    if (_onStalledSet) {
      if (!prev._onStalledSet) {
        _onStalledSub = ele.onStalled.listen(onStalled);
      } else if (prev.onStalled != onStalled) {
        prev._onStalledSub.cancel();
        _onStalledSub = ele.onStalled.listen(onStalled);
      } else {
        _onStalledSub = prev._onStalledSub;
      }
    } else if (prev._onStalledSet) {
      prev._onStalledSub.cancel();
    }
    if (_onSubmitSet) {
      if (!prev._onSubmitSet) {
        _onSubmitSub = ele.onSubmit.listen(onSubmit);
      } else if (prev.onSubmit != onSubmit) {
        prev._onSubmitSub.cancel();
        _onSubmitSub = ele.onSubmit.listen(onSubmit);
      } else {
        _onSubmitSub = prev._onSubmitSub;
      }
    } else if (prev._onSubmitSet) {
      prev._onSubmitSub.cancel();
    }
    if (_onSuspendSet) {
      if (!prev._onSuspendSet) {
        _onSuspendSub = ele.onSuspend.listen(onSuspend);
      } else if (prev.onSuspend != onSuspend) {
        prev._onSuspendSub.cancel();
        _onSuspendSub = ele.onSuspend.listen(onSuspend);
      } else {
        _onSuspendSub = prev._onSuspendSub;
      }
    } else if (prev._onSuspendSet) {
      prev._onSuspendSub.cancel();
    }
    if (_onTimeUpdateSet) {
      if (!prev._onTimeUpdateSet) {
        _onTimeUpdateSub = ele.onTimeUpdate.listen(onTimeUpdate);
      } else if (prev.onTimeUpdate != onTimeUpdate) {
        prev._onTimeUpdateSub.cancel();
        _onTimeUpdateSub = ele.onTimeUpdate.listen(onTimeUpdate);
      } else {
        _onTimeUpdateSub = prev._onTimeUpdateSub;
      }
    } else if (prev._onTimeUpdateSet) {
      prev._onTimeUpdateSub.cancel();
    }
    if (_onTouchCancelSet) {
      if (!prev._onTouchCancelSet) {
        _onTouchCancelSub = ele.onTouchCancel.listen(onTouchCancel);
      } else if (prev.onTouchCancel != onTouchCancel) {
        prev._onTouchCancelSub.cancel();
        _onTouchCancelSub = ele.onTouchCancel.listen(onTouchCancel);
      } else {
        _onTouchCancelSub = prev._onTouchCancelSub;
      }
    } else if (prev._onTouchCancelSet) {
      prev._onTouchCancelSub.cancel();
    }
    if (_onTouchEndSet) {
      if (!prev._onTouchEndSet) {
        _onTouchEndSub = ele.onTouchEnd.listen(onTouchEnd);
      } else if (prev.onTouchEnd != onTouchEnd) {
        prev._onTouchEndSub.cancel();
        _onTouchEndSub = ele.onTouchEnd.listen(onTouchEnd);
      } else {
        _onTouchEndSub = prev._onTouchEndSub;
      }
    } else if (prev._onTouchEndSet) {
      prev._onTouchEndSub.cancel();
    }
    if (_onTouchEnterSet) {
      if (!prev._onTouchEnterSet) {
        _onTouchEnterSub = ele.onTouchEnter.listen(onTouchEnter);
      } else if (prev.onTouchEnter != onTouchEnter) {
        prev._onTouchEnterSub.cancel();
        _onTouchEnterSub = ele.onTouchEnter.listen(onTouchEnter);
      } else {
        _onTouchEnterSub = prev._onTouchEnterSub;
      }
    } else if (prev._onTouchEnterSet) {
      prev._onTouchEnterSub.cancel();
    }
    if (_onTouchLeaveSet) {
      if (!prev._onTouchLeaveSet) {
        _onTouchLeaveSub = ele.onTouchLeave.listen(onTouchLeave);
      } else if (prev.onTouchLeave != onTouchLeave) {
        prev._onTouchLeaveSub.cancel();
        _onTouchLeaveSub = ele.onTouchLeave.listen(onTouchLeave);
      } else {
        _onTouchLeaveSub = prev._onTouchLeaveSub;
      }
    } else if (prev._onTouchLeaveSet) {
      prev._onTouchLeaveSub.cancel();
    }
    if (_onTouchMoveSet) {
      if (!prev._onTouchMoveSet) {
        _onTouchMoveSub = ele.onTouchMove.listen(onTouchMove);
      } else if (prev.onTouchMove != onTouchMove) {
        prev._onTouchMoveSub.cancel();
        _onTouchMoveSub = ele.onTouchMove.listen(onTouchMove);
      } else {
        _onTouchMoveSub = prev._onTouchMoveSub;
      }
    } else if (prev._onTouchMoveSet) {
      prev._onTouchMoveSub.cancel();
    }
    if (_onTouchStartSet) {
      if (!prev._onTouchStartSet) {
        _onTouchStartSub = ele.onTouchStart.listen(onTouchStart);
      } else if (prev.onTouchStart != onTouchStart) {
        prev._onTouchStartSub.cancel();
        _onTouchStartSub = ele.onTouchStart.listen(onTouchStart);
      } else {
        _onTouchStartSub = prev._onTouchStartSub;
      }
    } else if (prev._onTouchStartSet) {
      prev._onTouchStartSub.cancel();
    }
    if (_onTransitionEndSet) {
      if (!prev._onTransitionEndSet) {
        _onTransitionEndSub = ele.onTransitionEnd.listen(onTransitionEnd);
      } else if (prev.onTransitionEnd != onTransitionEnd) {
        prev._onTransitionEndSub.cancel();
        _onTransitionEndSub = ele.onTransitionEnd.listen(onTransitionEnd);
      } else {
        _onTransitionEndSub = prev._onTransitionEndSub;
      }
    } else if (prev._onTransitionEndSet) {
      prev._onTransitionEndSub.cancel();
    }
    if (_onVolumeChangeSet) {
      if (!prev._onVolumeChangeSet) {
        _onVolumeChangeSub = ele.onVolumeChange.listen(onVolumeChange);
      } else if (prev.onVolumeChange != onVolumeChange) {
        prev._onVolumeChangeSub.cancel();
        _onVolumeChangeSub = ele.onVolumeChange.listen(onVolumeChange);
      } else {
        _onVolumeChangeSub = prev._onVolumeChangeSub;
      }
    } else if (prev._onVolumeChangeSet) {
      prev._onVolumeChangeSub.cancel();
    }
    if (_onWaitingSet) {
      if (!prev._onWaitingSet) {
        _onWaitingSub = ele.onWaiting.listen(onWaiting);
      } else if (prev.onWaiting != onWaiting) {
        prev._onWaitingSub.cancel();
        _onWaitingSub = ele.onWaiting.listen(onWaiting);
      } else {
        _onWaitingSub = prev._onWaitingSub;
      }
    } else if (prev._onWaitingSet) {
      prev._onWaitingSub.cancel();
    }
    if (_onFullscreenChangeSet) {
      if (!prev._onFullscreenChangeSet) {
        _onFullscreenChangeSub =
            ele.onFullscreenChange.listen(onFullscreenChange);
      } else if (prev.onFullscreenChange != onFullscreenChange) {
        prev._onFullscreenChangeSub.cancel();
        _onFullscreenChangeSub =
            ele.onFullscreenChange.listen(onFullscreenChange);
      } else {
        _onFullscreenChangeSub = prev._onFullscreenChangeSub;
      }
    } else if (prev._onFullscreenChangeSet) {
      prev._onFullscreenChangeSub.cancel();
    }
    if (_onFullscreenErrorSet) {
      if (!prev._onFullscreenErrorSet) {
        _onFullscreenErrorSub = ele.onFullscreenError.listen(onFullscreenError);
      } else if (prev.onFullscreenError != onFullscreenError) {
        prev._onFullscreenErrorSub.cancel();
        _onFullscreenErrorSub = ele.onFullscreenError.listen(onFullscreenError);
      } else {
        _onFullscreenErrorSub = prev._onFullscreenErrorSub;
      }
    } else if (prev._onFullscreenErrorSet) {
      prev._onFullscreenErrorSub.cancel();
    }
  }

  void dispose() {
    _onAbortSub?.cancel();
    _onBeforeCopySub?.cancel();
    _onBeforeCutSub?.cancel();
    _onBeforePasteSub?.cancel();
    _onBlurSub?.cancel();
    _onCanPlaySub?.cancel();
    _onCanPlayThroughSub?.cancel();
    _onChangeSub?.cancel();
    _onClickSub?.cancel();
    _onContextMenuSub?.cancel();
    _onCopySub?.cancel();
    _onCutSub?.cancel();
    _onDoubleClickSub?.cancel();
    _onDragSub?.cancel();
    _onDragEndSub?.cancel();
    _onDragEnterSub?.cancel();
    _onDragLeaveSub?.cancel();
    _onDragOverSub?.cancel();
    _onDragStartSub?.cancel();
    _onDropSub?.cancel();
    _onDurationChangeSub?.cancel();
    _onEmptiedSub?.cancel();
    _onEndedSub?.cancel();
    _onErrorSub?.cancel();
    _onFocusSub?.cancel();
    _onInputSub?.cancel();
    _onInvalidSub?.cancel();
    _onKeyDownSub?.cancel();
    _onKeyPressSub?.cancel();
    _onKeyUpSub?.cancel();
    _onLoadSub?.cancel();
    _onLoadedDataSub?.cancel();
    _onLoadedMetadataSub?.cancel();
    _onMouseDownSub?.cancel();
    _onMouseEnterSub?.cancel();
    _onMouseLeaveSub?.cancel();
    _onMouseMoveSub?.cancel();
    _onMouseOutSub?.cancel();
    _onMouseOverSub?.cancel();
    _onMouseUpSub?.cancel();
    _onMouseWheelSub?.cancel();
    _onPasteSub?.cancel();
    _onPauseSub?.cancel();
    _onPlaySub?.cancel();
    _onPlayingSub?.cancel();
    _onRateChangeSub?.cancel();
    _onResetSub?.cancel();
    _onResizeSub?.cancel();
    _onScrollSub?.cancel();
    _onSearchSub?.cancel();
    _onSeekedSub?.cancel();
    _onSeekingSub?.cancel();
    _onSelectSub?.cancel();
    _onSelectStartSub?.cancel();
    _onStalledSub?.cancel();
    _onSubmitSub?.cancel();
    _onSuspendSub?.cancel();
    _onTimeUpdateSub?.cancel();
    _onTouchCancelSub?.cancel();
    _onTouchEndSub?.cancel();
    _onTouchEnterSub?.cancel();
    _onTouchLeaveSub?.cancel();
    _onTouchMoveSub?.cancel();
    _onTouchStartSub?.cancel();
    _onTransitionEndSub?.cancel();
    _onVolumeChangeSub?.cancel();
    _onWaitingSub?.cancel();
    _onFullscreenChangeSub?.cancel();
    _onFullscreenErrorSub?.cancel();
  }
}

class Va extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.a();
}

class Varticle extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.article();
}

class Vaside extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.aside();
}

class Vaudio extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.audio();
}

class Vbr extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.br();
}

class Vcanvas extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.canvas();
}

class Vdiv extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.div();
}

class Vfooter extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.footer();
}

class Vheader extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.header();
}

class Vhr extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.hr();
}

class Viframe extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.iframe();
}

class Vimg extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.img();
}

class Vli extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.li();
}

class Vnav extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.nav();
}

class Vol extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.ol();
}

class Voption extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.option();
}

class Vp extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.p();
}

class Vpre extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.pre();
}

class Vsection extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.section();
}

class Vselect extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.select();
}

class Vspan extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.span();
}

class Vsvg extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.svg();
}

class Vtable extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.table();
}

class Vtd extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.td();
}

class Vtextarea extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.textarea();
}

class Vth extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.th();
}

class Vtr extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.tr();
}

class Vul extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.ul();
}

class Vvideo extends VElement<Element> {
  @override
  Element _elementFactory() => new Element.video();
}

class VEmbedElement extends VHtmlElement<EmbedElement> {
  @override
  EmbedElement _elementFactory() => new EmbedElement();

  String _height;
  bool _heightSet = false;
  String get height => _height;
  void set height(String v) {
    _height = v;
    _heightSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  void set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  void set type(String v) {
    _type = v;
    _typeSet = true;
  }

  String _width;
  bool _widthSet = false;
  String get width => _width;
  void set width(String v) {
    _width = v;
    _widthSet = true;
  }

  @override
  void _applyAttributesToElement(EmbedElement ele) {
    super._applyAttributesToElement(ele);

    if (_heightSet) ele.height = _height;
    if (_nameSet) ele.name = _name;
    if (_srcSet) ele.src = _src;
    if (_typeSet) ele.type = _type;
    if (_widthSet) ele.width = _width;
  }

  @override
  void _updateElementAttributes(VEmbedElement prev, EmbedElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_height != prev._height) ele.height = _height;
    if (_name != prev._name) ele.name = _name;
    if (_src != prev._src) ele.src = _src;
    if (_type != prev._type) ele.type = _type;
    if (_width != prev._width) ele.width = _width;
  }
}

class VFieldSetElement extends VHtmlElement<FieldSetElement> {
  @override
  FieldSetElement _elementFactory() => new FieldSetElement();

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  void set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  @override
  void _applyAttributesToElement(FieldSetElement ele) {
    super._applyAttributesToElement(ele);

    if (_disabledSet) ele.disabled = _disabled;
    if (_nameSet) ele.name = _name;
  }

  @override
  void _updateElementAttributes(VFieldSetElement prev, FieldSetElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_disabled != prev._disabled) ele.disabled = _disabled;
    if (_name != prev._name) ele.name = _name;
  }
}

class VFormElement extends VHtmlElement<FormElement> {
  @override
  FormElement _elementFactory() => new FormElement();

  String _acceptCharset;
  bool _acceptCharsetSet = false;
  String get acceptCharset => _acceptCharset;
  void set acceptCharset(String v) {
    _acceptCharset = v;
    _acceptCharsetSet = true;
  }

  String _action;
  bool _actionSet = false;
  String get action => _action;
  void set action(String v) {
    _action = v;
    _actionSet = true;
  }

  String _autocomplete;
  bool _autocompleteSet = false;
  String get autocomplete => _autocomplete;
  void set autocomplete(String v) {
    _autocomplete = v;
    _autocompleteSet = true;
  }

  String _encoding;
  bool _encodingSet = false;
  String get encoding => _encoding;
  void set encoding(String v) {
    _encoding = v;
    _encodingSet = true;
  }

  String _enctype;
  bool _enctypeSet = false;
  String get enctype => _enctype;
  void set enctype(String v) {
    _enctype = v;
    _enctypeSet = true;
  }

  String _method;
  bool _methodSet = false;
  String get method => _method;
  void set method(String v) {
    _method = v;
    _methodSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  bool _noValidate;
  bool _noValidateSet = false;
  bool get noValidate => _noValidate;
  void set noValidate(bool v) {
    _noValidate = v;
    _noValidateSet = true;
  }

  String _target;
  bool _targetSet = false;
  String get target => _target;
  void set target(String v) {
    _target = v;
    _targetSet = true;
  }

  @override
  void _applyAttributesToElement(FormElement ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(VFormElement prev, FormElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_acceptCharset != prev._acceptCharset)
      ele.acceptCharset = _acceptCharset;
    if (_action != prev._action) ele.action = _action;
    if (_autocomplete != prev._autocomplete) ele.autocomplete = _autocomplete;
    if (_encoding != prev._encoding) ele.encoding = _encoding;
    if (_enctype != prev._enctype) ele.enctype = _enctype;
    if (_method != prev._method) ele.method = _method;
    if (_name != prev._name) ele.name = _name;
    if (_noValidate != prev._noValidate) ele.noValidate = _noValidate;
    if (_target != prev._target) ele.target = _target;
  }
}

class VHRElement extends VHtmlElement<HRElement> {
  @override
  HRElement _elementFactory() => new HRElement();

  String _color;
  bool _colorSet = false;
  String get color => _color;
  void set color(String v) {
    _color = v;
    _colorSet = true;
  }

  @override
  void _applyAttributesToElement(HRElement ele) {
    super._applyAttributesToElement(ele);

    if (_colorSet) ele.color = _color;
  }

  @override
  void _updateElementAttributes(VHRElement prev, HRElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_color != prev._color) ele.color = _color;
  }
}

class VHeadElement extends VHtmlElement<HeadElement> {
  @override
  HeadElement _elementFactory() => new HeadElement();

  @override
  void _applyAttributesToElement(HeadElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VHeadElement prev, HeadElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

abstract class VHeadingElement<T extends HeadingElement>
    extends VHtmlElement<T> {
  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(covariant VHeadingElement<T> prev, T ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class Vh1 extends VElement<HeadingElement> {
  @override
  HeadingElement _elementFactory() => new HeadingElement.h1();
}

class Vh2 extends VElement<HeadingElement> {
  @override
  HeadingElement _elementFactory() => new HeadingElement.h2();
}

class Vh3 extends VElement<HeadingElement> {
  @override
  HeadingElement _elementFactory() => new HeadingElement.h3();
}

class Vh4 extends VElement<HeadingElement> {
  @override
  HeadingElement _elementFactory() => new HeadingElement.h4();
}

class Vh5 extends VElement<HeadingElement> {
  @override
  HeadingElement _elementFactory() => new HeadingElement.h5();
}

class Vh6 extends VElement<HeadingElement> {
  @override
  HeadingElement _elementFactory() => new HeadingElement.h6();
}

class VHtmlHtmlElement extends VHtmlElement<HtmlHtmlElement> {
  @override
  HtmlHtmlElement _elementFactory() => new HtmlHtmlElement();

  @override
  void _applyAttributesToElement(HtmlHtmlElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VHtmlHtmlElement prev, HtmlHtmlElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VIFrameElement extends VHtmlElement<IFrameElement> {
  @override
  IFrameElement _elementFactory() => new IFrameElement();

  bool _allowFullscreen;
  bool _allowFullscreenSet = false;
  bool get allowFullscreen => _allowFullscreen;
  void set allowFullscreen(bool v) {
    _allowFullscreen = v;
    _allowFullscreenSet = true;
  }

  String _height;
  bool _heightSet = false;
  String get height => _height;
  void set height(String v) {
    _height = v;
    _heightSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _referrerpolicy;
  bool _referrerpolicySet = false;
  String get referrerpolicy => _referrerpolicy;
  void set referrerpolicy(String v) {
    _referrerpolicy = v;
    _referrerpolicySet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  void set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _srcdoc;
  bool _srcdocSet = false;
  String get srcdoc => _srcdoc;
  void set srcdoc(String v) {
    _srcdoc = v;
    _srcdocSet = true;
  }

  String _width;
  bool _widthSet = false;
  String get width => _width;
  void set width(String v) {
    _width = v;
    _widthSet = true;
  }

  @override
  void _applyAttributesToElement(IFrameElement ele) {
    super._applyAttributesToElement(ele);

    if (_allowFullscreenSet) ele.allowFullscreen = _allowFullscreen;
    if (_heightSet) ele.height = _height;
    if (_nameSet) ele.name = _name;
    if (_referrerpolicySet) ele.referrerpolicy = _referrerpolicy;
    if (_srcSet) ele.src = _src;
    if (_srcdocSet) ele.srcdoc = _srcdoc;
    if (_widthSet) ele.width = _width;
  }

  @override
  void _updateElementAttributes(VIFrameElement prev, IFrameElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_allowFullscreen != prev._allowFullscreen)
      ele.allowFullscreen = _allowFullscreen;
    if (_height != prev._height) ele.height = _height;
    if (_name != prev._name) ele.name = _name;
    if (_referrerpolicy != prev._referrerpolicy)
      ele.referrerpolicy = _referrerpolicy;
    if (_src != prev._src) ele.src = _src;
    if (_srcdoc != prev._srcdoc) ele.srcdoc = _srcdoc;
    if (_width != prev._width) ele.width = _width;
  }
}

class VImageElement extends VHtmlElement<ImageElement> {
  @override
  ImageElement _elementFactory() => new ImageElement();

  String _alt;
  bool _altSet = false;
  String get alt => _alt;
  void set alt(String v) {
    _alt = v;
    _altSet = true;
  }

  String _crossOrigin;
  bool _crossOriginSet = false;
  String get crossOrigin => _crossOrigin;
  void set crossOrigin(String v) {
    _crossOrigin = v;
    _crossOriginSet = true;
  }

  int _height;
  bool _heightSet = false;
  int get height => _height;
  void set height(int v) {
    _height = v;
    _heightSet = true;
  }

  bool _isMap;
  bool _isMapSet = false;
  bool get isMap => _isMap;
  void set isMap(bool v) {
    _isMap = v;
    _isMapSet = true;
  }

  String _referrerpolicy;
  bool _referrerpolicySet = false;
  String get referrerpolicy => _referrerpolicy;
  void set referrerpolicy(String v) {
    _referrerpolicy = v;
    _referrerpolicySet = true;
  }

  String _sizes;
  bool _sizesSet = false;
  String get sizes => _sizes;
  void set sizes(String v) {
    _sizes = v;
    _sizesSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  void set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _srcset;
  bool _srcsetSet = false;
  String get srcset => _srcset;
  void set srcset(String v) {
    _srcset = v;
    _srcsetSet = true;
  }

  String _useMap;
  bool _useMapSet = false;
  String get useMap => _useMap;
  void set useMap(String v) {
    _useMap = v;
    _useMapSet = true;
  }

  int _width;
  bool _widthSet = false;
  int get width => _width;
  void set width(int v) {
    _width = v;
    _widthSet = true;
  }

  @override
  void _applyAttributesToElement(ImageElement ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(VImageElement prev, ImageElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_alt != prev._alt) ele.alt = _alt;
    if (_crossOrigin != prev._crossOrigin) ele.crossOrigin = _crossOrigin;
    if (_height != prev._height) ele.height = _height;
    if (_isMap != prev._isMap) ele.isMap = _isMap;
    if (_referrerpolicy != prev._referrerpolicy)
      ele.referrerpolicy = _referrerpolicy;
    if (_sizes != prev._sizes) ele.sizes = _sizes;
    if (_src != prev._src) ele.src = _src;
    if (_srcset != prev._srcset) ele.srcset = _srcset;
    if (_useMap != prev._useMap) ele.useMap = _useMap;
    if (_width != prev._width) ele.width = _width;
  }
}

class VInputElement extends VHtmlElement<InputElement> {
  @override
  InputElement _elementFactory() => new InputElement();

  String _accept;
  bool _acceptSet = false;
  String get accept => _accept;
  void set accept(String v) {
    _accept = v;
    _acceptSet = true;
  }

  String _alt;
  bool _altSet = false;
  String get alt => _alt;
  void set alt(String v) {
    _alt = v;
    _altSet = true;
  }

  String _autocapitalize;
  bool _autocapitalizeSet = false;
  String get autocapitalize => _autocapitalize;
  void set autocapitalize(String v) {
    _autocapitalize = v;
    _autocapitalizeSet = true;
  }

  String _autocomplete;
  bool _autocompleteSet = false;
  String get autocomplete => _autocomplete;
  void set autocomplete(String v) {
    _autocomplete = v;
    _autocompleteSet = true;
  }

  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  void set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  bool _capture;
  bool _captureSet = false;
  bool get capture => _capture;
  void set capture(bool v) {
    _capture = v;
    _captureSet = true;
  }

  bool _checked;
  bool _checkedSet = false;
  bool get checked => _checked;
  void set checked(bool v) {
    _checked = v;
    _checkedSet = true;
  }

  bool _defaultChecked;
  bool _defaultCheckedSet = false;
  bool get defaultChecked => _defaultChecked;
  void set defaultChecked(bool v) {
    _defaultChecked = v;
    _defaultCheckedSet = true;
  }

  String _defaultValue;
  bool _defaultValueSet = false;
  String get defaultValue => _defaultValue;
  void set defaultValue(String v) {
    _defaultValue = v;
    _defaultValueSet = true;
  }

  String _dirName;
  bool _dirNameSet = false;
  String get dirName => _dirName;
  void set dirName(String v) {
    _dirName = v;
    _dirNameSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  void set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  List<File> _files;
  bool _filesSet = false;
  List<File> get files => _files;
  void set files(List<File> v) {
    _files = v;
    _filesSet = true;
  }

  String _formAction;
  bool _formActionSet = false;
  String get formAction => _formAction;
  void set formAction(String v) {
    _formAction = v;
    _formActionSet = true;
  }

  String _formEnctype;
  bool _formEnctypeSet = false;
  String get formEnctype => _formEnctype;
  void set formEnctype(String v) {
    _formEnctype = v;
    _formEnctypeSet = true;
  }

  String _formMethod;
  bool _formMethodSet = false;
  String get formMethod => _formMethod;
  void set formMethod(String v) {
    _formMethod = v;
    _formMethodSet = true;
  }

  bool _formNoValidate;
  bool _formNoValidateSet = false;
  bool get formNoValidate => _formNoValidate;
  void set formNoValidate(bool v) {
    _formNoValidate = v;
    _formNoValidateSet = true;
  }

  String _formTarget;
  bool _formTargetSet = false;
  String get formTarget => _formTarget;
  void set formTarget(String v) {
    _formTarget = v;
    _formTargetSet = true;
  }

  int _height;
  bool _heightSet = false;
  int get height => _height;
  void set height(int v) {
    _height = v;
    _heightSet = true;
  }

  bool _incremental;
  bool _incrementalSet = false;
  bool get incremental => _incremental;
  void set incremental(bool v) {
    _incremental = v;
    _incrementalSet = true;
  }

  bool _indeterminate;
  bool _indeterminateSet = false;
  bool get indeterminate => _indeterminate;
  void set indeterminate(bool v) {
    _indeterminate = v;
    _indeterminateSet = true;
  }

  String _inputMode;
  bool _inputModeSet = false;
  String get inputMode => _inputMode;
  void set inputMode(String v) {
    _inputMode = v;
    _inputModeSet = true;
  }

  String _max;
  bool _maxSet = false;
  String get max => _max;
  void set max(String v) {
    _max = v;
    _maxSet = true;
  }

  int _maxLength;
  bool _maxLengthSet = false;
  int get maxLength => _maxLength;
  void set maxLength(int v) {
    _maxLength = v;
    _maxLengthSet = true;
  }

  String _min;
  bool _minSet = false;
  String get min => _min;
  void set min(String v) {
    _min = v;
    _minSet = true;
  }

  int _minLength;
  bool _minLengthSet = false;
  int get minLength => _minLength;
  void set minLength(int v) {
    _minLength = v;
    _minLengthSet = true;
  }

  bool _multiple;
  bool _multipleSet = false;
  bool get multiple => _multiple;
  void set multiple(bool v) {
    _multiple = v;
    _multipleSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _pattern;
  bool _patternSet = false;
  String get pattern => _pattern;
  void set pattern(String v) {
    _pattern = v;
    _patternSet = true;
  }

  String _placeholder;
  bool _placeholderSet = false;
  String get placeholder => _placeholder;
  void set placeholder(String v) {
    _placeholder = v;
    _placeholderSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  void set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  String _selectionDirection;
  bool _selectionDirectionSet = false;
  String get selectionDirection => _selectionDirection;
  void set selectionDirection(String v) {
    _selectionDirection = v;
    _selectionDirectionSet = true;
  }

  int _selectionEnd;
  bool _selectionEndSet = false;
  int get selectionEnd => _selectionEnd;
  void set selectionEnd(int v) {
    _selectionEnd = v;
    _selectionEndSet = true;
  }

  int _selectionStart;
  bool _selectionStartSet = false;
  int get selectionStart => _selectionStart;
  void set selectionStart(int v) {
    _selectionStart = v;
    _selectionStartSet = true;
  }

  int _size;
  bool _sizeSet = false;
  int get size => _size;
  void set size(int v) {
    _size = v;
    _sizeSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  void set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _step;
  bool _stepSet = false;
  String get step => _step;
  void set step(String v) {
    _step = v;
    _stepSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  void set type(String v) {
    _type = v;
    _typeSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  void set value(String v) {
    _value = v;
    _valueSet = true;
  }

  num _valueAsNumber;
  bool _valueAsNumberSet = false;
  num get valueAsNumber => _valueAsNumber;
  void set valueAsNumber(num v) {
    _valueAsNumber = v;
    _valueAsNumberSet = true;
  }

  bool _directory;
  bool _directorySet = false;
  bool get directory => _directory;
  void set directory(bool v) {
    _directory = v;
    _directorySet = true;
  }

  int _width;
  bool _widthSet = false;
  int get width => _width;
  void set width(int v) {
    _width = v;
    _widthSet = true;
  }

  DateTime _valueAsDate;
  bool _valueAsDateSet = false;
  DateTime get valueAsDate => _valueAsDate;
  void set valueAsDate(DateTime v) {
    _valueAsDate = v;
    _valueAsDateSet = true;
  }

  @override
  void _applyAttributesToElement(InputElement ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(VInputElement prev, InputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_accept != prev._accept) ele.accept = _accept;
    if (_alt != prev._alt) ele.alt = _alt;
    if (_autocapitalize != prev._autocapitalize)
      ele.autocapitalize = _autocapitalize;
    if (_autocomplete != prev._autocomplete) ele.autocomplete = _autocomplete;
    if (_autofocus != prev._autofocus) ele.autofocus = _autofocus;
    if (_capture != prev._capture) ele.capture = _capture;
    if (_checked != prev._checked) ele.checked = _checked;
    if (_defaultChecked != prev._defaultChecked)
      ele.defaultChecked = _defaultChecked;
    if (_defaultValue != prev._defaultValue) ele.defaultValue = _defaultValue;
    if (_dirName != prev._dirName) ele.dirName = _dirName;
    if (_disabled != prev._disabled) ele.disabled = _disabled;
    if (_files != prev._files) ele.files = _files;
    if (_formAction != prev._formAction) ele.formAction = _formAction;
    if (_formEnctype != prev._formEnctype) ele.formEnctype = _formEnctype;
    if (_formMethod != prev._formMethod) ele.formMethod = _formMethod;
    if (_formNoValidate != prev._formNoValidate)
      ele.formNoValidate = _formNoValidate;
    if (_formTarget != prev._formTarget) ele.formTarget = _formTarget;
    if (_height != prev._height) ele.height = _height;
    if (_incremental != prev._incremental) ele.incremental = _incremental;
    if (_indeterminate != prev._indeterminate)
      ele.indeterminate = _indeterminate;
    if (_inputMode != prev._inputMode) ele.inputMode = _inputMode;
    if (_max != prev._max) ele.max = _max;
    if (_maxLength != prev._maxLength) ele.maxLength = _maxLength;
    if (_min != prev._min) ele.min = _min;
    if (_minLength != prev._minLength) ele.minLength = _minLength;
    if (_multiple != prev._multiple) ele.multiple = _multiple;
    if (_name != prev._name) ele.name = _name;
    if (_pattern != prev._pattern) ele.pattern = _pattern;
    if (_placeholder != prev._placeholder) ele.placeholder = _placeholder;
    if (_readOnly != prev._readOnly) ele.readOnly = _readOnly;
    if (_required != prev._required) ele.required = _required;
    if (_selectionDirection != prev._selectionDirection)
      ele.selectionDirection = _selectionDirection;
    if (_selectionEnd != prev._selectionEnd) ele.selectionEnd = _selectionEnd;
    if (_selectionStart != prev._selectionStart)
      ele.selectionStart = _selectionStart;
    if (_size != prev._size) ele.size = _size;
    if (_src != prev._src) ele.src = _src;
    if (_step != prev._step) ele.step = _step;
    if (_type != prev._type) ele.type = _type;
    if (_value != prev._value) ele.value = _value;
    if (_valueAsNumber != prev._valueAsNumber)
      ele.valueAsNumber = _valueAsNumber;
    if (_directory != prev._directory) ele.directory = _directory;
    if (_width != prev._width) ele.width = _width;
    if (_valueAsDate != prev._valueAsDate) ele.valueAsDate = _valueAsDate;
  }
}

abstract class VInputElementBase<T extends InputElementBase>
    extends VElement<T> {
  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  void set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  void set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  bool _incremental;
  bool _incrementalSet = false;
  bool get incremental => _incremental;
  void set incremental(bool v) {
    _incremental = v;
    _incrementalSet = true;
  }

  bool _indeterminate;
  bool _indeterminateSet = false;
  bool get indeterminate => _indeterminate;
  void set indeterminate(bool v) {
    _indeterminate = v;
    _indeterminateSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  void set value(String v) {
    _value = v;
    _valueSet = true;
  }

  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);

    if (_autofocusSet) ele.autofocus = _autofocus;
    if (_disabledSet) ele.disabled = _disabled;
    if (_incrementalSet) ele.incremental = _incremental;
    if (_indeterminateSet) ele.indeterminate = _indeterminate;
    if (_nameSet) ele.name = _name;
    if (_valueSet) ele.value = _value;
  }

  @override
  void _updateElementAttributes(covariant VInputElementBase<T> prev, T ele) {
    super._updateElementAttributes(prev, ele);

    if (_autofocus != prev._autofocus) ele.autofocus = _autofocus;
    if (_disabled != prev._disabled) ele.disabled = _disabled;
    if (_incremental != prev._incremental) ele.incremental = _incremental;
    if (_indeterminate != prev._indeterminate)
      ele.indeterminate = _indeterminate;
    if (_name != prev._name) ele.name = _name;
    if (_value != prev._value) ele.value = _value;
  }
}

class VHiddenInputElement extends VInputElementBase<HiddenInputElement> {
  @override
  HiddenInputElement _elementFactory() => new HiddenInputElement();

  @override
  void _applyAttributesToElement(HiddenInputElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(
      VHiddenInputElement prev, HiddenInputElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

abstract class VTextInputElementBase<T extends TextInputElementBase>
    extends VInputElementBase<T> {
  String _autocomplete;
  bool _autocompleteSet = false;
  String get autocomplete => _autocomplete;
  void set autocomplete(String v) {
    _autocomplete = v;
    _autocompleteSet = true;
  }

  int _maxLength;
  bool _maxLengthSet = false;
  int get maxLength => _maxLength;
  void set maxLength(int v) {
    _maxLength = v;
    _maxLengthSet = true;
  }

  String _pattern;
  bool _patternSet = false;
  String get pattern => _pattern;
  void set pattern(String v) {
    _pattern = v;
    _patternSet = true;
  }

  String _placeholder;
  bool _placeholderSet = false;
  String get placeholder => _placeholder;
  void set placeholder(String v) {
    _placeholder = v;
    _placeholderSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  void set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  int _size;
  bool _sizeSet = false;
  int get size => _size;
  void set size(int v) {
    _size = v;
    _sizeSet = true;
  }

  String _selectionDirection;
  bool _selectionDirectionSet = false;
  String get selectionDirection => _selectionDirection;
  void set selectionDirection(String v) {
    _selectionDirection = v;
    _selectionDirectionSet = true;
  }

  int _selectionEnd;
  bool _selectionEndSet = false;
  int get selectionEnd => _selectionEnd;
  void set selectionEnd(int v) {
    _selectionEnd = v;
    _selectionEndSet = true;
  }

  int _selectionStart;
  bool _selectionStartSet = false;
  int get selectionStart => _selectionStart;
  void set selectionStart(int v) {
    _selectionStart = v;
    _selectionStartSet = true;
  }

  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(
      covariant VTextInputElementBase<T> prev, T ele) {
    super._updateElementAttributes(prev, ele);

    if (_autocomplete != prev._autocomplete) ele.autocomplete = _autocomplete;
    if (_maxLength != prev._maxLength) ele.maxLength = _maxLength;
    if (_pattern != prev._pattern) ele.pattern = _pattern;
    if (_placeholder != prev._placeholder) ele.placeholder = _placeholder;
    if (_readOnly != prev._readOnly) ele.readOnly = _readOnly;
    if (_required != prev._required) ele.required = _required;
    if (_size != prev._size) ele.size = _size;
    if (_selectionDirection != prev._selectionDirection)
      ele.selectionDirection = _selectionDirection;
    if (_selectionEnd != prev._selectionEnd) ele.selectionEnd = _selectionEnd;
    if (_selectionStart != prev._selectionStart)
      ele.selectionStart = _selectionStart;
  }
}

class VSearchInputElement extends VTextInputElementBase<SearchInputElement> {
  @override
  SearchInputElement _elementFactory() => new SearchInputElement();

  String _dirName;
  bool _dirNameSet = false;
  String get dirName => _dirName;
  void set dirName(String v) {
    _dirName = v;
    _dirNameSet = true;
  }

  @override
  void _applyAttributesToElement(SearchInputElement ele) {
    super._applyAttributesToElement(ele);

    if (_dirNameSet) ele.dirName = _dirName;
  }

  @override
  void _updateElementAttributes(
      VSearchInputElement prev, SearchInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_dirName != prev._dirName) ele.dirName = _dirName;
  }
}

class VTextInputElement extends VTextInputElementBase<TextInputElement> {
  @override
  TextInputElement _elementFactory() => new TextInputElement();

  String _dirName;
  bool _dirNameSet = false;
  String get dirName => _dirName;
  void set dirName(String v) {
    _dirName = v;
    _dirNameSet = true;
  }

  @override
  void _applyAttributesToElement(TextInputElement ele) {
    super._applyAttributesToElement(ele);

    if (_dirNameSet) ele.dirName = _dirName;
  }

  @override
  void _updateElementAttributes(VTextInputElement prev, TextInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_dirName != prev._dirName) ele.dirName = _dirName;
  }
}

class VUrlInputElement extends VTextInputElementBase<UrlInputElement> {
  @override
  UrlInputElement _elementFactory() => new UrlInputElement();

  @override
  void _applyAttributesToElement(UrlInputElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VUrlInputElement prev, UrlInputElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VTelephoneInputElement
    extends VTextInputElementBase<TelephoneInputElement> {
  @override
  TelephoneInputElement _elementFactory() => new TelephoneInputElement();

  @override
  void _applyAttributesToElement(TelephoneInputElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(
      VTelephoneInputElement prev, TelephoneInputElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VEmailInputElement extends VTextInputElementBase<EmailInputElement> {
  @override
  EmailInputElement _elementFactory() => new EmailInputElement();

  String _autocomplete;
  bool _autocompleteSet = false;
  String get autocomplete => _autocomplete;
  void set autocomplete(String v) {
    _autocomplete = v;
    _autocompleteSet = true;
  }

  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  void set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  int _maxLength;
  bool _maxLengthSet = false;
  int get maxLength => _maxLength;
  void set maxLength(int v) {
    _maxLength = v;
    _maxLengthSet = true;
  }

  bool _multiple;
  bool _multipleSet = false;
  bool get multiple => _multiple;
  void set multiple(bool v) {
    _multiple = v;
    _multipleSet = true;
  }

  String _pattern;
  bool _patternSet = false;
  String get pattern => _pattern;
  void set pattern(String v) {
    _pattern = v;
    _patternSet = true;
  }

  String _placeholder;
  bool _placeholderSet = false;
  String get placeholder => _placeholder;
  void set placeholder(String v) {
    _placeholder = v;
    _placeholderSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  void set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  int _size;
  bool _sizeSet = false;
  int get size => _size;
  void set size(int v) {
    _size = v;
    _sizeSet = true;
  }

  @override
  void _applyAttributesToElement(EmailInputElement ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(
      VEmailInputElement prev, EmailInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_autocomplete != prev._autocomplete) ele.autocomplete = _autocomplete;
    if (_autofocus != prev._autofocus) ele.autofocus = _autofocus;
    if (_maxLength != prev._maxLength) ele.maxLength = _maxLength;
    if (_multiple != prev._multiple) ele.multiple = _multiple;
    if (_pattern != prev._pattern) ele.pattern = _pattern;
    if (_placeholder != prev._placeholder) ele.placeholder = _placeholder;
    if (_readOnly != prev._readOnly) ele.readOnly = _readOnly;
    if (_required != prev._required) ele.required = _required;
    if (_size != prev._size) ele.size = _size;
  }
}

class VPasswordInputElement
    extends VTextInputElementBase<PasswordInputElement> {
  @override
  PasswordInputElement _elementFactory() => new PasswordInputElement();

  @override
  void _applyAttributesToElement(PasswordInputElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(
      VPasswordInputElement prev, PasswordInputElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

abstract class VRangeInputElementBase<T extends RangeInputElementBase>
    extends VInputElementBase<T> {
  String _max;
  bool _maxSet = false;
  String get max => _max;
  void set max(String v) {
    _max = v;
    _maxSet = true;
  }

  String _min;
  bool _minSet = false;
  String get min => _min;
  void set min(String v) {
    _min = v;
    _minSet = true;
  }

  String _step;
  bool _stepSet = false;
  String get step => _step;
  void set step(String v) {
    _step = v;
    _stepSet = true;
  }

  num _valueAsNumber;
  bool _valueAsNumberSet = false;
  num get valueAsNumber => _valueAsNumber;
  void set valueAsNumber(num v) {
    _valueAsNumber = v;
    _valueAsNumberSet = true;
  }

  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);

    if (_maxSet) ele.max = _max;
    if (_minSet) ele.min = _min;
    if (_stepSet) ele.step = _step;
    if (_valueAsNumberSet) ele.valueAsNumber = _valueAsNumber;
  }

  @override
  void _updateElementAttributes(
      covariant VRangeInputElementBase<T> prev, T ele) {
    super._updateElementAttributes(prev, ele);

    if (_max != prev._max) ele.max = _max;
    if (_min != prev._min) ele.min = _min;
    if (_step != prev._step) ele.step = _step;
    if (_valueAsNumber != prev._valueAsNumber)
      ele.valueAsNumber = _valueAsNumber;
  }
}

class VDateInputElement extends VRangeInputElementBase<DateInputElement> {
  @override
  DateInputElement _elementFactory() => new DateInputElement();

  DateTime _valueAsDate;
  bool _valueAsDateSet = false;
  DateTime get valueAsDate => _valueAsDate;
  void set valueAsDate(DateTime v) {
    _valueAsDate = v;
    _valueAsDateSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  void set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  void _applyAttributesToElement(DateInputElement ele) {
    super._applyAttributesToElement(ele);

    if (_valueAsDateSet) ele.valueAsDate = _valueAsDate;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
  }

  @override
  void _updateElementAttributes(VDateInputElement prev, DateInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_valueAsDate != prev._valueAsDate) ele.valueAsDate = _valueAsDate;
    if (_readOnly != prev._readOnly) ele.readOnly = _readOnly;
    if (_required != prev._required) ele.required = _required;
  }
}

class VMonthInputElement extends VRangeInputElementBase<MonthInputElement> {
  @override
  MonthInputElement _elementFactory() => new MonthInputElement();

  DateTime _valueAsDate;
  bool _valueAsDateSet = false;
  DateTime get valueAsDate => _valueAsDate;
  void set valueAsDate(DateTime v) {
    _valueAsDate = v;
    _valueAsDateSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  void set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  void _applyAttributesToElement(MonthInputElement ele) {
    super._applyAttributesToElement(ele);

    if (_valueAsDateSet) ele.valueAsDate = _valueAsDate;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
  }

  @override
  void _updateElementAttributes(
      VMonthInputElement prev, MonthInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_valueAsDate != prev._valueAsDate) ele.valueAsDate = _valueAsDate;
    if (_readOnly != prev._readOnly) ele.readOnly = _readOnly;
    if (_required != prev._required) ele.required = _required;
  }
}

class VWeekInputElement extends VRangeInputElementBase<WeekInputElement> {
  @override
  WeekInputElement _elementFactory() => new WeekInputElement();

  DateTime _valueAsDate;
  bool _valueAsDateSet = false;
  DateTime get valueAsDate => _valueAsDate;
  void set valueAsDate(DateTime v) {
    _valueAsDate = v;
    _valueAsDateSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  void set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  void _applyAttributesToElement(WeekInputElement ele) {
    super._applyAttributesToElement(ele);

    if (_valueAsDateSet) ele.valueAsDate = _valueAsDate;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
  }

  @override
  void _updateElementAttributes(VWeekInputElement prev, WeekInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_valueAsDate != prev._valueAsDate) ele.valueAsDate = _valueAsDate;
    if (_readOnly != prev._readOnly) ele.readOnly = _readOnly;
    if (_required != prev._required) ele.required = _required;
  }
}

class VTimeInputElement extends VRangeInputElementBase<TimeInputElement> {
  @override
  TimeInputElement _elementFactory() => new TimeInputElement();

  DateTime _valueAsDate;
  bool _valueAsDateSet = false;
  DateTime get valueAsDate => _valueAsDate;
  void set valueAsDate(DateTime v) {
    _valueAsDate = v;
    _valueAsDateSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  void set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  void _applyAttributesToElement(TimeInputElement ele) {
    super._applyAttributesToElement(ele);

    if (_valueAsDateSet) ele.valueAsDate = _valueAsDate;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
  }

  @override
  void _updateElementAttributes(VTimeInputElement prev, TimeInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_valueAsDate != prev._valueAsDate) ele.valueAsDate = _valueAsDate;
    if (_readOnly != prev._readOnly) ele.readOnly = _readOnly;
    if (_required != prev._required) ele.required = _required;
  }
}

class VLocalDateTimeInputElement
    extends VRangeInputElementBase<LocalDateTimeInputElement> {
  @override
  LocalDateTimeInputElement _elementFactory() =>
      new LocalDateTimeInputElement();

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  void set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  void _applyAttributesToElement(LocalDateTimeInputElement ele) {
    super._applyAttributesToElement(ele);

    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
  }

  @override
  void _updateElementAttributes(
      VLocalDateTimeInputElement prev, LocalDateTimeInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_readOnly != prev._readOnly) ele.readOnly = _readOnly;
    if (_required != prev._required) ele.required = _required;
  }
}

class VNumberInputElement extends VRangeInputElementBase<NumberInputElement> {
  @override
  NumberInputElement _elementFactory() => new NumberInputElement();

  String _placeholder;
  bool _placeholderSet = false;
  String get placeholder => _placeholder;
  void set placeholder(String v) {
    _placeholder = v;
    _placeholderSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  void set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  void _applyAttributesToElement(NumberInputElement ele) {
    super._applyAttributesToElement(ele);

    if (_placeholderSet) ele.placeholder = _placeholder;
    if (_readOnlySet) ele.readOnly = _readOnly;
    if (_requiredSet) ele.required = _required;
  }

  @override
  void _updateElementAttributes(
      VNumberInputElement prev, NumberInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_placeholder != prev._placeholder) ele.placeholder = _placeholder;
    if (_readOnly != prev._readOnly) ele.readOnly = _readOnly;
    if (_required != prev._required) ele.required = _required;
  }
}

class VRangeInputElement extends VRangeInputElementBase<RangeInputElement> {
  @override
  RangeInputElement _elementFactory() => new RangeInputElement();

  @override
  void _applyAttributesToElement(RangeInputElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(
      VRangeInputElement prev, RangeInputElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VCheckboxInputElement extends VInputElementBase<CheckboxInputElement> {
  @override
  CheckboxInputElement _elementFactory() => new CheckboxInputElement();

  bool _checked;
  bool _checkedSet = false;
  bool get checked => _checked;
  void set checked(bool v) {
    _checked = v;
    _checkedSet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  void _applyAttributesToElement(CheckboxInputElement ele) {
    super._applyAttributesToElement(ele);

    if (_checkedSet) ele.checked = _checked;
    if (_requiredSet) ele.required = _required;
  }

  @override
  void _updateElementAttributes(
      VCheckboxInputElement prev, CheckboxInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_checked != prev._checked) ele.checked = _checked;
    if (_required != prev._required) ele.required = _required;
  }
}

class VRadioButtonInputElement
    extends VInputElementBase<RadioButtonInputElement> {
  @override
  RadioButtonInputElement _elementFactory() => new RadioButtonInputElement();

  bool _checked;
  bool _checkedSet = false;
  bool get checked => _checked;
  void set checked(bool v) {
    _checked = v;
    _checkedSet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  @override
  void _applyAttributesToElement(RadioButtonInputElement ele) {
    super._applyAttributesToElement(ele);

    if (_checkedSet) ele.checked = _checked;
    if (_requiredSet) ele.required = _required;
  }

  @override
  void _updateElementAttributes(
      VRadioButtonInputElement prev, RadioButtonInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_checked != prev._checked) ele.checked = _checked;
    if (_required != prev._required) ele.required = _required;
  }
}

class VFileUploadInputElement
    extends VInputElementBase<FileUploadInputElement> {
  @override
  FileUploadInputElement _elementFactory() => new FileUploadInputElement();

  String _accept;
  bool _acceptSet = false;
  String get accept => _accept;
  void set accept(String v) {
    _accept = v;
    _acceptSet = true;
  }

  bool _multiple;
  bool _multipleSet = false;
  bool get multiple => _multiple;
  void set multiple(bool v) {
    _multiple = v;
    _multipleSet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  List<File> _files;
  bool _filesSet = false;
  List<File> get files => _files;
  void set files(List<File> v) {
    _files = v;
    _filesSet = true;
  }

  @override
  void _applyAttributesToElement(FileUploadInputElement ele) {
    super._applyAttributesToElement(ele);

    if (_acceptSet) ele.accept = _accept;
    if (_multipleSet) ele.multiple = _multiple;
    if (_requiredSet) ele.required = _required;
    if (_filesSet) ele.files = _files;
  }

  @override
  void _updateElementAttributes(
      VFileUploadInputElement prev, FileUploadInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_accept != prev._accept) ele.accept = _accept;
    if (_multiple != prev._multiple) ele.multiple = _multiple;
    if (_required != prev._required) ele.required = _required;
    if (_files != prev._files) ele.files = _files;
  }
}

class VSubmitButtonInputElement
    extends VInputElementBase<SubmitButtonInputElement> {
  @override
  SubmitButtonInputElement _elementFactory() => new SubmitButtonInputElement();

  String _formAction;
  bool _formActionSet = false;
  String get formAction => _formAction;
  void set formAction(String v) {
    _formAction = v;
    _formActionSet = true;
  }

  String _formEnctype;
  bool _formEnctypeSet = false;
  String get formEnctype => _formEnctype;
  void set formEnctype(String v) {
    _formEnctype = v;
    _formEnctypeSet = true;
  }

  String _formMethod;
  bool _formMethodSet = false;
  String get formMethod => _formMethod;
  void set formMethod(String v) {
    _formMethod = v;
    _formMethodSet = true;
  }

  bool _formNoValidate;
  bool _formNoValidateSet = false;
  bool get formNoValidate => _formNoValidate;
  void set formNoValidate(bool v) {
    _formNoValidate = v;
    _formNoValidateSet = true;
  }

  String _formTarget;
  bool _formTargetSet = false;
  String get formTarget => _formTarget;
  void set formTarget(String v) {
    _formTarget = v;
    _formTargetSet = true;
  }

  @override
  void _applyAttributesToElement(SubmitButtonInputElement ele) {
    super._applyAttributesToElement(ele);

    if (_formActionSet) ele.formAction = _formAction;
    if (_formEnctypeSet) ele.formEnctype = _formEnctype;
    if (_formMethodSet) ele.formMethod = _formMethod;
    if (_formNoValidateSet) ele.formNoValidate = _formNoValidate;
    if (_formTargetSet) ele.formTarget = _formTarget;
  }

  @override
  void _updateElementAttributes(
      VSubmitButtonInputElement prev, SubmitButtonInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_formAction != prev._formAction) ele.formAction = _formAction;
    if (_formEnctype != prev._formEnctype) ele.formEnctype = _formEnctype;
    if (_formMethod != prev._formMethod) ele.formMethod = _formMethod;
    if (_formNoValidate != prev._formNoValidate)
      ele.formNoValidate = _formNoValidate;
    if (_formTarget != prev._formTarget) ele.formTarget = _formTarget;
  }
}

class VImageButtonInputElement
    extends VInputElementBase<ImageButtonInputElement> {
  @override
  ImageButtonInputElement _elementFactory() => new ImageButtonInputElement();

  String _alt;
  bool _altSet = false;
  String get alt => _alt;
  void set alt(String v) {
    _alt = v;
    _altSet = true;
  }

  String _formAction;
  bool _formActionSet = false;
  String get formAction => _formAction;
  void set formAction(String v) {
    _formAction = v;
    _formActionSet = true;
  }

  String _formEnctype;
  bool _formEnctypeSet = false;
  String get formEnctype => _formEnctype;
  void set formEnctype(String v) {
    _formEnctype = v;
    _formEnctypeSet = true;
  }

  String _formMethod;
  bool _formMethodSet = false;
  String get formMethod => _formMethod;
  void set formMethod(String v) {
    _formMethod = v;
    _formMethodSet = true;
  }

  bool _formNoValidate;
  bool _formNoValidateSet = false;
  bool get formNoValidate => _formNoValidate;
  void set formNoValidate(bool v) {
    _formNoValidate = v;
    _formNoValidateSet = true;
  }

  String _formTarget;
  bool _formTargetSet = false;
  String get formTarget => _formTarget;
  void set formTarget(String v) {
    _formTarget = v;
    _formTargetSet = true;
  }

  int _height;
  bool _heightSet = false;
  int get height => _height;
  void set height(int v) {
    _height = v;
    _heightSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  void set src(String v) {
    _src = v;
    _srcSet = true;
  }

  int _width;
  bool _widthSet = false;
  int get width => _width;
  void set width(int v) {
    _width = v;
    _widthSet = true;
  }

  @override
  void _applyAttributesToElement(ImageButtonInputElement ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(
      VImageButtonInputElement prev, ImageButtonInputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_alt != prev._alt) ele.alt = _alt;
    if (_formAction != prev._formAction) ele.formAction = _formAction;
    if (_formEnctype != prev._formEnctype) ele.formEnctype = _formEnctype;
    if (_formMethod != prev._formMethod) ele.formMethod = _formMethod;
    if (_formNoValidate != prev._formNoValidate)
      ele.formNoValidate = _formNoValidate;
    if (_formTarget != prev._formTarget) ele.formTarget = _formTarget;
    if (_height != prev._height) ele.height = _height;
    if (_src != prev._src) ele.src = _src;
    if (_width != prev._width) ele.width = _width;
  }
}

class VResetButtonInputElement
    extends VInputElementBase<ResetButtonInputElement> {
  @override
  ResetButtonInputElement _elementFactory() => new ResetButtonInputElement();

  @override
  void _applyAttributesToElement(ResetButtonInputElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(
      VResetButtonInputElement prev, ResetButtonInputElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VButtonInputElement extends VInputElementBase<ButtonInputElement> {
  @override
  ButtonInputElement _elementFactory() => new ButtonInputElement();

  @override
  void _applyAttributesToElement(ButtonInputElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(
      VButtonInputElement prev, ButtonInputElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VKeygenElement extends VHtmlElement<KeygenElement> {
  @override
  KeygenElement _elementFactory() => new KeygenElement();

  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  void set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  String _challenge;
  bool _challengeSet = false;
  String get challenge => _challenge;
  void set challenge(String v) {
    _challenge = v;
    _challengeSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  void set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _keytype;
  bool _keytypeSet = false;
  String get keytype => _keytype;
  void set keytype(String v) {
    _keytype = v;
    _keytypeSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  @override
  void _applyAttributesToElement(KeygenElement ele) {
    super._applyAttributesToElement(ele);

    if (_autofocusSet) ele.autofocus = _autofocus;
    if (_challengeSet) ele.challenge = _challenge;
    if (_disabledSet) ele.disabled = _disabled;
    if (_keytypeSet) ele.keytype = _keytype;
    if (_nameSet) ele.name = _name;
  }

  @override
  void _updateElementAttributes(VKeygenElement prev, KeygenElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_autofocus != prev._autofocus) ele.autofocus = _autofocus;
    if (_challenge != prev._challenge) ele.challenge = _challenge;
    if (_disabled != prev._disabled) ele.disabled = _disabled;
    if (_keytype != prev._keytype) ele.keytype = _keytype;
    if (_name != prev._name) ele.name = _name;
  }
}

class VLIElement extends VHtmlElement<LIElement> {
  @override
  LIElement _elementFactory() => new LIElement();

  int _value;
  bool _valueSet = false;
  int get value => _value;
  void set value(int v) {
    _value = v;
    _valueSet = true;
  }

  @override
  void _applyAttributesToElement(LIElement ele) {
    super._applyAttributesToElement(ele);

    if (_valueSet) ele.value = _value;
  }

  @override
  void _updateElementAttributes(VLIElement prev, LIElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_value != prev._value) ele.value = _value;
  }
}

class VLabelElement extends VHtmlElement<LabelElement> {
  @override
  LabelElement _elementFactory() => new LabelElement();

  String _htmlFor;
  bool _htmlForSet = false;
  String get htmlFor => _htmlFor;
  void set htmlFor(String v) {
    _htmlFor = v;
    _htmlForSet = true;
  }

  @override
  void _applyAttributesToElement(LabelElement ele) {
    super._applyAttributesToElement(ele);

    if (_htmlForSet) ele.htmlFor = _htmlFor;
  }

  @override
  void _updateElementAttributes(VLabelElement prev, LabelElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_htmlFor != prev._htmlFor) ele.htmlFor = _htmlFor;
  }
}

class VLegendElement extends VHtmlElement<LegendElement> {
  @override
  LegendElement _elementFactory() => new LegendElement();

  @override
  void _applyAttributesToElement(LegendElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VLegendElement prev, LegendElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VLinkElement extends VHtmlElement<LinkElement> {
  @override
  LinkElement _elementFactory() => new LinkElement();

  String _as;
  bool _asSet = false;
  String get as => _as;
  void set as(String v) {
    _as = v;
    _asSet = true;
  }

  String _crossOrigin;
  bool _crossOriginSet = false;
  String get crossOrigin => _crossOrigin;
  void set crossOrigin(String v) {
    _crossOrigin = v;
    _crossOriginSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  void set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _href;
  bool _hrefSet = false;
  String get href => _href;
  void set href(String v) {
    _href = v;
    _hrefSet = true;
  }

  String _hreflang;
  bool _hreflangSet = false;
  String get hreflang => _hreflang;
  void set hreflang(String v) {
    _hreflang = v;
    _hreflangSet = true;
  }

  String _integrity;
  bool _integritySet = false;
  String get integrity => _integrity;
  void set integrity(String v) {
    _integrity = v;
    _integritySet = true;
  }

  String _media;
  bool _mediaSet = false;
  String get media => _media;
  void set media(String v) {
    _media = v;
    _mediaSet = true;
  }

  String _rel;
  bool _relSet = false;
  String get rel => _rel;
  void set rel(String v) {
    _rel = v;
    _relSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  void set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  void _applyAttributesToElement(LinkElement ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(VLinkElement prev, LinkElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_as != prev._as) ele.as = _as;
    if (_crossOrigin != prev._crossOrigin) ele.crossOrigin = _crossOrigin;
    if (_disabled != prev._disabled) ele.disabled = _disabled;
    if (_href != prev._href) ele.href = _href;
    if (_hreflang != prev._hreflang) ele.hreflang = _hreflang;
    if (_integrity != prev._integrity) ele.integrity = _integrity;
    if (_media != prev._media) ele.media = _media;
    if (_rel != prev._rel) ele.rel = _rel;
    if (_type != prev._type) ele.type = _type;
  }
}

class VMapElement extends VHtmlElement<MapElement> {
  @override
  MapElement _elementFactory() => new MapElement();

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  @override
  void _applyAttributesToElement(MapElement ele) {
    super._applyAttributesToElement(ele);

    if (_nameSet) ele.name = _name;
  }

  @override
  void _updateElementAttributes(VMapElement prev, MapElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_name != prev._name) ele.name = _name;
  }
}

abstract class VMediaElement<T extends MediaElement> extends VHtmlElement<T> {
  bool _autoplay;
  bool _autoplaySet = false;
  bool get autoplay => _autoplay;
  void set autoplay(bool v) {
    _autoplay = v;
    _autoplaySet = true;
  }

  bool _controls;
  bool _controlsSet = false;
  bool get controls => _controls;
  void set controls(bool v) {
    _controls = v;
    _controlsSet = true;
  }

  String _crossOrigin;
  bool _crossOriginSet = false;
  String get crossOrigin => _crossOrigin;
  void set crossOrigin(String v) {
    _crossOrigin = v;
    _crossOriginSet = true;
  }

  num _currentTime;
  bool _currentTimeSet = false;
  num get currentTime => _currentTime;
  void set currentTime(num v) {
    _currentTime = v;
    _currentTimeSet = true;
  }

  bool _defaultMuted;
  bool _defaultMutedSet = false;
  bool get defaultMuted => _defaultMuted;
  void set defaultMuted(bool v) {
    _defaultMuted = v;
    _defaultMutedSet = true;
  }

  num _defaultPlaybackRate;
  bool _defaultPlaybackRateSet = false;
  num get defaultPlaybackRate => _defaultPlaybackRate;
  void set defaultPlaybackRate(num v) {
    _defaultPlaybackRate = v;
    _defaultPlaybackRateSet = true;
  }

  bool _disableRemotePlayback;
  bool _disableRemotePlaybackSet = false;
  bool get disableRemotePlayback => _disableRemotePlayback;
  void set disableRemotePlayback(bool v) {
    _disableRemotePlayback = v;
    _disableRemotePlaybackSet = true;
  }

  bool _loop;
  bool _loopSet = false;
  bool get loop => _loop;
  void set loop(bool v) {
    _loop = v;
    _loopSet = true;
  }

  bool _muted;
  bool _mutedSet = false;
  bool get muted => _muted;
  void set muted(bool v) {
    _muted = v;
    _mutedSet = true;
  }

  num _playbackRate;
  bool _playbackRateSet = false;
  num get playbackRate => _playbackRate;
  void set playbackRate(num v) {
    _playbackRate = v;
    _playbackRateSet = true;
  }

  String _preload;
  bool _preloadSet = false;
  String get preload => _preload;
  void set preload(String v) {
    _preload = v;
    _preloadSet = true;
  }

  MediaSession _session;
  bool _sessionSet = false;
  MediaSession get session => _session;
  void set session(MediaSession v) {
    _session = v;
    _sessionSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  void set src(String v) {
    _src = v;
    _srcSet = true;
  }

  num _volume;
  bool _volumeSet = false;
  num get volume => _volume;
  void set volume(num v) {
    _volume = v;
    _volumeSet = true;
  }

  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(covariant VMediaElement<T> prev, T ele) {
    super._updateElementAttributes(prev, ele);

    if (_autoplay != prev._autoplay) ele.autoplay = _autoplay;
    if (_controls != prev._controls) ele.controls = _controls;
    if (_crossOrigin != prev._crossOrigin) ele.crossOrigin = _crossOrigin;
    if (_currentTime != prev._currentTime) ele.currentTime = _currentTime;
    if (_defaultMuted != prev._defaultMuted) ele.defaultMuted = _defaultMuted;
    if (_defaultPlaybackRate != prev._defaultPlaybackRate)
      ele.defaultPlaybackRate = _defaultPlaybackRate;
    if (_disableRemotePlayback != prev._disableRemotePlayback)
      ele.disableRemotePlayback = _disableRemotePlayback;
    if (_loop != prev._loop) ele.loop = _loop;
    if (_muted != prev._muted) ele.muted = _muted;
    if (_playbackRate != prev._playbackRate) ele.playbackRate = _playbackRate;
    if (_preload != prev._preload) ele.preload = _preload;
    if (_session != prev._session) ele.session = _session;
    if (_src != prev._src) ele.src = _src;
    if (_volume != prev._volume) ele.volume = _volume;
  }
}

class VMenuElement extends VHtmlElement<MenuElement> {
  @override
  MenuElement _elementFactory() => new MenuElement();

  String _label;
  bool _labelSet = false;
  String get label => _label;
  void set label(String v) {
    _label = v;
    _labelSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  void set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  void _applyAttributesToElement(MenuElement ele) {
    super._applyAttributesToElement(ele);

    if (_labelSet) ele.label = _label;
    if (_typeSet) ele.type = _type;
  }

  @override
  void _updateElementAttributes(VMenuElement prev, MenuElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_label != prev._label) ele.label = _label;
    if (_type != prev._type) ele.type = _type;
  }
}

abstract class VMenuItemElement<T extends MenuItemElement>
    extends VHtmlElement<T> {
  bool _checked;
  bool _checkedSet = false;
  bool get checked => _checked;
  void set checked(bool v) {
    _checked = v;
    _checkedSet = true;
  }

  bool _defaultValue;
  bool _defaultValueSet = false;
  bool get defaultValue => _defaultValue;
  void set defaultValue(bool v) {
    _defaultValue = v;
    _defaultValueSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  void set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _icon;
  bool _iconSet = false;
  String get icon => _icon;
  void set icon(String v) {
    _icon = v;
    _iconSet = true;
  }

  String _label;
  bool _labelSet = false;
  String get label => _label;
  void set label(String v) {
    _label = v;
    _labelSet = true;
  }

  String _radiogroup;
  bool _radiogroupSet = false;
  String get radiogroup => _radiogroup;
  void set radiogroup(String v) {
    _radiogroup = v;
    _radiogroupSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  void set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);

    if (_checkedSet) ele.checked = _checked;
    if (_defaultValueSet) ele.defaultValue = _defaultValue;
    if (_disabledSet) ele.disabled = _disabled;
    if (_iconSet) ele.icon = _icon;
    if (_labelSet) ele.label = _label;
    if (_radiogroupSet) ele.radiogroup = _radiogroup;
    if (_typeSet) ele.type = _type;
  }

  @override
  void _updateElementAttributes(covariant VMenuItemElement<T> prev, T ele) {
    super._updateElementAttributes(prev, ele);

    if (_checked != prev._checked) ele.checked = _checked;
    if (_defaultValue != prev._defaultValue) ele.defaultValue = _defaultValue;
    if (_disabled != prev._disabled) ele.disabled = _disabled;
    if (_icon != prev._icon) ele.icon = _icon;
    if (_label != prev._label) ele.label = _label;
    if (_radiogroup != prev._radiogroup) ele.radiogroup = _radiogroup;
    if (_type != prev._type) ele.type = _type;
  }
}

class VMetaElement extends VHtmlElement<MetaElement> {
  @override
  MetaElement _elementFactory() => new MetaElement();

  String _content;
  bool _contentSet = false;
  String get content => _content;
  void set content(String v) {
    _content = v;
    _contentSet = true;
  }

  String _httpEquiv;
  bool _httpEquivSet = false;
  String get httpEquiv => _httpEquiv;
  void set httpEquiv(String v) {
    _httpEquiv = v;
    _httpEquivSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  @override
  void _applyAttributesToElement(MetaElement ele) {
    super._applyAttributesToElement(ele);

    if (_contentSet) ele.content = _content;
    if (_httpEquivSet) ele.httpEquiv = _httpEquiv;
    if (_nameSet) ele.name = _name;
  }

  @override
  void _updateElementAttributes(VMetaElement prev, MetaElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_content != prev._content) ele.content = _content;
    if (_httpEquiv != prev._httpEquiv) ele.httpEquiv = _httpEquiv;
    if (_name != prev._name) ele.name = _name;
  }
}

class VMeterElement extends VHtmlElement<MeterElement> {
  @override
  MeterElement _elementFactory() => new MeterElement();

  num _high;
  bool _highSet = false;
  num get high => _high;
  void set high(num v) {
    _high = v;
    _highSet = true;
  }

  num _low;
  bool _lowSet = false;
  num get low => _low;
  void set low(num v) {
    _low = v;
    _lowSet = true;
  }

  num _max;
  bool _maxSet = false;
  num get max => _max;
  void set max(num v) {
    _max = v;
    _maxSet = true;
  }

  num _min;
  bool _minSet = false;
  num get min => _min;
  void set min(num v) {
    _min = v;
    _minSet = true;
  }

  num _optimum;
  bool _optimumSet = false;
  num get optimum => _optimum;
  void set optimum(num v) {
    _optimum = v;
    _optimumSet = true;
  }

  num _value;
  bool _valueSet = false;
  num get value => _value;
  void set value(num v) {
    _value = v;
    _valueSet = true;
  }

  @override
  void _applyAttributesToElement(MeterElement ele) {
    super._applyAttributesToElement(ele);

    if (_highSet) ele.high = _high;
    if (_lowSet) ele.low = _low;
    if (_maxSet) ele.max = _max;
    if (_minSet) ele.min = _min;
    if (_optimumSet) ele.optimum = _optimum;
    if (_valueSet) ele.value = _value;
  }

  @override
  void _updateElementAttributes(VMeterElement prev, MeterElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_high != prev._high) ele.high = _high;
    if (_low != prev._low) ele.low = _low;
    if (_max != prev._max) ele.max = _max;
    if (_min != prev._min) ele.min = _min;
    if (_optimum != prev._optimum) ele.optimum = _optimum;
    if (_value != prev._value) ele.value = _value;
  }
}

abstract class VModElement<T extends ModElement> extends VHtmlElement<T> {
  String _cite;
  bool _citeSet = false;
  String get cite => _cite;
  void set cite(String v) {
    _cite = v;
    _citeSet = true;
  }

  String _dateTime;
  bool _dateTimeSet = false;
  String get dateTime => _dateTime;
  void set dateTime(String v) {
    _dateTime = v;
    _dateTimeSet = true;
  }

  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);

    if (_citeSet) ele.cite = _cite;
    if (_dateTimeSet) ele.dateTime = _dateTime;
  }

  @override
  void _updateElementAttributes(covariant VModElement<T> prev, T ele) {
    super._updateElementAttributes(prev, ele);

    if (_cite != prev._cite) ele.cite = _cite;
    if (_dateTime != prev._dateTime) ele.dateTime = _dateTime;
  }
}

class VOListElement extends VHtmlElement<OListElement> {
  @override
  OListElement _elementFactory() => new OListElement();

  bool _reversed;
  bool _reversedSet = false;
  bool get reversed => _reversed;
  void set reversed(bool v) {
    _reversed = v;
    _reversedSet = true;
  }

  int _start;
  bool _startSet = false;
  int get start => _start;
  void set start(int v) {
    _start = v;
    _startSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  void set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  void _applyAttributesToElement(OListElement ele) {
    super._applyAttributesToElement(ele);

    if (_reversedSet) ele.reversed = _reversed;
    if (_startSet) ele.start = _start;
    if (_typeSet) ele.type = _type;
  }

  @override
  void _updateElementAttributes(VOListElement prev, OListElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_reversed != prev._reversed) ele.reversed = _reversed;
    if (_start != prev._start) ele.start = _start;
    if (_type != prev._type) ele.type = _type;
  }
}

class VObjectElement extends VHtmlElement<ObjectElement> {
  @override
  ObjectElement _elementFactory() => new ObjectElement();

  String _data;
  bool _dataSet = false;
  String get data => _data;
  void set data(String v) {
    _data = v;
    _dataSet = true;
  }

  String _height;
  bool _heightSet = false;
  String get height => _height;
  void set height(String v) {
    _height = v;
    _heightSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  void set type(String v) {
    _type = v;
    _typeSet = true;
  }

  String _useMap;
  bool _useMapSet = false;
  String get useMap => _useMap;
  void set useMap(String v) {
    _useMap = v;
    _useMapSet = true;
  }

  String _width;
  bool _widthSet = false;
  String get width => _width;
  void set width(String v) {
    _width = v;
    _widthSet = true;
  }

  @override
  void _applyAttributesToElement(ObjectElement ele) {
    super._applyAttributesToElement(ele);

    if (_dataSet) ele.data = _data;
    if (_heightSet) ele.height = _height;
    if (_nameSet) ele.name = _name;
    if (_typeSet) ele.type = _type;
    if (_useMapSet) ele.useMap = _useMap;
    if (_widthSet) ele.width = _width;
  }

  @override
  void _updateElementAttributes(VObjectElement prev, ObjectElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_data != prev._data) ele.data = _data;
    if (_height != prev._height) ele.height = _height;
    if (_name != prev._name) ele.name = _name;
    if (_type != prev._type) ele.type = _type;
    if (_useMap != prev._useMap) ele.useMap = _useMap;
    if (_width != prev._width) ele.width = _width;
  }
}

class VOptGroupElement extends VHtmlElement<OptGroupElement> {
  @override
  OptGroupElement _elementFactory() => new OptGroupElement();

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  void set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _label;
  bool _labelSet = false;
  String get label => _label;
  void set label(String v) {
    _label = v;
    _labelSet = true;
  }

  @override
  void _applyAttributesToElement(OptGroupElement ele) {
    super._applyAttributesToElement(ele);

    if (_disabledSet) ele.disabled = _disabled;
    if (_labelSet) ele.label = _label;
  }

  @override
  void _updateElementAttributes(VOptGroupElement prev, OptGroupElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_disabled != prev._disabled) ele.disabled = _disabled;
    if (_label != prev._label) ele.label = _label;
  }
}

class VOptionElement extends VHtmlElement<OptionElement> {
  @override
  OptionElement _elementFactory() => new OptionElement();

  bool _defaultSelected;
  bool _defaultSelectedSet = false;
  bool get defaultSelected => _defaultSelected;
  void set defaultSelected(bool v) {
    _defaultSelected = v;
    _defaultSelectedSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  void set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _label;
  bool _labelSet = false;
  String get label => _label;
  void set label(String v) {
    _label = v;
    _labelSet = true;
  }

  bool _selected;
  bool _selectedSet = false;
  bool get selected => _selected;
  void set selected(bool v) {
    _selected = v;
    _selectedSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  void set value(String v) {
    _value = v;
    _valueSet = true;
  }

  @override
  void _applyAttributesToElement(OptionElement ele) {
    super._applyAttributesToElement(ele);

    if (_defaultSelectedSet) ele.defaultSelected = _defaultSelected;
    if (_disabledSet) ele.disabled = _disabled;
    if (_labelSet) ele.label = _label;
    if (_selectedSet) ele.selected = _selected;
    if (_valueSet) ele.value = _value;
  }

  @override
  void _updateElementAttributes(VOptionElement prev, OptionElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_defaultSelected != prev._defaultSelected)
      ele.defaultSelected = _defaultSelected;
    if (_disabled != prev._disabled) ele.disabled = _disabled;
    if (_label != prev._label) ele.label = _label;
    if (_selected != prev._selected) ele.selected = _selected;
    if (_value != prev._value) ele.value = _value;
  }
}

class VOutputElement extends VHtmlElement<OutputElement> {
  @override
  OutputElement _elementFactory() => new OutputElement();

  String _defaultValue;
  bool _defaultValueSet = false;
  String get defaultValue => _defaultValue;
  void set defaultValue(String v) {
    _defaultValue = v;
    _defaultValueSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  void set value(String v) {
    _value = v;
    _valueSet = true;
  }

  @override
  void _applyAttributesToElement(OutputElement ele) {
    super._applyAttributesToElement(ele);

    if (_defaultValueSet) ele.defaultValue = _defaultValue;
    if (_nameSet) ele.name = _name;
    if (_valueSet) ele.value = _value;
  }

  @override
  void _updateElementAttributes(VOutputElement prev, OutputElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_defaultValue != prev._defaultValue) ele.defaultValue = _defaultValue;
    if (_name != prev._name) ele.name = _name;
    if (_value != prev._value) ele.value = _value;
  }
}

class VParagraphElement extends VHtmlElement<ParagraphElement> {
  @override
  ParagraphElement _elementFactory() => new ParagraphElement();

  @override
  void _applyAttributesToElement(ParagraphElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VParagraphElement prev, ParagraphElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VParamElement extends VHtmlElement<ParamElement> {
  @override
  ParamElement _elementFactory() => new ParamElement();

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  void set value(String v) {
    _value = v;
    _valueSet = true;
  }

  @override
  void _applyAttributesToElement(ParamElement ele) {
    super._applyAttributesToElement(ele);

    if (_nameSet) ele.name = _name;
    if (_valueSet) ele.value = _value;
  }

  @override
  void _updateElementAttributes(VParamElement prev, ParamElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_name != prev._name) ele.name = _name;
    if (_value != prev._value) ele.value = _value;
  }
}

abstract class VPictureElement<T extends PictureElement>
    extends VHtmlElement<T> {
  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(covariant VPictureElement<T> prev, T ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VPreElement extends VHtmlElement<PreElement> {
  @override
  PreElement _elementFactory() => new PreElement();

  @override
  void _applyAttributesToElement(PreElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VPreElement prev, PreElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VProgressElement extends VHtmlElement<ProgressElement> {
  @override
  ProgressElement _elementFactory() => new ProgressElement();

  num _max;
  bool _maxSet = false;
  num get max => _max;
  void set max(num v) {
    _max = v;
    _maxSet = true;
  }

  num _value;
  bool _valueSet = false;
  num get value => _value;
  void set value(num v) {
    _value = v;
    _valueSet = true;
  }

  @override
  void _applyAttributesToElement(ProgressElement ele) {
    super._applyAttributesToElement(ele);

    if (_maxSet) ele.max = _max;
    if (_valueSet) ele.value = _value;
  }

  @override
  void _updateElementAttributes(VProgressElement prev, ProgressElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_max != prev._max) ele.max = _max;
    if (_value != prev._value) ele.value = _value;
  }
}

class VQuoteElement extends VHtmlElement<QuoteElement> {
  @override
  QuoteElement _elementFactory() => new QuoteElement();

  String _cite;
  bool _citeSet = false;
  String get cite => _cite;
  void set cite(String v) {
    _cite = v;
    _citeSet = true;
  }

  @override
  void _applyAttributesToElement(QuoteElement ele) {
    super._applyAttributesToElement(ele);

    if (_citeSet) ele.cite = _cite;
  }

  @override
  void _updateElementAttributes(VQuoteElement prev, QuoteElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_cite != prev._cite) ele.cite = _cite;
  }
}

class VScriptElement extends VHtmlElement<ScriptElement> {
  @override
  ScriptElement _elementFactory() => new ScriptElement();

  bool _async;
  bool _asyncSet = false;
  bool get async => _async;
  void set async(bool v) {
    _async = v;
    _asyncSet = true;
  }

  String _charset;
  bool _charsetSet = false;
  String get charset => _charset;
  void set charset(String v) {
    _charset = v;
    _charsetSet = true;
  }

  String _crossOrigin;
  bool _crossOriginSet = false;
  String get crossOrigin => _crossOrigin;
  void set crossOrigin(String v) {
    _crossOrigin = v;
    _crossOriginSet = true;
  }

  bool _defer;
  bool _deferSet = false;
  bool get defer => _defer;
  void set defer(bool v) {
    _defer = v;
    _deferSet = true;
  }

  String _integrity;
  bool _integritySet = false;
  String get integrity => _integrity;
  void set integrity(String v) {
    _integrity = v;
    _integritySet = true;
  }

  String _nonce;
  bool _nonceSet = false;
  String get nonce => _nonce;
  void set nonce(String v) {
    _nonce = v;
    _nonceSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  void set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  void set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  void _applyAttributesToElement(ScriptElement ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(VScriptElement prev, ScriptElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_async != prev._async) ele.async = _async;
    if (_charset != prev._charset) ele.charset = _charset;
    if (_crossOrigin != prev._crossOrigin) ele.crossOrigin = _crossOrigin;
    if (_defer != prev._defer) ele.defer = _defer;
    if (_integrity != prev._integrity) ele.integrity = _integrity;
    if (_nonce != prev._nonce) ele.nonce = _nonce;
    if (_src != prev._src) ele.src = _src;
    if (_type != prev._type) ele.type = _type;
  }
}

class VSelectElement extends VHtmlElement<SelectElement> {
  @override
  SelectElement _elementFactory() => new SelectElement();

  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  void set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  void set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  int _length;
  bool _lengthSet = false;
  int get length => _length;
  void set length(int v) {
    _length = v;
    _lengthSet = true;
  }

  bool _multiple;
  bool _multipleSet = false;
  bool get multiple => _multiple;
  void set multiple(bool v) {
    _multiple = v;
    _multipleSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  int _selectedIndex;
  bool _selectedIndexSet = false;
  int get selectedIndex => _selectedIndex;
  void set selectedIndex(int v) {
    _selectedIndex = v;
    _selectedIndexSet = true;
  }

  int _size;
  bool _sizeSet = false;
  int get size => _size;
  void set size(int v) {
    _size = v;
    _sizeSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  void set value(String v) {
    _value = v;
    _valueSet = true;
  }

  @override
  void _applyAttributesToElement(SelectElement ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(VSelectElement prev, SelectElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_autofocus != prev._autofocus) ele.autofocus = _autofocus;
    if (_disabled != prev._disabled) ele.disabled = _disabled;
    if (_length != prev._length) ele.length = _length;
    if (_multiple != prev._multiple) ele.multiple = _multiple;
    if (_name != prev._name) ele.name = _name;
    if (_required != prev._required) ele.required = _required;
    if (_selectedIndex != prev._selectedIndex)
      ele.selectedIndex = _selectedIndex;
    if (_size != prev._size) ele.size = _size;
    if (_value != prev._value) ele.value = _value;
  }
}

class VShadowElement extends VHtmlElement<ShadowElement> {
  @override
  ShadowElement _elementFactory() => new ShadowElement();

  @override
  void _applyAttributesToElement(ShadowElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VShadowElement prev, ShadowElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

abstract class VSlotElement<T extends SlotElement> extends VHtmlElement<T> {
  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);

    if (_nameSet) ele.name = _name;
  }

  @override
  void _updateElementAttributes(covariant VSlotElement<T> prev, T ele) {
    super._updateElementAttributes(prev, ele);

    if (_name != prev._name) ele.name = _name;
  }
}

class VSourceElement extends VHtmlElement<SourceElement> {
  @override
  SourceElement _elementFactory() => new SourceElement();

  String _media;
  bool _mediaSet = false;
  String get media => _media;
  void set media(String v) {
    _media = v;
    _mediaSet = true;
  }

  String _sizes;
  bool _sizesSet = false;
  String get sizes => _sizes;
  void set sizes(String v) {
    _sizes = v;
    _sizesSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  void set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _srcset;
  bool _srcsetSet = false;
  String get srcset => _srcset;
  void set srcset(String v) {
    _srcset = v;
    _srcsetSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  void set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  void _applyAttributesToElement(SourceElement ele) {
    super._applyAttributesToElement(ele);

    if (_mediaSet) ele.media = _media;
    if (_sizesSet) ele.sizes = _sizes;
    if (_srcSet) ele.src = _src;
    if (_srcsetSet) ele.srcset = _srcset;
    if (_typeSet) ele.type = _type;
  }

  @override
  void _updateElementAttributes(VSourceElement prev, SourceElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_media != prev._media) ele.media = _media;
    if (_sizes != prev._sizes) ele.sizes = _sizes;
    if (_src != prev._src) ele.src = _src;
    if (_srcset != prev._srcset) ele.srcset = _srcset;
    if (_type != prev._type) ele.type = _type;
  }
}

class VSpanElement extends VHtmlElement<SpanElement> {
  @override
  SpanElement _elementFactory() => new SpanElement();

  @override
  void _applyAttributesToElement(SpanElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VSpanElement prev, SpanElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VStyleElement extends VHtmlElement<StyleElement> {
  @override
  StyleElement _elementFactory() => new StyleElement();

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  void set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _media;
  bool _mediaSet = false;
  String get media => _media;
  void set media(String v) {
    _media = v;
    _mediaSet = true;
  }

  String _type;
  bool _typeSet = false;
  String get type => _type;
  void set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  void _applyAttributesToElement(StyleElement ele) {
    super._applyAttributesToElement(ele);

    if (_disabledSet) ele.disabled = _disabled;
    if (_mediaSet) ele.media = _media;
    if (_typeSet) ele.type = _type;
  }

  @override
  void _updateElementAttributes(VStyleElement prev, StyleElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_disabled != prev._disabled) ele.disabled = _disabled;
    if (_media != prev._media) ele.media = _media;
    if (_type != prev._type) ele.type = _type;
  }
}

class VTableCaptionElement extends VHtmlElement<TableCaptionElement> {
  @override
  TableCaptionElement _elementFactory() => new TableCaptionElement();

  @override
  void _applyAttributesToElement(TableCaptionElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(
      VTableCaptionElement prev, TableCaptionElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VTableCellElement extends VHtmlElement<TableCellElement> {
  @override
  TableCellElement _elementFactory() => new TableCellElement();

  int _colSpan;
  bool _colSpanSet = false;
  int get colSpan => _colSpan;
  void set colSpan(int v) {
    _colSpan = v;
    _colSpanSet = true;
  }

  String _headers;
  bool _headersSet = false;
  String get headers => _headers;
  void set headers(String v) {
    _headers = v;
    _headersSet = true;
  }

  int _rowSpan;
  bool _rowSpanSet = false;
  int get rowSpan => _rowSpan;
  void set rowSpan(int v) {
    _rowSpan = v;
    _rowSpanSet = true;
  }

  @override
  void _applyAttributesToElement(TableCellElement ele) {
    super._applyAttributesToElement(ele);

    if (_colSpanSet) ele.colSpan = _colSpan;
    if (_headersSet) ele.headers = _headers;
    if (_rowSpanSet) ele.rowSpan = _rowSpan;
  }

  @override
  void _updateElementAttributes(VTableCellElement prev, TableCellElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_colSpan != prev._colSpan) ele.colSpan = _colSpan;
    if (_headers != prev._headers) ele.headers = _headers;
    if (_rowSpan != prev._rowSpan) ele.rowSpan = _rowSpan;
  }
}

class VTableColElement extends VHtmlElement<TableColElement> {
  @override
  TableColElement _elementFactory() => new TableColElement();

  int _span;
  bool _spanSet = false;
  int get span => _span;
  void set span(int v) {
    _span = v;
    _spanSet = true;
  }

  @override
  void _applyAttributesToElement(TableColElement ele) {
    super._applyAttributesToElement(ele);

    if (_spanSet) ele.span = _span;
  }

  @override
  void _updateElementAttributes(VTableColElement prev, TableColElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_span != prev._span) ele.span = _span;
  }
}

class VTableElement extends VHtmlElement<TableElement> {
  @override
  TableElement _elementFactory() => new TableElement();

  TableCaptionElement _caption;
  bool _captionSet = false;
  TableCaptionElement get caption => _caption;
  void set caption(TableCaptionElement v) {
    _caption = v;
    _captionSet = true;
  }

  TableSectionElement _tFoot;
  bool _tFootSet = false;
  TableSectionElement get tFoot => _tFoot;
  void set tFoot(TableSectionElement v) {
    _tFoot = v;
    _tFootSet = true;
  }

  TableSectionElement _tHead;
  bool _tHeadSet = false;
  TableSectionElement get tHead => _tHead;
  void set tHead(TableSectionElement v) {
    _tHead = v;
    _tHeadSet = true;
  }

  @override
  void _applyAttributesToElement(TableElement ele) {
    super._applyAttributesToElement(ele);

    if (_captionSet) ele.caption = _caption;
    if (_tFootSet) ele.tFoot = _tFoot;
    if (_tHeadSet) ele.tHead = _tHead;
  }

  @override
  void _updateElementAttributes(VTableElement prev, TableElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_caption != prev._caption) ele.caption = _caption;
    if (_tFoot != prev._tFoot) ele.tFoot = _tFoot;
    if (_tHead != prev._tHead) ele.tHead = _tHead;
  }
}

class VTableRowElement extends VHtmlElement<TableRowElement> {
  @override
  TableRowElement _elementFactory() => new TableRowElement();

  @override
  void _applyAttributesToElement(TableRowElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VTableRowElement prev, TableRowElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

abstract class VTableSectionElement<T extends TableSectionElement>
    extends VHtmlElement<T> {
  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(covariant VTableSectionElement<T> prev, T ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VTemplateElement extends VHtmlElement<TemplateElement> {
  @override
  TemplateElement _elementFactory() => new TemplateElement();

  @override
  void _applyAttributesToElement(TemplateElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VTemplateElement prev, TemplateElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VTextAreaElement extends VHtmlElement<TextAreaElement> {
  @override
  TextAreaElement _elementFactory() => new TextAreaElement();

  String _autocapitalize;
  bool _autocapitalizeSet = false;
  String get autocapitalize => _autocapitalize;
  void set autocapitalize(String v) {
    _autocapitalize = v;
    _autocapitalizeSet = true;
  }

  bool _autofocus;
  bool _autofocusSet = false;
  bool get autofocus => _autofocus;
  void set autofocus(bool v) {
    _autofocus = v;
    _autofocusSet = true;
  }

  int _cols;
  bool _colsSet = false;
  int get cols => _cols;
  void set cols(int v) {
    _cols = v;
    _colsSet = true;
  }

  String _defaultValue;
  bool _defaultValueSet = false;
  String get defaultValue => _defaultValue;
  void set defaultValue(String v) {
    _defaultValue = v;
    _defaultValueSet = true;
  }

  String _dirName;
  bool _dirNameSet = false;
  String get dirName => _dirName;
  void set dirName(String v) {
    _dirName = v;
    _dirNameSet = true;
  }

  bool _disabled;
  bool _disabledSet = false;
  bool get disabled => _disabled;
  void set disabled(bool v) {
    _disabled = v;
    _disabledSet = true;
  }

  String _inputMode;
  bool _inputModeSet = false;
  String get inputMode => _inputMode;
  void set inputMode(String v) {
    _inputMode = v;
    _inputModeSet = true;
  }

  int _maxLength;
  bool _maxLengthSet = false;
  int get maxLength => _maxLength;
  void set maxLength(int v) {
    _maxLength = v;
    _maxLengthSet = true;
  }

  int _minLength;
  bool _minLengthSet = false;
  int get minLength => _minLength;
  void set minLength(int v) {
    _minLength = v;
    _minLengthSet = true;
  }

  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  String _placeholder;
  bool _placeholderSet = false;
  String get placeholder => _placeholder;
  void set placeholder(String v) {
    _placeholder = v;
    _placeholderSet = true;
  }

  bool _readOnly;
  bool _readOnlySet = false;
  bool get readOnly => _readOnly;
  void set readOnly(bool v) {
    _readOnly = v;
    _readOnlySet = true;
  }

  bool _required;
  bool _requiredSet = false;
  bool get required => _required;
  void set required(bool v) {
    _required = v;
    _requiredSet = true;
  }

  int _rows;
  bool _rowsSet = false;
  int get rows => _rows;
  void set rows(int v) {
    _rows = v;
    _rowsSet = true;
  }

  String _selectionDirection;
  bool _selectionDirectionSet = false;
  String get selectionDirection => _selectionDirection;
  void set selectionDirection(String v) {
    _selectionDirection = v;
    _selectionDirectionSet = true;
  }

  int _selectionEnd;
  bool _selectionEndSet = false;
  int get selectionEnd => _selectionEnd;
  void set selectionEnd(int v) {
    _selectionEnd = v;
    _selectionEndSet = true;
  }

  int _selectionStart;
  bool _selectionStartSet = false;
  int get selectionStart => _selectionStart;
  void set selectionStart(int v) {
    _selectionStart = v;
    _selectionStartSet = true;
  }

  String _value;
  bool _valueSet = false;
  String get value => _value;
  void set value(String v) {
    _value = v;
    _valueSet = true;
  }

  String _wrap;
  bool _wrapSet = false;
  String get wrap => _wrap;
  void set wrap(String v) {
    _wrap = v;
    _wrapSet = true;
  }

  @override
  void _applyAttributesToElement(TextAreaElement ele) {
    super._applyAttributesToElement(ele);

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
  void _updateElementAttributes(VTextAreaElement prev, TextAreaElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_autocapitalize != prev._autocapitalize)
      ele.autocapitalize = _autocapitalize;
    if (_autofocus != prev._autofocus) ele.autofocus = _autofocus;
    if (_cols != prev._cols) ele.cols = _cols;
    if (_defaultValue != prev._defaultValue) ele.defaultValue = _defaultValue;
    if (_dirName != prev._dirName) ele.dirName = _dirName;
    if (_disabled != prev._disabled) ele.disabled = _disabled;
    if (_inputMode != prev._inputMode) ele.inputMode = _inputMode;
    if (_maxLength != prev._maxLength) ele.maxLength = _maxLength;
    if (_minLength != prev._minLength) ele.minLength = _minLength;
    if (_name != prev._name) ele.name = _name;
    if (_placeholder != prev._placeholder) ele.placeholder = _placeholder;
    if (_readOnly != prev._readOnly) ele.readOnly = _readOnly;
    if (_required != prev._required) ele.required = _required;
    if (_rows != prev._rows) ele.rows = _rows;
    if (_selectionDirection != prev._selectionDirection)
      ele.selectionDirection = _selectionDirection;
    if (_selectionEnd != prev._selectionEnd) ele.selectionEnd = _selectionEnd;
    if (_selectionStart != prev._selectionStart)
      ele.selectionStart = _selectionStart;
    if (_value != prev._value) ele.value = _value;
    if (_wrap != prev._wrap) ele.wrap = _wrap;
  }
}

class VTitleElement extends VHtmlElement<TitleElement> {
  @override
  TitleElement _elementFactory() => new TitleElement();

  @override
  void _applyAttributesToElement(TitleElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VTitleElement prev, TitleElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VTrackElement extends VHtmlElement<TrackElement> {
  @override
  TrackElement _elementFactory() => new TrackElement();

  bool _defaultValue;
  bool _defaultValueSet = false;
  bool get defaultValue => _defaultValue;
  void set defaultValue(bool v) {
    _defaultValue = v;
    _defaultValueSet = true;
  }

  String _kind;
  bool _kindSet = false;
  String get kind => _kind;
  void set kind(String v) {
    _kind = v;
    _kindSet = true;
  }

  String _label;
  bool _labelSet = false;
  String get label => _label;
  void set label(String v) {
    _label = v;
    _labelSet = true;
  }

  String _src;
  bool _srcSet = false;
  String get src => _src;
  void set src(String v) {
    _src = v;
    _srcSet = true;
  }

  String _srclang;
  bool _srclangSet = false;
  String get srclang => _srclang;
  void set srclang(String v) {
    _srclang = v;
    _srclangSet = true;
  }

  @override
  void _applyAttributesToElement(TrackElement ele) {
    super._applyAttributesToElement(ele);

    if (_defaultValueSet) ele.defaultValue = _defaultValue;
    if (_kindSet) ele.kind = _kind;
    if (_labelSet) ele.label = _label;
    if (_srcSet) ele.src = _src;
    if (_srclangSet) ele.srclang = _srclang;
  }

  @override
  void _updateElementAttributes(VTrackElement prev, TrackElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_defaultValue != prev._defaultValue) ele.defaultValue = _defaultValue;
    if (_kind != prev._kind) ele.kind = _kind;
    if (_label != prev._label) ele.label = _label;
    if (_src != prev._src) ele.src = _src;
    if (_srclang != prev._srclang) ele.srclang = _srclang;
  }
}

class VUListElement extends VHtmlElement<UListElement> {
  @override
  UListElement _elementFactory() => new UListElement();

  @override
  void _applyAttributesToElement(UListElement ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(VUListElement prev, UListElement ele) {
    super._updateElementAttributes(prev, ele);
  }
}

abstract class VUnknownElement<T extends UnknownElement>
    extends VHtmlElement<T> {
  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);
  }

  @override
  void _updateElementAttributes(covariant VUnknownElement<T> prev, T ele) {
    super._updateElementAttributes(prev, ele);
  }
}

class VVideoElement extends VMediaElement<VideoElement> {
  @override
  VideoElement _elementFactory() => new VideoElement();

  int _height;
  bool _heightSet = false;
  int get height => _height;
  void set height(int v) {
    _height = v;
    _heightSet = true;
  }

  String _poster;
  bool _posterSet = false;
  String get poster => _poster;
  void set poster(String v) {
    _poster = v;
    _posterSet = true;
  }

  int _width;
  bool _widthSet = false;
  int get width => _width;
  void set width(int v) {
    _width = v;
    _widthSet = true;
  }

  @override
  void _applyAttributesToElement(VideoElement ele) {
    super._applyAttributesToElement(ele);

    if (_heightSet) ele.height = _height;
    if (_posterSet) ele.poster = _poster;
    if (_widthSet) ele.width = _width;
  }

  @override
  void _updateElementAttributes(VVideoElement prev, VideoElement ele) {
    super._updateElementAttributes(prev, ele);

    if (_height != prev._height) ele.height = _height;
    if (_poster != prev._poster) ele.poster = _poster;
    if (_width != prev._width) ele.width = _width;
  }
}
