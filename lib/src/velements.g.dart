part of wui_builder;

abstract class VHtmlElement<T extends HtmlElement> extends VElement<T> {}

class VAnchorElement extends VHtmlElement<AnchorElement> {
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
  AnchorElement _elementFactory() => new AnchorElement();
  @override
  void _applyAttributesToElement(AnchorElement ele) {
    super._applyAttributesToElement(ele);
    if (_downloadSet) ele.download = download;
    if (_hreflangSet) ele.hreflang = hreflang;
    if (_referrerpolicySet) ele.referrerpolicy = referrerpolicy;
    if (_relSet) ele.rel = rel;
    if (_targetSet) ele.target = target;
    if (_typeSet) ele.type = type;
    if (_hashSet) ele.hash = hash;
    if (_hostSet) ele.host = host;
    if (_hostnameSet) ele.hostname = hostname;
    if (_hrefSet) ele.href = href;
    if (_passwordSet) ele.password = password;
    if (_pathnameSet) ele.pathname = pathname;
    if (_portSet) ele.port = port;
    if (_protocolSet) ele.protocol = protocol;
    if (_searchSet) ele.search = search;
    if (_usernameSet) ele.username = username;
  }
}

class VAreaElement extends VHtmlElement<AreaElement> {
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
  AreaElement _elementFactory() => new AreaElement();
  @override
  void _applyAttributesToElement(AreaElement ele) {
    super._applyAttributesToElement(ele);
    if (_altSet) ele.alt = alt;
    if (_coordsSet) ele.coords = coords;
    if (_referrerpolicySet) ele.referrerpolicy = referrerpolicy;
    if (_shapeSet) ele.shape = shape;
    if (_targetSet) ele.target = target;
    if (_hashSet) ele.hash = hash;
    if (_hostSet) ele.host = host;
    if (_hostnameSet) ele.hostname = hostname;
    if (_hrefSet) ele.href = href;
    if (_passwordSet) ele.password = password;
    if (_pathnameSet) ele.pathname = pathname;
    if (_portSet) ele.port = port;
    if (_protocolSet) ele.protocol = protocol;
    if (_searchSet) ele.search = search;
    if (_usernameSet) ele.username = username;
  }
}

class VAudioElement extends VMediaElement<AudioElement> {
  @override
  AudioElement _elementFactory() => new AudioElement();
  @override
  void _applyAttributesToElement(AudioElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VBRElement extends VHtmlElement<BRElement> {
  @override
  BRElement _elementFactory() => new BRElement();
  @override
  void _applyAttributesToElement(BRElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VBaseElement extends VHtmlElement<BaseElement> {
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
  BaseElement _elementFactory() => new BaseElement();
  @override
  void _applyAttributesToElement(BaseElement ele) {
    super._applyAttributesToElement(ele);
    if (_hrefSet) ele.href = href;
    if (_targetSet) ele.target = target;
  }
}

class VBodyElement extends VHtmlElement<BodyElement> {
  @override
  BodyElement _elementFactory() => new BodyElement();
  @override
  void _applyAttributesToElement(BodyElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VButtonElement extends VHtmlElement<ButtonElement> {
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
  ButtonElement _elementFactory() => new ButtonElement();
  @override
  void _applyAttributesToElement(ButtonElement ele) {
    super._applyAttributesToElement(ele);
    if (_autofocusSet) ele.autofocus = autofocus;
    if (_disabledSet) ele.disabled = disabled;
    if (_formActionSet) ele.formAction = formAction;
    if (_formEnctypeSet) ele.formEnctype = formEnctype;
    if (_formMethodSet) ele.formMethod = formMethod;
    if (_formNoValidateSet) ele.formNoValidate = formNoValidate;
    if (_formTargetSet) ele.formTarget = formTarget;
    if (_nameSet) ele.name = name;
    if (_typeSet) ele.type = type;
    if (_valueSet) ele.value = value;
  }
}

class VCanvasElement extends VHtmlElement<CanvasElement> {
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
  CanvasElement _elementFactory() => new CanvasElement();
  @override
  void _applyAttributesToElement(CanvasElement ele) {
    super._applyAttributesToElement(ele);
    if (_heightSet) ele.height = height;
    if (_widthSet) ele.width = width;
  }
}

class VContentElement extends VHtmlElement<ContentElement> {
  String _select;
  bool _selectSet = false;
  String get select => _select;
  void set select(String v) {
    _select = v;
    _selectSet = true;
  }

  @override
  ContentElement _elementFactory() => new ContentElement();
  @override
  void _applyAttributesToElement(ContentElement ele) {
    super._applyAttributesToElement(ele);
    if (_selectSet) ele.select = select;
  }
}

class VDListElement extends VHtmlElement<DListElement> {
  @override
  DListElement _elementFactory() => new DListElement();
  @override
  void _applyAttributesToElement(DListElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VDataListElement extends VHtmlElement<DataListElement> {
  @override
  DataListElement _elementFactory() => new DataListElement();
  @override
  void _applyAttributesToElement(DataListElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VDetailsElement extends VHtmlElement<DetailsElement> {
  bool _open;
  bool _openSet = false;
  bool get open => _open;
  void set open(bool v) {
    _open = v;
    _openSet = true;
  }

  @override
  DetailsElement _elementFactory() => new DetailsElement();
  @override
  void _applyAttributesToElement(DetailsElement ele) {
    super._applyAttributesToElement(ele);
    if (_openSet) ele.open = open;
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
    if (_openSet) ele.open = open;
    if (_returnValueSet) ele.returnValue = returnValue;
  }
}

class VDivElement extends VHtmlElement<DivElement> {
  @override
  DivElement _elementFactory() => new DivElement();
  @override
  void _applyAttributesToElement(DivElement ele) {
    super._applyAttributesToElement(ele);
  }
}

abstract class VElement<E extends Element> extends VNode {
  Map<String, StreamSubscription> _subs = new Map<String, StreamSubscription>();
  bool shouldUpdateSubs = false;
  Iterable<VNode> _children;
  Iterable<VNode> get children => _children;
  void set children(Iterable<VNode> c) {
    _children = c.toList();
  }

  StyleBuilder styleBuilder;

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

  void dispose() {
    // TODO: fix
    for (var sub in _subs.values) {
      sub.cancel();
    }
  }

  E _elementFactory();

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
    if (_contentEditableSet) ele.contentEditable = contentEditable;
    if (_contextMenuSet) ele.contextMenu = contextMenu;
    if (_dirSet) ele.dir = dir;
    if (_draggableSet) ele.draggable = draggable;
    if (_hiddenSet) ele.hidden = hidden;
    if (_langSet) ele.lang = lang;
    if (_spellcheckSet) ele.spellcheck = spellcheck;
    if (_tabIndexSet) ele.tabIndex = tabIndex;
    if (_titleSet) ele.title = title;
    if (_translateSet) ele.translate = translate;
    if (_dropzoneSet) ele.dropzone = dropzone;
    if (_classNameSet) ele.className = className;
    if (_idSet) ele.id = id;
    if (_slotSet) ele.slot = slot;
    if (_attributesSet) ele.attributes = attributes;
    if (_classesSet) ele.classes = classes;
    if (_datasetSet) ele.dataset = dataset;
    if (_xtagSet) ele.xtag = xtag;
    if (_innerHtmlSet) ele.innerHtml = innerHtml;
    if (_scrollLeftSet) ele.scrollLeft = scrollLeft;
    if (_scrollTopSet) ele.scrollTop = scrollTop;
  }

  void _applyEventListenersToElement(Element ele) {
    if (_onAbortSet) {
      _onAbortSub = ele.onAbort.listen(onAbort);
    }
    if (_onBeforeCopySet) {
      _onBeforeCopySub = ele.onBeforeCopy.listen(onBeforeCopy);
    }
    if (_onBeforeCutSet) {
      _onBeforeCutSub = ele.onBeforeCut.listen(onBeforeCut);
    }
    if (_onBeforePasteSet) {
      _onBeforePasteSub = ele.onBeforePaste.listen(onBeforePaste);
    }
    if (_onBlurSet) {
      _onBlurSub = ele.onBlur.listen(onBlur);
    }
    if (_onCanPlaySet) {
      _onCanPlaySub = ele.onCanPlay.listen(onCanPlay);
    }
    if (_onCanPlayThroughSet) {
      _onCanPlayThroughSub = ele.onCanPlayThrough.listen(onCanPlayThrough);
    }
    if (_onChangeSet) {
      _onChangeSub = ele.onChange.listen(onChange);
    }
    if (_onClickSet) {
      _onClickSub = ele.onClick.listen(onClick);
    }
    if (_onContextMenuSet) {
      _onContextMenuSub = ele.onContextMenu.listen(onContextMenu);
    }
    if (_onCopySet) {
      _onCopySub = ele.onCopy.listen(onCopy);
    }
    if (_onCutSet) {
      _onCutSub = ele.onCut.listen(onCut);
    }
    if (_onDoubleClickSet) {
      _onDoubleClickSub = ele.onDoubleClick.listen(onDoubleClick);
    }
    if (_onDragSet) {
      _onDragSub = ele.onDrag.listen(onDrag);
    }
    if (_onDragEndSet) {
      _onDragEndSub = ele.onDragEnd.listen(onDragEnd);
    }
    if (_onDragEnterSet) {
      _onDragEnterSub = ele.onDragEnter.listen(onDragEnter);
    }
    if (_onDragLeaveSet) {
      _onDragLeaveSub = ele.onDragLeave.listen(onDragLeave);
    }
    if (_onDragOverSet) {
      _onDragOverSub = ele.onDragOver.listen(onDragOver);
    }
    if (_onDragStartSet) {
      _onDragStartSub = ele.onDragStart.listen(onDragStart);
    }
    if (_onDropSet) {
      _onDropSub = ele.onDrop.listen(onDrop);
    }
    if (_onDurationChangeSet) {
      _onDurationChangeSub = ele.onDurationChange.listen(onDurationChange);
    }
    if (_onEmptiedSet) {
      _onEmptiedSub = ele.onEmptied.listen(onEmptied);
    }
    if (_onEndedSet) {
      _onEndedSub = ele.onEnded.listen(onEnded);
    }
    if (_onErrorSet) {
      _onErrorSub = ele.onError.listen(onError);
    }
    if (_onFocusSet) {
      _onFocusSub = ele.onFocus.listen(onFocus);
    }
    if (_onInputSet) {
      _onInputSub = ele.onInput.listen(onInput);
    }
    if (_onInvalidSet) {
      _onInvalidSub = ele.onInvalid.listen(onInvalid);
    }
    if (_onKeyDownSet) {
      _onKeyDownSub = ele.onKeyDown.listen(onKeyDown);
    }
    if (_onKeyPressSet) {
      _onKeyPressSub = ele.onKeyPress.listen(onKeyPress);
    }
    if (_onKeyUpSet) {
      _onKeyUpSub = ele.onKeyUp.listen(onKeyUp);
    }
    if (_onLoadSet) {
      _onLoadSub = ele.onLoad.listen(onLoad);
    }
    if (_onLoadedDataSet) {
      _onLoadedDataSub = ele.onLoadedData.listen(onLoadedData);
    }
    if (_onLoadedMetadataSet) {
      _onLoadedMetadataSub = ele.onLoadedMetadata.listen(onLoadedMetadata);
    }
    if (_onMouseDownSet) {
      _onMouseDownSub = ele.onMouseDown.listen(onMouseDown);
    }
    if (_onMouseEnterSet) {
      _onMouseEnterSub = ele.onMouseEnter.listen(onMouseEnter);
    }
    if (_onMouseLeaveSet) {
      _onMouseLeaveSub = ele.onMouseLeave.listen(onMouseLeave);
    }
    if (_onMouseMoveSet) {
      _onMouseMoveSub = ele.onMouseMove.listen(onMouseMove);
    }
    if (_onMouseOutSet) {
      _onMouseOutSub = ele.onMouseOut.listen(onMouseOut);
    }
    if (_onMouseOverSet) {
      _onMouseOverSub = ele.onMouseOver.listen(onMouseOver);
    }
    if (_onMouseUpSet) {
      _onMouseUpSub = ele.onMouseUp.listen(onMouseUp);
    }
    if (_onMouseWheelSet) {
      _onMouseWheelSub = ele.onMouseWheel.listen(onMouseWheel);
    }
    if (_onPasteSet) {
      _onPasteSub = ele.onPaste.listen(onPaste);
    }
    if (_onPauseSet) {
      _onPauseSub = ele.onPause.listen(onPause);
    }
    if (_onPlaySet) {
      _onPlaySub = ele.onPlay.listen(onPlay);
    }
    if (_onPlayingSet) {
      _onPlayingSub = ele.onPlaying.listen(onPlaying);
    }
    if (_onRateChangeSet) {
      _onRateChangeSub = ele.onRateChange.listen(onRateChange);
    }
    if (_onResetSet) {
      _onResetSub = ele.onReset.listen(onReset);
    }
    if (_onResizeSet) {
      _onResizeSub = ele.onResize.listen(onResize);
    }
    if (_onScrollSet) {
      _onScrollSub = ele.onScroll.listen(onScroll);
    }
    if (_onSearchSet) {
      _onSearchSub = ele.onSearch.listen(onSearch);
    }
    if (_onSeekedSet) {
      _onSeekedSub = ele.onSeeked.listen(onSeeked);
    }
    if (_onSeekingSet) {
      _onSeekingSub = ele.onSeeking.listen(onSeeking);
    }
    if (_onSelectSet) {
      _onSelectSub = ele.onSelect.listen(onSelect);
    }
    if (_onSelectStartSet) {
      _onSelectStartSub = ele.onSelectStart.listen(onSelectStart);
    }
    if (_onStalledSet) {
      _onStalledSub = ele.onStalled.listen(onStalled);
    }
    if (_onSubmitSet) {
      _onSubmitSub = ele.onSubmit.listen(onSubmit);
    }
    if (_onSuspendSet) {
      _onSuspendSub = ele.onSuspend.listen(onSuspend);
    }
    if (_onTimeUpdateSet) {
      _onTimeUpdateSub = ele.onTimeUpdate.listen(onTimeUpdate);
    }
    if (_onTouchCancelSet) {
      _onTouchCancelSub = ele.onTouchCancel.listen(onTouchCancel);
    }
    if (_onTouchEndSet) {
      _onTouchEndSub = ele.onTouchEnd.listen(onTouchEnd);
    }
    if (_onTouchEnterSet) {
      _onTouchEnterSub = ele.onTouchEnter.listen(onTouchEnter);
    }
    if (_onTouchLeaveSet) {
      _onTouchLeaveSub = ele.onTouchLeave.listen(onTouchLeave);
    }
    if (_onTouchMoveSet) {
      _onTouchMoveSub = ele.onTouchMove.listen(onTouchMove);
    }
    if (_onTouchStartSet) {
      _onTouchStartSub = ele.onTouchStart.listen(onTouchStart);
    }
    if (_onTransitionEndSet) {
      _onTransitionEndSub = ele.onTransitionEnd.listen(onTransitionEnd);
    }
    if (_onVolumeChangeSet) {
      _onVolumeChangeSub = ele.onVolumeChange.listen(onVolumeChange);
    }
    if (_onWaitingSet) {
      _onWaitingSub = ele.onWaiting.listen(onWaiting);
    }
    if (_onFullscreenChangeSet) {
      _onFullscreenChangeSub =
          ele.onFullscreenChange.listen(onFullscreenChange);
    }
    if (_onFullscreenErrorSet) {
      _onFullscreenErrorSub = ele.onFullscreenError.listen(onFullscreenError);
    }
  }

  void _updateEventListenersToElement(VElement oldVElement, Element ele) {
    if (_onAbortSet) {
      if (!oldVElement._onAbortSet) {
        _onAbortSub = ele.onAbort.listen(onAbort);
      } else if (oldVElement.onAbort != onAbort) {
        oldVElement._onAbortSub.cancel();
        _onAbortSub = ele.onAbort.listen(onAbort);
      } else {
        _onAbortSub = oldVElement._onAbortSub;
      }
    } else if (oldVElement._onAbortSet) {
      oldVElement._onAbortSub.cancel();
    }
    if (_onBeforeCopySet) {
      if (!oldVElement._onBeforeCopySet) {
        _onBeforeCopySub = ele.onBeforeCopy.listen(onBeforeCopy);
      } else if (oldVElement.onBeforeCopy != onBeforeCopy) {
        oldVElement._onBeforeCopySub.cancel();
        _onBeforeCopySub = ele.onBeforeCopy.listen(onBeforeCopy);
      } else {
        _onBeforeCopySub = oldVElement._onBeforeCopySub;
      }
    } else if (oldVElement._onBeforeCopySet) {
      oldVElement._onBeforeCopySub.cancel();
    }
    if (_onBeforeCutSet) {
      if (!oldVElement._onBeforeCutSet) {
        _onBeforeCutSub = ele.onBeforeCut.listen(onBeforeCut);
      } else if (oldVElement.onBeforeCut != onBeforeCut) {
        oldVElement._onBeforeCutSub.cancel();
        _onBeforeCutSub = ele.onBeforeCut.listen(onBeforeCut);
      } else {
        _onBeforeCutSub = oldVElement._onBeforeCutSub;
      }
    } else if (oldVElement._onBeforeCutSet) {
      oldVElement._onBeforeCutSub.cancel();
    }
    if (_onBeforePasteSet) {
      if (!oldVElement._onBeforePasteSet) {
        _onBeforePasteSub = ele.onBeforePaste.listen(onBeforePaste);
      } else if (oldVElement.onBeforePaste != onBeforePaste) {
        oldVElement._onBeforePasteSub.cancel();
        _onBeforePasteSub = ele.onBeforePaste.listen(onBeforePaste);
      } else {
        _onBeforePasteSub = oldVElement._onBeforePasteSub;
      }
    } else if (oldVElement._onBeforePasteSet) {
      oldVElement._onBeforePasteSub.cancel();
    }
    if (_onBlurSet) {
      if (!oldVElement._onBlurSet) {
        _onBlurSub = ele.onBlur.listen(onBlur);
      } else if (oldVElement.onBlur != onBlur) {
        oldVElement._onBlurSub.cancel();
        _onBlurSub = ele.onBlur.listen(onBlur);
      } else {
        _onBlurSub = oldVElement._onBlurSub;
      }
    } else if (oldVElement._onBlurSet) {
      oldVElement._onBlurSub.cancel();
    }
    if (_onCanPlaySet) {
      if (!oldVElement._onCanPlaySet) {
        _onCanPlaySub = ele.onCanPlay.listen(onCanPlay);
      } else if (oldVElement.onCanPlay != onCanPlay) {
        oldVElement._onCanPlaySub.cancel();
        _onCanPlaySub = ele.onCanPlay.listen(onCanPlay);
      } else {
        _onCanPlaySub = oldVElement._onCanPlaySub;
      }
    } else if (oldVElement._onCanPlaySet) {
      oldVElement._onCanPlaySub.cancel();
    }
    if (_onCanPlayThroughSet) {
      if (!oldVElement._onCanPlayThroughSet) {
        _onCanPlayThroughSub = ele.onCanPlayThrough.listen(onCanPlayThrough);
      } else if (oldVElement.onCanPlayThrough != onCanPlayThrough) {
        oldVElement._onCanPlayThroughSub.cancel();
        _onCanPlayThroughSub = ele.onCanPlayThrough.listen(onCanPlayThrough);
      } else {
        _onCanPlayThroughSub = oldVElement._onCanPlayThroughSub;
      }
    } else if (oldVElement._onCanPlayThroughSet) {
      oldVElement._onCanPlayThroughSub.cancel();
    }
    if (_onChangeSet) {
      if (!oldVElement._onChangeSet) {
        _onChangeSub = ele.onChange.listen(onChange);
      } else if (oldVElement.onChange != onChange) {
        oldVElement._onChangeSub.cancel();
        _onChangeSub = ele.onChange.listen(onChange);
      } else {
        _onChangeSub = oldVElement._onChangeSub;
      }
    } else if (oldVElement._onChangeSet) {
      oldVElement._onChangeSub.cancel();
    }
    if (_onClickSet) {
      if (!oldVElement._onClickSet) {
        _onClickSub = ele.onClick.listen(onClick);
      } else if (oldVElement.onClick != onClick) {
        oldVElement._onClickSub.cancel();
        _onClickSub = ele.onClick.listen(onClick);
      } else {
        _onClickSub = oldVElement._onClickSub;
      }
    } else if (oldVElement._onClickSet) {
      oldVElement._onClickSub.cancel();
    }
    if (_onContextMenuSet) {
      if (!oldVElement._onContextMenuSet) {
        _onContextMenuSub = ele.onContextMenu.listen(onContextMenu);
      } else if (oldVElement.onContextMenu != onContextMenu) {
        oldVElement._onContextMenuSub.cancel();
        _onContextMenuSub = ele.onContextMenu.listen(onContextMenu);
      } else {
        _onContextMenuSub = oldVElement._onContextMenuSub;
      }
    } else if (oldVElement._onContextMenuSet) {
      oldVElement._onContextMenuSub.cancel();
    }
    if (_onCopySet) {
      if (!oldVElement._onCopySet) {
        _onCopySub = ele.onCopy.listen(onCopy);
      } else if (oldVElement.onCopy != onCopy) {
        oldVElement._onCopySub.cancel();
        _onCopySub = ele.onCopy.listen(onCopy);
      } else {
        _onCopySub = oldVElement._onCopySub;
      }
    } else if (oldVElement._onCopySet) {
      oldVElement._onCopySub.cancel();
    }
    if (_onCutSet) {
      if (!oldVElement._onCutSet) {
        _onCutSub = ele.onCut.listen(onCut);
      } else if (oldVElement.onCut != onCut) {
        oldVElement._onCutSub.cancel();
        _onCutSub = ele.onCut.listen(onCut);
      } else {
        _onCutSub = oldVElement._onCutSub;
      }
    } else if (oldVElement._onCutSet) {
      oldVElement._onCutSub.cancel();
    }
    if (_onDoubleClickSet) {
      if (!oldVElement._onDoubleClickSet) {
        _onDoubleClickSub = ele.onDoubleClick.listen(onDoubleClick);
      } else if (oldVElement.onDoubleClick != onDoubleClick) {
        oldVElement._onDoubleClickSub.cancel();
        _onDoubleClickSub = ele.onDoubleClick.listen(onDoubleClick);
      } else {
        _onDoubleClickSub = oldVElement._onDoubleClickSub;
      }
    } else if (oldVElement._onDoubleClickSet) {
      oldVElement._onDoubleClickSub.cancel();
    }
    if (_onDragSet) {
      if (!oldVElement._onDragSet) {
        _onDragSub = ele.onDrag.listen(onDrag);
      } else if (oldVElement.onDrag != onDrag) {
        oldVElement._onDragSub.cancel();
        _onDragSub = ele.onDrag.listen(onDrag);
      } else {
        _onDragSub = oldVElement._onDragSub;
      }
    } else if (oldVElement._onDragSet) {
      oldVElement._onDragSub.cancel();
    }
    if (_onDragEndSet) {
      if (!oldVElement._onDragEndSet) {
        _onDragEndSub = ele.onDragEnd.listen(onDragEnd);
      } else if (oldVElement.onDragEnd != onDragEnd) {
        oldVElement._onDragEndSub.cancel();
        _onDragEndSub = ele.onDragEnd.listen(onDragEnd);
      } else {
        _onDragEndSub = oldVElement._onDragEndSub;
      }
    } else if (oldVElement._onDragEndSet) {
      oldVElement._onDragEndSub.cancel();
    }
    if (_onDragEnterSet) {
      if (!oldVElement._onDragEnterSet) {
        _onDragEnterSub = ele.onDragEnter.listen(onDragEnter);
      } else if (oldVElement.onDragEnter != onDragEnter) {
        oldVElement._onDragEnterSub.cancel();
        _onDragEnterSub = ele.onDragEnter.listen(onDragEnter);
      } else {
        _onDragEnterSub = oldVElement._onDragEnterSub;
      }
    } else if (oldVElement._onDragEnterSet) {
      oldVElement._onDragEnterSub.cancel();
    }
    if (_onDragLeaveSet) {
      if (!oldVElement._onDragLeaveSet) {
        _onDragLeaveSub = ele.onDragLeave.listen(onDragLeave);
      } else if (oldVElement.onDragLeave != onDragLeave) {
        oldVElement._onDragLeaveSub.cancel();
        _onDragLeaveSub = ele.onDragLeave.listen(onDragLeave);
      } else {
        _onDragLeaveSub = oldVElement._onDragLeaveSub;
      }
    } else if (oldVElement._onDragLeaveSet) {
      oldVElement._onDragLeaveSub.cancel();
    }
    if (_onDragOverSet) {
      if (!oldVElement._onDragOverSet) {
        _onDragOverSub = ele.onDragOver.listen(onDragOver);
      } else if (oldVElement.onDragOver != onDragOver) {
        oldVElement._onDragOverSub.cancel();
        _onDragOverSub = ele.onDragOver.listen(onDragOver);
      } else {
        _onDragOverSub = oldVElement._onDragOverSub;
      }
    } else if (oldVElement._onDragOverSet) {
      oldVElement._onDragOverSub.cancel();
    }
    if (_onDragStartSet) {
      if (!oldVElement._onDragStartSet) {
        _onDragStartSub = ele.onDragStart.listen(onDragStart);
      } else if (oldVElement.onDragStart != onDragStart) {
        oldVElement._onDragStartSub.cancel();
        _onDragStartSub = ele.onDragStart.listen(onDragStart);
      } else {
        _onDragStartSub = oldVElement._onDragStartSub;
      }
    } else if (oldVElement._onDragStartSet) {
      oldVElement._onDragStartSub.cancel();
    }
    if (_onDropSet) {
      if (!oldVElement._onDropSet) {
        _onDropSub = ele.onDrop.listen(onDrop);
      } else if (oldVElement.onDrop != onDrop) {
        oldVElement._onDropSub.cancel();
        _onDropSub = ele.onDrop.listen(onDrop);
      } else {
        _onDropSub = oldVElement._onDropSub;
      }
    } else if (oldVElement._onDropSet) {
      oldVElement._onDropSub.cancel();
    }
    if (_onDurationChangeSet) {
      if (!oldVElement._onDurationChangeSet) {
        _onDurationChangeSub = ele.onDurationChange.listen(onDurationChange);
      } else if (oldVElement.onDurationChange != onDurationChange) {
        oldVElement._onDurationChangeSub.cancel();
        _onDurationChangeSub = ele.onDurationChange.listen(onDurationChange);
      } else {
        _onDurationChangeSub = oldVElement._onDurationChangeSub;
      }
    } else if (oldVElement._onDurationChangeSet) {
      oldVElement._onDurationChangeSub.cancel();
    }
    if (_onEmptiedSet) {
      if (!oldVElement._onEmptiedSet) {
        _onEmptiedSub = ele.onEmptied.listen(onEmptied);
      } else if (oldVElement.onEmptied != onEmptied) {
        oldVElement._onEmptiedSub.cancel();
        _onEmptiedSub = ele.onEmptied.listen(onEmptied);
      } else {
        _onEmptiedSub = oldVElement._onEmptiedSub;
      }
    } else if (oldVElement._onEmptiedSet) {
      oldVElement._onEmptiedSub.cancel();
    }
    if (_onEndedSet) {
      if (!oldVElement._onEndedSet) {
        _onEndedSub = ele.onEnded.listen(onEnded);
      } else if (oldVElement.onEnded != onEnded) {
        oldVElement._onEndedSub.cancel();
        _onEndedSub = ele.onEnded.listen(onEnded);
      } else {
        _onEndedSub = oldVElement._onEndedSub;
      }
    } else if (oldVElement._onEndedSet) {
      oldVElement._onEndedSub.cancel();
    }
    if (_onErrorSet) {
      if (!oldVElement._onErrorSet) {
        _onErrorSub = ele.onError.listen(onError);
      } else if (oldVElement.onError != onError) {
        oldVElement._onErrorSub.cancel();
        _onErrorSub = ele.onError.listen(onError);
      } else {
        _onErrorSub = oldVElement._onErrorSub;
      }
    } else if (oldVElement._onErrorSet) {
      oldVElement._onErrorSub.cancel();
    }
    if (_onFocusSet) {
      if (!oldVElement._onFocusSet) {
        _onFocusSub = ele.onFocus.listen(onFocus);
      } else if (oldVElement.onFocus != onFocus) {
        oldVElement._onFocusSub.cancel();
        _onFocusSub = ele.onFocus.listen(onFocus);
      } else {
        _onFocusSub = oldVElement._onFocusSub;
      }
    } else if (oldVElement._onFocusSet) {
      oldVElement._onFocusSub.cancel();
    }
    if (_onInputSet) {
      if (!oldVElement._onInputSet) {
        _onInputSub = ele.onInput.listen(onInput);
      } else if (oldVElement.onInput != onInput) {
        oldVElement._onInputSub.cancel();
        _onInputSub = ele.onInput.listen(onInput);
      } else {
        _onInputSub = oldVElement._onInputSub;
      }
    } else if (oldVElement._onInputSet) {
      oldVElement._onInputSub.cancel();
    }
    if (_onInvalidSet) {
      if (!oldVElement._onInvalidSet) {
        _onInvalidSub = ele.onInvalid.listen(onInvalid);
      } else if (oldVElement.onInvalid != onInvalid) {
        oldVElement._onInvalidSub.cancel();
        _onInvalidSub = ele.onInvalid.listen(onInvalid);
      } else {
        _onInvalidSub = oldVElement._onInvalidSub;
      }
    } else if (oldVElement._onInvalidSet) {
      oldVElement._onInvalidSub.cancel();
    }
    if (_onKeyDownSet) {
      if (!oldVElement._onKeyDownSet) {
        _onKeyDownSub = ele.onKeyDown.listen(onKeyDown);
      } else if (oldVElement.onKeyDown != onKeyDown) {
        oldVElement._onKeyDownSub.cancel();
        _onKeyDownSub = ele.onKeyDown.listen(onKeyDown);
      } else {
        _onKeyDownSub = oldVElement._onKeyDownSub;
      }
    } else if (oldVElement._onKeyDownSet) {
      oldVElement._onKeyDownSub.cancel();
    }
    if (_onKeyPressSet) {
      if (!oldVElement._onKeyPressSet) {
        _onKeyPressSub = ele.onKeyPress.listen(onKeyPress);
      } else if (oldVElement.onKeyPress != onKeyPress) {
        oldVElement._onKeyPressSub.cancel();
        _onKeyPressSub = ele.onKeyPress.listen(onKeyPress);
      } else {
        _onKeyPressSub = oldVElement._onKeyPressSub;
      }
    } else if (oldVElement._onKeyPressSet) {
      oldVElement._onKeyPressSub.cancel();
    }
    if (_onKeyUpSet) {
      if (!oldVElement._onKeyUpSet) {
        _onKeyUpSub = ele.onKeyUp.listen(onKeyUp);
      } else if (oldVElement.onKeyUp != onKeyUp) {
        oldVElement._onKeyUpSub.cancel();
        _onKeyUpSub = ele.onKeyUp.listen(onKeyUp);
      } else {
        _onKeyUpSub = oldVElement._onKeyUpSub;
      }
    } else if (oldVElement._onKeyUpSet) {
      oldVElement._onKeyUpSub.cancel();
    }
    if (_onLoadSet) {
      if (!oldVElement._onLoadSet) {
        _onLoadSub = ele.onLoad.listen(onLoad);
      } else if (oldVElement.onLoad != onLoad) {
        oldVElement._onLoadSub.cancel();
        _onLoadSub = ele.onLoad.listen(onLoad);
      } else {
        _onLoadSub = oldVElement._onLoadSub;
      }
    } else if (oldVElement._onLoadSet) {
      oldVElement._onLoadSub.cancel();
    }
    if (_onLoadedDataSet) {
      if (!oldVElement._onLoadedDataSet) {
        _onLoadedDataSub = ele.onLoadedData.listen(onLoadedData);
      } else if (oldVElement.onLoadedData != onLoadedData) {
        oldVElement._onLoadedDataSub.cancel();
        _onLoadedDataSub = ele.onLoadedData.listen(onLoadedData);
      } else {
        _onLoadedDataSub = oldVElement._onLoadedDataSub;
      }
    } else if (oldVElement._onLoadedDataSet) {
      oldVElement._onLoadedDataSub.cancel();
    }
    if (_onLoadedMetadataSet) {
      if (!oldVElement._onLoadedMetadataSet) {
        _onLoadedMetadataSub = ele.onLoadedMetadata.listen(onLoadedMetadata);
      } else if (oldVElement.onLoadedMetadata != onLoadedMetadata) {
        oldVElement._onLoadedMetadataSub.cancel();
        _onLoadedMetadataSub = ele.onLoadedMetadata.listen(onLoadedMetadata);
      } else {
        _onLoadedMetadataSub = oldVElement._onLoadedMetadataSub;
      }
    } else if (oldVElement._onLoadedMetadataSet) {
      oldVElement._onLoadedMetadataSub.cancel();
    }
    if (_onMouseDownSet) {
      if (!oldVElement._onMouseDownSet) {
        _onMouseDownSub = ele.onMouseDown.listen(onMouseDown);
      } else if (oldVElement.onMouseDown != onMouseDown) {
        oldVElement._onMouseDownSub.cancel();
        _onMouseDownSub = ele.onMouseDown.listen(onMouseDown);
      } else {
        _onMouseDownSub = oldVElement._onMouseDownSub;
      }
    } else if (oldVElement._onMouseDownSet) {
      oldVElement._onMouseDownSub.cancel();
    }
    if (_onMouseEnterSet) {
      if (!oldVElement._onMouseEnterSet) {
        _onMouseEnterSub = ele.onMouseEnter.listen(onMouseEnter);
      } else if (oldVElement.onMouseEnter != onMouseEnter) {
        oldVElement._onMouseEnterSub.cancel();
        _onMouseEnterSub = ele.onMouseEnter.listen(onMouseEnter);
      } else {
        _onMouseEnterSub = oldVElement._onMouseEnterSub;
      }
    } else if (oldVElement._onMouseEnterSet) {
      oldVElement._onMouseEnterSub.cancel();
    }
    if (_onMouseLeaveSet) {
      if (!oldVElement._onMouseLeaveSet) {
        _onMouseLeaveSub = ele.onMouseLeave.listen(onMouseLeave);
      } else if (oldVElement.onMouseLeave != onMouseLeave) {
        oldVElement._onMouseLeaveSub.cancel();
        _onMouseLeaveSub = ele.onMouseLeave.listen(onMouseLeave);
      } else {
        _onMouseLeaveSub = oldVElement._onMouseLeaveSub;
      }
    } else if (oldVElement._onMouseLeaveSet) {
      oldVElement._onMouseLeaveSub.cancel();
    }
    if (_onMouseMoveSet) {
      if (!oldVElement._onMouseMoveSet) {
        _onMouseMoveSub = ele.onMouseMove.listen(onMouseMove);
      } else if (oldVElement.onMouseMove != onMouseMove) {
        oldVElement._onMouseMoveSub.cancel();
        _onMouseMoveSub = ele.onMouseMove.listen(onMouseMove);
      } else {
        _onMouseMoveSub = oldVElement._onMouseMoveSub;
      }
    } else if (oldVElement._onMouseMoveSet) {
      oldVElement._onMouseMoveSub.cancel();
    }
    if (_onMouseOutSet) {
      if (!oldVElement._onMouseOutSet) {
        _onMouseOutSub = ele.onMouseOut.listen(onMouseOut);
      } else if (oldVElement.onMouseOut != onMouseOut) {
        oldVElement._onMouseOutSub.cancel();
        _onMouseOutSub = ele.onMouseOut.listen(onMouseOut);
      } else {
        _onMouseOutSub = oldVElement._onMouseOutSub;
      }
    } else if (oldVElement._onMouseOutSet) {
      oldVElement._onMouseOutSub.cancel();
    }
    if (_onMouseOverSet) {
      if (!oldVElement._onMouseOverSet) {
        _onMouseOverSub = ele.onMouseOver.listen(onMouseOver);
      } else if (oldVElement.onMouseOver != onMouseOver) {
        oldVElement._onMouseOverSub.cancel();
        _onMouseOverSub = ele.onMouseOver.listen(onMouseOver);
      } else {
        _onMouseOverSub = oldVElement._onMouseOverSub;
      }
    } else if (oldVElement._onMouseOverSet) {
      oldVElement._onMouseOverSub.cancel();
    }
    if (_onMouseUpSet) {
      if (!oldVElement._onMouseUpSet) {
        _onMouseUpSub = ele.onMouseUp.listen(onMouseUp);
      } else if (oldVElement.onMouseUp != onMouseUp) {
        oldVElement._onMouseUpSub.cancel();
        _onMouseUpSub = ele.onMouseUp.listen(onMouseUp);
      } else {
        _onMouseUpSub = oldVElement._onMouseUpSub;
      }
    } else if (oldVElement._onMouseUpSet) {
      oldVElement._onMouseUpSub.cancel();
    }
    if (_onMouseWheelSet) {
      if (!oldVElement._onMouseWheelSet) {
        _onMouseWheelSub = ele.onMouseWheel.listen(onMouseWheel);
      } else if (oldVElement.onMouseWheel != onMouseWheel) {
        oldVElement._onMouseWheelSub.cancel();
        _onMouseWheelSub = ele.onMouseWheel.listen(onMouseWheel);
      } else {
        _onMouseWheelSub = oldVElement._onMouseWheelSub;
      }
    } else if (oldVElement._onMouseWheelSet) {
      oldVElement._onMouseWheelSub.cancel();
    }
    if (_onPasteSet) {
      if (!oldVElement._onPasteSet) {
        _onPasteSub = ele.onPaste.listen(onPaste);
      } else if (oldVElement.onPaste != onPaste) {
        oldVElement._onPasteSub.cancel();
        _onPasteSub = ele.onPaste.listen(onPaste);
      } else {
        _onPasteSub = oldVElement._onPasteSub;
      }
    } else if (oldVElement._onPasteSet) {
      oldVElement._onPasteSub.cancel();
    }
    if (_onPauseSet) {
      if (!oldVElement._onPauseSet) {
        _onPauseSub = ele.onPause.listen(onPause);
      } else if (oldVElement.onPause != onPause) {
        oldVElement._onPauseSub.cancel();
        _onPauseSub = ele.onPause.listen(onPause);
      } else {
        _onPauseSub = oldVElement._onPauseSub;
      }
    } else if (oldVElement._onPauseSet) {
      oldVElement._onPauseSub.cancel();
    }
    if (_onPlaySet) {
      if (!oldVElement._onPlaySet) {
        _onPlaySub = ele.onPlay.listen(onPlay);
      } else if (oldVElement.onPlay != onPlay) {
        oldVElement._onPlaySub.cancel();
        _onPlaySub = ele.onPlay.listen(onPlay);
      } else {
        _onPlaySub = oldVElement._onPlaySub;
      }
    } else if (oldVElement._onPlaySet) {
      oldVElement._onPlaySub.cancel();
    }
    if (_onPlayingSet) {
      if (!oldVElement._onPlayingSet) {
        _onPlayingSub = ele.onPlaying.listen(onPlaying);
      } else if (oldVElement.onPlaying != onPlaying) {
        oldVElement._onPlayingSub.cancel();
        _onPlayingSub = ele.onPlaying.listen(onPlaying);
      } else {
        _onPlayingSub = oldVElement._onPlayingSub;
      }
    } else if (oldVElement._onPlayingSet) {
      oldVElement._onPlayingSub.cancel();
    }
    if (_onRateChangeSet) {
      if (!oldVElement._onRateChangeSet) {
        _onRateChangeSub = ele.onRateChange.listen(onRateChange);
      } else if (oldVElement.onRateChange != onRateChange) {
        oldVElement._onRateChangeSub.cancel();
        _onRateChangeSub = ele.onRateChange.listen(onRateChange);
      } else {
        _onRateChangeSub = oldVElement._onRateChangeSub;
      }
    } else if (oldVElement._onRateChangeSet) {
      oldVElement._onRateChangeSub.cancel();
    }
    if (_onResetSet) {
      if (!oldVElement._onResetSet) {
        _onResetSub = ele.onReset.listen(onReset);
      } else if (oldVElement.onReset != onReset) {
        oldVElement._onResetSub.cancel();
        _onResetSub = ele.onReset.listen(onReset);
      } else {
        _onResetSub = oldVElement._onResetSub;
      }
    } else if (oldVElement._onResetSet) {
      oldVElement._onResetSub.cancel();
    }
    if (_onResizeSet) {
      if (!oldVElement._onResizeSet) {
        _onResizeSub = ele.onResize.listen(onResize);
      } else if (oldVElement.onResize != onResize) {
        oldVElement._onResizeSub.cancel();
        _onResizeSub = ele.onResize.listen(onResize);
      } else {
        _onResizeSub = oldVElement._onResizeSub;
      }
    } else if (oldVElement._onResizeSet) {
      oldVElement._onResizeSub.cancel();
    }
    if (_onScrollSet) {
      if (!oldVElement._onScrollSet) {
        _onScrollSub = ele.onScroll.listen(onScroll);
      } else if (oldVElement.onScroll != onScroll) {
        oldVElement._onScrollSub.cancel();
        _onScrollSub = ele.onScroll.listen(onScroll);
      } else {
        _onScrollSub = oldVElement._onScrollSub;
      }
    } else if (oldVElement._onScrollSet) {
      oldVElement._onScrollSub.cancel();
    }
    if (_onSearchSet) {
      if (!oldVElement._onSearchSet) {
        _onSearchSub = ele.onSearch.listen(onSearch);
      } else if (oldVElement.onSearch != onSearch) {
        oldVElement._onSearchSub.cancel();
        _onSearchSub = ele.onSearch.listen(onSearch);
      } else {
        _onSearchSub = oldVElement._onSearchSub;
      }
    } else if (oldVElement._onSearchSet) {
      oldVElement._onSearchSub.cancel();
    }
    if (_onSeekedSet) {
      if (!oldVElement._onSeekedSet) {
        _onSeekedSub = ele.onSeeked.listen(onSeeked);
      } else if (oldVElement.onSeeked != onSeeked) {
        oldVElement._onSeekedSub.cancel();
        _onSeekedSub = ele.onSeeked.listen(onSeeked);
      } else {
        _onSeekedSub = oldVElement._onSeekedSub;
      }
    } else if (oldVElement._onSeekedSet) {
      oldVElement._onSeekedSub.cancel();
    }
    if (_onSeekingSet) {
      if (!oldVElement._onSeekingSet) {
        _onSeekingSub = ele.onSeeking.listen(onSeeking);
      } else if (oldVElement.onSeeking != onSeeking) {
        oldVElement._onSeekingSub.cancel();
        _onSeekingSub = ele.onSeeking.listen(onSeeking);
      } else {
        _onSeekingSub = oldVElement._onSeekingSub;
      }
    } else if (oldVElement._onSeekingSet) {
      oldVElement._onSeekingSub.cancel();
    }
    if (_onSelectSet) {
      if (!oldVElement._onSelectSet) {
        _onSelectSub = ele.onSelect.listen(onSelect);
      } else if (oldVElement.onSelect != onSelect) {
        oldVElement._onSelectSub.cancel();
        _onSelectSub = ele.onSelect.listen(onSelect);
      } else {
        _onSelectSub = oldVElement._onSelectSub;
      }
    } else if (oldVElement._onSelectSet) {
      oldVElement._onSelectSub.cancel();
    }
    if (_onSelectStartSet) {
      if (!oldVElement._onSelectStartSet) {
        _onSelectStartSub = ele.onSelectStart.listen(onSelectStart);
      } else if (oldVElement.onSelectStart != onSelectStart) {
        oldVElement._onSelectStartSub.cancel();
        _onSelectStartSub = ele.onSelectStart.listen(onSelectStart);
      } else {
        _onSelectStartSub = oldVElement._onSelectStartSub;
      }
    } else if (oldVElement._onSelectStartSet) {
      oldVElement._onSelectStartSub.cancel();
    }
    if (_onStalledSet) {
      if (!oldVElement._onStalledSet) {
        _onStalledSub = ele.onStalled.listen(onStalled);
      } else if (oldVElement.onStalled != onStalled) {
        oldVElement._onStalledSub.cancel();
        _onStalledSub = ele.onStalled.listen(onStalled);
      } else {
        _onStalledSub = oldVElement._onStalledSub;
      }
    } else if (oldVElement._onStalledSet) {
      oldVElement._onStalledSub.cancel();
    }
    if (_onSubmitSet) {
      if (!oldVElement._onSubmitSet) {
        _onSubmitSub = ele.onSubmit.listen(onSubmit);
      } else if (oldVElement.onSubmit != onSubmit) {
        oldVElement._onSubmitSub.cancel();
        _onSubmitSub = ele.onSubmit.listen(onSubmit);
      } else {
        _onSubmitSub = oldVElement._onSubmitSub;
      }
    } else if (oldVElement._onSubmitSet) {
      oldVElement._onSubmitSub.cancel();
    }
    if (_onSuspendSet) {
      if (!oldVElement._onSuspendSet) {
        _onSuspendSub = ele.onSuspend.listen(onSuspend);
      } else if (oldVElement.onSuspend != onSuspend) {
        oldVElement._onSuspendSub.cancel();
        _onSuspendSub = ele.onSuspend.listen(onSuspend);
      } else {
        _onSuspendSub = oldVElement._onSuspendSub;
      }
    } else if (oldVElement._onSuspendSet) {
      oldVElement._onSuspendSub.cancel();
    }
    if (_onTimeUpdateSet) {
      if (!oldVElement._onTimeUpdateSet) {
        _onTimeUpdateSub = ele.onTimeUpdate.listen(onTimeUpdate);
      } else if (oldVElement.onTimeUpdate != onTimeUpdate) {
        oldVElement._onTimeUpdateSub.cancel();
        _onTimeUpdateSub = ele.onTimeUpdate.listen(onTimeUpdate);
      } else {
        _onTimeUpdateSub = oldVElement._onTimeUpdateSub;
      }
    } else if (oldVElement._onTimeUpdateSet) {
      oldVElement._onTimeUpdateSub.cancel();
    }
    if (_onTouchCancelSet) {
      if (!oldVElement._onTouchCancelSet) {
        _onTouchCancelSub = ele.onTouchCancel.listen(onTouchCancel);
      } else if (oldVElement.onTouchCancel != onTouchCancel) {
        oldVElement._onTouchCancelSub.cancel();
        _onTouchCancelSub = ele.onTouchCancel.listen(onTouchCancel);
      } else {
        _onTouchCancelSub = oldVElement._onTouchCancelSub;
      }
    } else if (oldVElement._onTouchCancelSet) {
      oldVElement._onTouchCancelSub.cancel();
    }
    if (_onTouchEndSet) {
      if (!oldVElement._onTouchEndSet) {
        _onTouchEndSub = ele.onTouchEnd.listen(onTouchEnd);
      } else if (oldVElement.onTouchEnd != onTouchEnd) {
        oldVElement._onTouchEndSub.cancel();
        _onTouchEndSub = ele.onTouchEnd.listen(onTouchEnd);
      } else {
        _onTouchEndSub = oldVElement._onTouchEndSub;
      }
    } else if (oldVElement._onTouchEndSet) {
      oldVElement._onTouchEndSub.cancel();
    }
    if (_onTouchEnterSet) {
      if (!oldVElement._onTouchEnterSet) {
        _onTouchEnterSub = ele.onTouchEnter.listen(onTouchEnter);
      } else if (oldVElement.onTouchEnter != onTouchEnter) {
        oldVElement._onTouchEnterSub.cancel();
        _onTouchEnterSub = ele.onTouchEnter.listen(onTouchEnter);
      } else {
        _onTouchEnterSub = oldVElement._onTouchEnterSub;
      }
    } else if (oldVElement._onTouchEnterSet) {
      oldVElement._onTouchEnterSub.cancel();
    }
    if (_onTouchLeaveSet) {
      if (!oldVElement._onTouchLeaveSet) {
        _onTouchLeaveSub = ele.onTouchLeave.listen(onTouchLeave);
      } else if (oldVElement.onTouchLeave != onTouchLeave) {
        oldVElement._onTouchLeaveSub.cancel();
        _onTouchLeaveSub = ele.onTouchLeave.listen(onTouchLeave);
      } else {
        _onTouchLeaveSub = oldVElement._onTouchLeaveSub;
      }
    } else if (oldVElement._onTouchLeaveSet) {
      oldVElement._onTouchLeaveSub.cancel();
    }
    if (_onTouchMoveSet) {
      if (!oldVElement._onTouchMoveSet) {
        _onTouchMoveSub = ele.onTouchMove.listen(onTouchMove);
      } else if (oldVElement.onTouchMove != onTouchMove) {
        oldVElement._onTouchMoveSub.cancel();
        _onTouchMoveSub = ele.onTouchMove.listen(onTouchMove);
      } else {
        _onTouchMoveSub = oldVElement._onTouchMoveSub;
      }
    } else if (oldVElement._onTouchMoveSet) {
      oldVElement._onTouchMoveSub.cancel();
    }
    if (_onTouchStartSet) {
      if (!oldVElement._onTouchStartSet) {
        _onTouchStartSub = ele.onTouchStart.listen(onTouchStart);
      } else if (oldVElement.onTouchStart != onTouchStart) {
        oldVElement._onTouchStartSub.cancel();
        _onTouchStartSub = ele.onTouchStart.listen(onTouchStart);
      } else {
        _onTouchStartSub = oldVElement._onTouchStartSub;
      }
    } else if (oldVElement._onTouchStartSet) {
      oldVElement._onTouchStartSub.cancel();
    }
    if (_onTransitionEndSet) {
      if (!oldVElement._onTransitionEndSet) {
        _onTransitionEndSub = ele.onTransitionEnd.listen(onTransitionEnd);
      } else if (oldVElement.onTransitionEnd != onTransitionEnd) {
        oldVElement._onTransitionEndSub.cancel();
        _onTransitionEndSub = ele.onTransitionEnd.listen(onTransitionEnd);
      } else {
        _onTransitionEndSub = oldVElement._onTransitionEndSub;
      }
    } else if (oldVElement._onTransitionEndSet) {
      oldVElement._onTransitionEndSub.cancel();
    }
    if (_onVolumeChangeSet) {
      if (!oldVElement._onVolumeChangeSet) {
        _onVolumeChangeSub = ele.onVolumeChange.listen(onVolumeChange);
      } else if (oldVElement.onVolumeChange != onVolumeChange) {
        oldVElement._onVolumeChangeSub.cancel();
        _onVolumeChangeSub = ele.onVolumeChange.listen(onVolumeChange);
      } else {
        _onVolumeChangeSub = oldVElement._onVolumeChangeSub;
      }
    } else if (oldVElement._onVolumeChangeSet) {
      oldVElement._onVolumeChangeSub.cancel();
    }
    if (_onWaitingSet) {
      if (!oldVElement._onWaitingSet) {
        _onWaitingSub = ele.onWaiting.listen(onWaiting);
      } else if (oldVElement.onWaiting != onWaiting) {
        oldVElement._onWaitingSub.cancel();
        _onWaitingSub = ele.onWaiting.listen(onWaiting);
      } else {
        _onWaitingSub = oldVElement._onWaitingSub;
      }
    } else if (oldVElement._onWaitingSet) {
      oldVElement._onWaitingSub.cancel();
    }
    if (_onFullscreenChangeSet) {
      if (!oldVElement._onFullscreenChangeSet) {
        _onFullscreenChangeSub =
            ele.onFullscreenChange.listen(onFullscreenChange);
      } else if (oldVElement.onFullscreenChange != onFullscreenChange) {
        oldVElement._onFullscreenChangeSub.cancel();
        _onFullscreenChangeSub =
            ele.onFullscreenChange.listen(onFullscreenChange);
      } else {
        _onFullscreenChangeSub = oldVElement._onFullscreenChangeSub;
      }
    } else if (oldVElement._onFullscreenChangeSet) {
      oldVElement._onFullscreenChangeSub.cancel();
    }
    if (_onFullscreenErrorSet) {
      if (!oldVElement._onFullscreenErrorSet) {
        _onFullscreenErrorSub = ele.onFullscreenError.listen(onFullscreenError);
      } else if (oldVElement.onFullscreenError != onFullscreenError) {
        oldVElement._onFullscreenErrorSub.cancel();
        _onFullscreenErrorSub = ele.onFullscreenError.listen(onFullscreenError);
      } else {
        _onFullscreenErrorSub = oldVElement._onFullscreenErrorSub;
      }
    } else if (oldVElement._onFullscreenErrorSet) {
      oldVElement._onFullscreenErrorSub.cancel();
    }
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
  EmbedElement _elementFactory() => new EmbedElement();
  @override
  void _applyAttributesToElement(EmbedElement ele) {
    super._applyAttributesToElement(ele);
    if (_heightSet) ele.height = height;
    if (_nameSet) ele.name = name;
    if (_srcSet) ele.src = src;
    if (_typeSet) ele.type = type;
    if (_widthSet) ele.width = width;
  }
}

class VFieldSetElement extends VHtmlElement<FieldSetElement> {
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
  FieldSetElement _elementFactory() => new FieldSetElement();
  @override
  void _applyAttributesToElement(FieldSetElement ele) {
    super._applyAttributesToElement(ele);
    if (_disabledSet) ele.disabled = disabled;
    if (_nameSet) ele.name = name;
  }
}

class VFormElement extends VHtmlElement<FormElement> {
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
  FormElement _elementFactory() => new FormElement();
  @override
  void _applyAttributesToElement(FormElement ele) {
    super._applyAttributesToElement(ele);
    if (_acceptCharsetSet) ele.acceptCharset = acceptCharset;
    if (_actionSet) ele.action = action;
    if (_autocompleteSet) ele.autocomplete = autocomplete;
    if (_encodingSet) ele.encoding = encoding;
    if (_enctypeSet) ele.enctype = enctype;
    if (_methodSet) ele.method = method;
    if (_nameSet) ele.name = name;
    if (_noValidateSet) ele.noValidate = noValidate;
    if (_targetSet) ele.target = target;
  }
}

class VHRElement extends VHtmlElement<HRElement> {
  String _color;
  bool _colorSet = false;
  String get color => _color;
  void set color(String v) {
    _color = v;
    _colorSet = true;
  }

  @override
  HRElement _elementFactory() => new HRElement();
  @override
  void _applyAttributesToElement(HRElement ele) {
    super._applyAttributesToElement(ele);
    if (_colorSet) ele.color = color;
  }
}

class VHeadElement extends VHtmlElement<HeadElement> {
  @override
  HeadElement _elementFactory() => new HeadElement();
  @override
  void _applyAttributesToElement(HeadElement ele) {
    super._applyAttributesToElement(ele);
  }
}

abstract class VHeadingElement<T extends HeadingElement>
    extends VHtmlElement<T> {
  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);
  }
}

class Vh1 extends VHeadingElement {
  HeadingElement _elementFactory() => new HeadingElement.h1();
}

class Vh2 extends VHeadingElement {
  HeadingElement _elementFactory() => new HeadingElement.h2();
}

class Vh3 extends VHeadingElement {
  HeadingElement _elementFactory() => new HeadingElement.h3();
}

class Vh4 extends VHeadingElement {
  HeadingElement _elementFactory() => new HeadingElement.h4();
}

class Vh5 extends VHeadingElement {
  HeadingElement _elementFactory() => new HeadingElement.h5();
}

class Vh6 extends VHeadingElement {
  HeadingElement _elementFactory() => new HeadingElement.h6();
}

class VHtmlHtmlElement extends VHtmlElement<HtmlHtmlElement> {
  @override
  HtmlHtmlElement _elementFactory() => new HtmlHtmlElement();
  @override
  void _applyAttributesToElement(HtmlHtmlElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VIFrameElement extends VHtmlElement<IFrameElement> {
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
  IFrameElement _elementFactory() => new IFrameElement();
  @override
  void _applyAttributesToElement(IFrameElement ele) {
    super._applyAttributesToElement(ele);
    if (_allowFullscreenSet) ele.allowFullscreen = allowFullscreen;
    if (_heightSet) ele.height = height;
    if (_nameSet) ele.name = name;
    if (_referrerpolicySet) ele.referrerpolicy = referrerpolicy;
    if (_srcSet) ele.src = src;
    if (_srcdocSet) ele.srcdoc = srcdoc;
    if (_widthSet) ele.width = width;
  }
}

class VImageElement extends VHtmlElement<ImageElement> {
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
  ImageElement _elementFactory() => new ImageElement();
  @override
  void _applyAttributesToElement(ImageElement ele) {
    super._applyAttributesToElement(ele);
    if (_altSet) ele.alt = alt;
    if (_crossOriginSet) ele.crossOrigin = crossOrigin;
    if (_heightSet) ele.height = height;
    if (_isMapSet) ele.isMap = isMap;
    if (_referrerpolicySet) ele.referrerpolicy = referrerpolicy;
    if (_sizesSet) ele.sizes = sizes;
    if (_srcSet) ele.src = src;
    if (_srcsetSet) ele.srcset = srcset;
    if (_useMapSet) ele.useMap = useMap;
    if (_widthSet) ele.width = width;
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
    if (_autofocusSet) ele.autofocus = autofocus;
    if (_disabledSet) ele.disabled = disabled;
    if (_incrementalSet) ele.incremental = incremental;
    if (_indeterminateSet) ele.indeterminate = indeterminate;
    if (_nameSet) ele.name = name;
    if (_valueSet) ele.value = value;
  }
}

class VHiddenInputElement extends VInputElementBase<HiddenInputElement> {
  @override
  HiddenInputElement _elementFactory() => new HiddenInputElement();
  @override
  void _applyAttributesToElement(HiddenInputElement ele) {
    super._applyAttributesToElement(ele);
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
    if (_autocompleteSet) ele.autocomplete = autocomplete;
    if (_maxLengthSet) ele.maxLength = maxLength;
    if (_patternSet) ele.pattern = pattern;
    if (_placeholderSet) ele.placeholder = placeholder;
    if (_readOnlySet) ele.readOnly = readOnly;
    if (_requiredSet) ele.required = required;
    if (_sizeSet) ele.size = size;
    if (_selectionDirectionSet) ele.selectionDirection = selectionDirection;
    if (_selectionEndSet) ele.selectionEnd = selectionEnd;
    if (_selectionStartSet) ele.selectionStart = selectionStart;
  }
}

class VSearchInputElement extends VTextInputElementBase<SearchInputElement> {
  String _dirName;
  bool _dirNameSet = false;
  String get dirName => _dirName;
  void set dirName(String v) {
    _dirName = v;
    _dirNameSet = true;
  }

  @override
  SearchInputElement _elementFactory() => new SearchInputElement();
  @override
  void _applyAttributesToElement(SearchInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_dirNameSet) ele.dirName = dirName;
  }
}

class VTextInputElement extends VTextInputElementBase<TextInputElement> {
  String _dirName;
  bool _dirNameSet = false;
  String get dirName => _dirName;
  void set dirName(String v) {
    _dirName = v;
    _dirNameSet = true;
  }

  @override
  TextInputElement _elementFactory() => new TextInputElement();
  @override
  void _applyAttributesToElement(TextInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_dirNameSet) ele.dirName = dirName;
  }
}

class VUrlInputElement extends VTextInputElementBase<UrlInputElement> {
  @override
  UrlInputElement _elementFactory() => new UrlInputElement();
  @override
  void _applyAttributesToElement(UrlInputElement ele) {
    super._applyAttributesToElement(ele);
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
}

class VEmailInputElement extends VTextInputElementBase<EmailInputElement> {
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
  EmailInputElement _elementFactory() => new EmailInputElement();
  @override
  void _applyAttributesToElement(EmailInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_autocompleteSet) ele.autocomplete = autocomplete;
    if (_autofocusSet) ele.autofocus = autofocus;
    if (_maxLengthSet) ele.maxLength = maxLength;
    if (_multipleSet) ele.multiple = multiple;
    if (_patternSet) ele.pattern = pattern;
    if (_placeholderSet) ele.placeholder = placeholder;
    if (_readOnlySet) ele.readOnly = readOnly;
    if (_requiredSet) ele.required = required;
    if (_sizeSet) ele.size = size;
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
    if (_maxSet) ele.max = max;
    if (_minSet) ele.min = min;
    if (_stepSet) ele.step = step;
    if (_valueAsNumberSet) ele.valueAsNumber = valueAsNumber;
  }
}

class VDateInputElement extends VRangeInputElementBase<DateInputElement> {
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
  DateInputElement _elementFactory() => new DateInputElement();
  @override
  void _applyAttributesToElement(DateInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_valueAsDateSet) ele.valueAsDate = valueAsDate;
    if (_readOnlySet) ele.readOnly = readOnly;
    if (_requiredSet) ele.required = required;
  }
}

class VMonthInputElement extends VRangeInputElementBase<MonthInputElement> {
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
  MonthInputElement _elementFactory() => new MonthInputElement();
  @override
  void _applyAttributesToElement(MonthInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_valueAsDateSet) ele.valueAsDate = valueAsDate;
    if (_readOnlySet) ele.readOnly = readOnly;
    if (_requiredSet) ele.required = required;
  }
}

class VWeekInputElement extends VRangeInputElementBase<WeekInputElement> {
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
  WeekInputElement _elementFactory() => new WeekInputElement();
  @override
  void _applyAttributesToElement(WeekInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_valueAsDateSet) ele.valueAsDate = valueAsDate;
    if (_readOnlySet) ele.readOnly = readOnly;
    if (_requiredSet) ele.required = required;
  }
}

class VTimeInputElement extends VRangeInputElementBase<TimeInputElement> {
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
  TimeInputElement _elementFactory() => new TimeInputElement();
  @override
  void _applyAttributesToElement(TimeInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_valueAsDateSet) ele.valueAsDate = valueAsDate;
    if (_readOnlySet) ele.readOnly = readOnly;
    if (_requiredSet) ele.required = required;
  }
}

class VLocalDateTimeInputElement
    extends VRangeInputElementBase<LocalDateTimeInputElement> {
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
  LocalDateTimeInputElement _elementFactory() =>
      new LocalDateTimeInputElement();
  @override
  void _applyAttributesToElement(LocalDateTimeInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_readOnlySet) ele.readOnly = readOnly;
    if (_requiredSet) ele.required = required;
  }
}

class VNumberInputElement extends VRangeInputElementBase<NumberInputElement> {
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
  NumberInputElement _elementFactory() => new NumberInputElement();
  @override
  void _applyAttributesToElement(NumberInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_placeholderSet) ele.placeholder = placeholder;
    if (_readOnlySet) ele.readOnly = readOnly;
    if (_requiredSet) ele.required = required;
  }
}

class VRangeInputElement extends VRangeInputElementBase<RangeInputElement> {
  @override
  RangeInputElement _elementFactory() => new RangeInputElement();
  @override
  void _applyAttributesToElement(RangeInputElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VCheckboxInputElement extends VInputElementBase<CheckboxInputElement> {
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
  CheckboxInputElement _elementFactory() => new CheckboxInputElement();
  @override
  void _applyAttributesToElement(CheckboxInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_checkedSet) ele.checked = checked;
    if (_requiredSet) ele.required = required;
  }
}

class VRadioButtonInputElement
    extends VInputElementBase<RadioButtonInputElement> {
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
  RadioButtonInputElement _elementFactory() => new RadioButtonInputElement();
  @override
  void _applyAttributesToElement(RadioButtonInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_checkedSet) ele.checked = checked;
    if (_requiredSet) ele.required = required;
  }
}

class VFileUploadInputElement
    extends VInputElementBase<FileUploadInputElement> {
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
  FileUploadInputElement _elementFactory() => new FileUploadInputElement();
  @override
  void _applyAttributesToElement(FileUploadInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_acceptSet) ele.accept = accept;
    if (_multipleSet) ele.multiple = multiple;
    if (_requiredSet) ele.required = required;
    if (_filesSet) ele.files = files;
  }
}

class VSubmitButtonInputElement
    extends VInputElementBase<SubmitButtonInputElement> {
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
  SubmitButtonInputElement _elementFactory() => new SubmitButtonInputElement();
  @override
  void _applyAttributesToElement(SubmitButtonInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_formActionSet) ele.formAction = formAction;
    if (_formEnctypeSet) ele.formEnctype = formEnctype;
    if (_formMethodSet) ele.formMethod = formMethod;
    if (_formNoValidateSet) ele.formNoValidate = formNoValidate;
    if (_formTargetSet) ele.formTarget = formTarget;
  }
}

class VImageButtonInputElement
    extends VInputElementBase<ImageButtonInputElement> {
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
  ImageButtonInputElement _elementFactory() => new ImageButtonInputElement();
  @override
  void _applyAttributesToElement(ImageButtonInputElement ele) {
    super._applyAttributesToElement(ele);
    if (_altSet) ele.alt = alt;
    if (_formActionSet) ele.formAction = formAction;
    if (_formEnctypeSet) ele.formEnctype = formEnctype;
    if (_formMethodSet) ele.formMethod = formMethod;
    if (_formNoValidateSet) ele.formNoValidate = formNoValidate;
    if (_formTargetSet) ele.formTarget = formTarget;
    if (_heightSet) ele.height = height;
    if (_srcSet) ele.src = src;
    if (_widthSet) ele.width = width;
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
}

class VButtonInputElement extends VInputElementBase<ButtonInputElement> {
  @override
  ButtonInputElement _elementFactory() => new ButtonInputElement();
  @override
  void _applyAttributesToElement(ButtonInputElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VKeygenElement extends VHtmlElement<KeygenElement> {
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
  KeygenElement _elementFactory() => new KeygenElement();
  @override
  void _applyAttributesToElement(KeygenElement ele) {
    super._applyAttributesToElement(ele);
    if (_autofocusSet) ele.autofocus = autofocus;
    if (_challengeSet) ele.challenge = challenge;
    if (_disabledSet) ele.disabled = disabled;
    if (_keytypeSet) ele.keytype = keytype;
    if (_nameSet) ele.name = name;
  }
}

class VLIElement extends VHtmlElement<LIElement> {
  int _value;
  bool _valueSet = false;
  int get value => _value;
  void set value(int v) {
    _value = v;
    _valueSet = true;
  }

  @override
  LIElement _elementFactory() => new LIElement();
  @override
  void _applyAttributesToElement(LIElement ele) {
    super._applyAttributesToElement(ele);
    if (_valueSet) ele.value = value;
  }
}

class VLabelElement extends VHtmlElement<LabelElement> {
  String _htmlFor;
  bool _htmlForSet = false;
  String get htmlFor => _htmlFor;
  void set htmlFor(String v) {
    _htmlFor = v;
    _htmlForSet = true;
  }

  @override
  LabelElement _elementFactory() => new LabelElement();
  @override
  void _applyAttributesToElement(LabelElement ele) {
    super._applyAttributesToElement(ele);
    if (_htmlForSet) ele.htmlFor = htmlFor;
  }
}

class VLegendElement extends VHtmlElement<LegendElement> {
  @override
  LegendElement _elementFactory() => new LegendElement();
  @override
  void _applyAttributesToElement(LegendElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VLinkElement extends VHtmlElement<LinkElement> {
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
  LinkElement _elementFactory() => new LinkElement();
  @override
  void _applyAttributesToElement(LinkElement ele) {
    super._applyAttributesToElement(ele);
    if (_asSet) ele.as = as;
    if (_crossOriginSet) ele.crossOrigin = crossOrigin;
    if (_disabledSet) ele.disabled = disabled;
    if (_hrefSet) ele.href = href;
    if (_hreflangSet) ele.hreflang = hreflang;
    if (_integritySet) ele.integrity = integrity;
    if (_mediaSet) ele.media = media;
    if (_relSet) ele.rel = rel;
    if (_typeSet) ele.type = type;
  }
}

class VMapElement extends VHtmlElement<MapElement> {
  String _name;
  bool _nameSet = false;
  String get name => _name;
  void set name(String v) {
    _name = v;
    _nameSet = true;
  }

  @override
  MapElement _elementFactory() => new MapElement();
  @override
  void _applyAttributesToElement(MapElement ele) {
    super._applyAttributesToElement(ele);
    if (_nameSet) ele.name = name;
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
    if (_autoplaySet) ele.autoplay = autoplay;
    if (_controlsSet) ele.controls = controls;
    if (_crossOriginSet) ele.crossOrigin = crossOrigin;
    if (_currentTimeSet) ele.currentTime = currentTime;
    if (_defaultMutedSet) ele.defaultMuted = defaultMuted;
    if (_defaultPlaybackRateSet) ele.defaultPlaybackRate = defaultPlaybackRate;
    if (_disableRemotePlaybackSet)
      ele.disableRemotePlayback = disableRemotePlayback;
    if (_loopSet) ele.loop = loop;
    if (_mutedSet) ele.muted = muted;
    if (_playbackRateSet) ele.playbackRate = playbackRate;
    if (_preloadSet) ele.preload = preload;
    if (_sessionSet) ele.session = session;
    if (_srcSet) ele.src = src;
    if (_volumeSet) ele.volume = volume;
  }
}

class VMenuElement extends VHtmlElement<MenuElement> {
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
  MenuElement _elementFactory() => new MenuElement();
  @override
  void _applyAttributesToElement(MenuElement ele) {
    super._applyAttributesToElement(ele);
    if (_labelSet) ele.label = label;
    if (_typeSet) ele.type = type;
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
    if (_checkedSet) ele.checked = checked;
    if (_defaultValueSet) ele.defaultValue = defaultValue;
    if (_disabledSet) ele.disabled = disabled;
    if (_iconSet) ele.icon = icon;
    if (_labelSet) ele.label = label;
    if (_radiogroupSet) ele.radiogroup = radiogroup;
    if (_typeSet) ele.type = type;
  }
}

class VMetaElement extends VHtmlElement<MetaElement> {
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
  MetaElement _elementFactory() => new MetaElement();
  @override
  void _applyAttributesToElement(MetaElement ele) {
    super._applyAttributesToElement(ele);
    if (_contentSet) ele.content = content;
    if (_httpEquivSet) ele.httpEquiv = httpEquiv;
    if (_nameSet) ele.name = name;
  }
}

class VMeterElement extends VHtmlElement<MeterElement> {
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
  MeterElement _elementFactory() => new MeterElement();
  @override
  void _applyAttributesToElement(MeterElement ele) {
    super._applyAttributesToElement(ele);
    if (_highSet) ele.high = high;
    if (_lowSet) ele.low = low;
    if (_maxSet) ele.max = max;
    if (_minSet) ele.min = min;
    if (_optimumSet) ele.optimum = optimum;
    if (_valueSet) ele.value = value;
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
    if (_citeSet) ele.cite = cite;
    if (_dateTimeSet) ele.dateTime = dateTime;
  }
}

class VOListElement extends VHtmlElement<OListElement> {
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
  OListElement _elementFactory() => new OListElement();
  @override
  void _applyAttributesToElement(OListElement ele) {
    super._applyAttributesToElement(ele);
    if (_reversedSet) ele.reversed = reversed;
    if (_startSet) ele.start = start;
    if (_typeSet) ele.type = type;
  }
}

class VObjectElement extends VHtmlElement<ObjectElement> {
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
  ObjectElement _elementFactory() => new ObjectElement();
  @override
  void _applyAttributesToElement(ObjectElement ele) {
    super._applyAttributesToElement(ele);
    if (_dataSet) ele.data = data;
    if (_heightSet) ele.height = height;
    if (_nameSet) ele.name = name;
    if (_typeSet) ele.type = type;
    if (_useMapSet) ele.useMap = useMap;
    if (_widthSet) ele.width = width;
  }
}

class VOptGroupElement extends VHtmlElement<OptGroupElement> {
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
  OptGroupElement _elementFactory() => new OptGroupElement();
  @override
  void _applyAttributesToElement(OptGroupElement ele) {
    super._applyAttributesToElement(ele);
    if (_disabledSet) ele.disabled = disabled;
    if (_labelSet) ele.label = label;
  }
}

class VOptionElement extends VHtmlElement<OptionElement> {
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
  OptionElement _elementFactory() => new OptionElement();
  @override
  void _applyAttributesToElement(OptionElement ele) {
    super._applyAttributesToElement(ele);
    if (_defaultSelectedSet) ele.defaultSelected = defaultSelected;
    if (_disabledSet) ele.disabled = disabled;
    if (_labelSet) ele.label = label;
    if (_selectedSet) ele.selected = selected;
    if (_valueSet) ele.value = value;
  }
}

class VOutputElement extends VHtmlElement<OutputElement> {
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
  OutputElement _elementFactory() => new OutputElement();
  @override
  void _applyAttributesToElement(OutputElement ele) {
    super._applyAttributesToElement(ele);
    if (_defaultValueSet) ele.defaultValue = defaultValue;
    if (_nameSet) ele.name = name;
    if (_valueSet) ele.value = value;
  }
}

class VParagraphElement extends VHtmlElement<ParagraphElement> {
  @override
  ParagraphElement _elementFactory() => new ParagraphElement();
  @override
  void _applyAttributesToElement(ParagraphElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VParamElement extends VHtmlElement<ParamElement> {
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
  ParamElement _elementFactory() => new ParamElement();
  @override
  void _applyAttributesToElement(ParamElement ele) {
    super._applyAttributesToElement(ele);
    if (_nameSet) ele.name = name;
    if (_valueSet) ele.value = value;
  }
}

abstract class VPictureElement<T extends PictureElement>
    extends VHtmlElement<T> {
  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);
  }
}

class VPreElement extends VHtmlElement<PreElement> {
  @override
  PreElement _elementFactory() => new PreElement();
  @override
  void _applyAttributesToElement(PreElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VProgressElement extends VHtmlElement<ProgressElement> {
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
  ProgressElement _elementFactory() => new ProgressElement();
  @override
  void _applyAttributesToElement(ProgressElement ele) {
    super._applyAttributesToElement(ele);
    if (_maxSet) ele.max = max;
    if (_valueSet) ele.value = value;
  }
}

class VQuoteElement extends VHtmlElement<QuoteElement> {
  String _cite;
  bool _citeSet = false;
  String get cite => _cite;
  void set cite(String v) {
    _cite = v;
    _citeSet = true;
  }

  @override
  QuoteElement _elementFactory() => new QuoteElement();
  @override
  void _applyAttributesToElement(QuoteElement ele) {
    super._applyAttributesToElement(ele);
    if (_citeSet) ele.cite = cite;
  }
}

class VScriptElement extends VHtmlElement<ScriptElement> {
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
  ScriptElement _elementFactory() => new ScriptElement();
  @override
  void _applyAttributesToElement(ScriptElement ele) {
    super._applyAttributesToElement(ele);
    if (_asyncSet) ele.async = async;
    if (_charsetSet) ele.charset = charset;
    if (_crossOriginSet) ele.crossOrigin = crossOrigin;
    if (_deferSet) ele.defer = defer;
    if (_integritySet) ele.integrity = integrity;
    if (_nonceSet) ele.nonce = nonce;
    if (_srcSet) ele.src = src;
    if (_typeSet) ele.type = type;
  }
}

class VSelectElement extends VHtmlElement<SelectElement> {
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
  SelectElement _elementFactory() => new SelectElement();
  @override
  void _applyAttributesToElement(SelectElement ele) {
    super._applyAttributesToElement(ele);
    if (_autofocusSet) ele.autofocus = autofocus;
    if (_disabledSet) ele.disabled = disabled;
    if (_lengthSet) ele.length = length;
    if (_multipleSet) ele.multiple = multiple;
    if (_nameSet) ele.name = name;
    if (_requiredSet) ele.required = required;
    if (_selectedIndexSet) ele.selectedIndex = selectedIndex;
    if (_sizeSet) ele.size = size;
    if (_valueSet) ele.value = value;
  }
}

class VShadowElement extends VHtmlElement<ShadowElement> {
  @override
  ShadowElement _elementFactory() => new ShadowElement();
  @override
  void _applyAttributesToElement(ShadowElement ele) {
    super._applyAttributesToElement(ele);
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
    if (_nameSet) ele.name = name;
  }
}

class VSourceElement extends VHtmlElement<SourceElement> {
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
  SourceElement _elementFactory() => new SourceElement();
  @override
  void _applyAttributesToElement(SourceElement ele) {
    super._applyAttributesToElement(ele);
    if (_mediaSet) ele.media = media;
    if (_sizesSet) ele.sizes = sizes;
    if (_srcSet) ele.src = src;
    if (_srcsetSet) ele.srcset = srcset;
    if (_typeSet) ele.type = type;
  }
}

class VSpanElement extends VHtmlElement<SpanElement> {
  @override
  SpanElement _elementFactory() => new SpanElement();
  @override
  void _applyAttributesToElement(SpanElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VStyleElement extends VHtmlElement<StyleElement> {
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
  StyleElement _elementFactory() => new StyleElement();
  @override
  void _applyAttributesToElement(StyleElement ele) {
    super._applyAttributesToElement(ele);
    if (_disabledSet) ele.disabled = disabled;
    if (_mediaSet) ele.media = media;
    if (_typeSet) ele.type = type;
  }
}

class VTableCaptionElement extends VHtmlElement<TableCaptionElement> {
  @override
  TableCaptionElement _elementFactory() => new TableCaptionElement();
  @override
  void _applyAttributesToElement(TableCaptionElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VTableCellElement extends VHtmlElement<TableCellElement> {
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
  TableCellElement _elementFactory() => new TableCellElement();
  @override
  void _applyAttributesToElement(TableCellElement ele) {
    super._applyAttributesToElement(ele);
    if (_colSpanSet) ele.colSpan = colSpan;
    if (_headersSet) ele.headers = headers;
    if (_rowSpanSet) ele.rowSpan = rowSpan;
  }
}

class VTableColElement extends VHtmlElement<TableColElement> {
  int _span;
  bool _spanSet = false;
  int get span => _span;
  void set span(int v) {
    _span = v;
    _spanSet = true;
  }

  @override
  TableColElement _elementFactory() => new TableColElement();
  @override
  void _applyAttributesToElement(TableColElement ele) {
    super._applyAttributesToElement(ele);
    if (_spanSet) ele.span = span;
  }
}

class VTableElement extends VHtmlElement<TableElement> {
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
  TableElement _elementFactory() => new TableElement();
  @override
  void _applyAttributesToElement(TableElement ele) {
    super._applyAttributesToElement(ele);
    if (_captionSet) ele.caption = caption;
    if (_tFootSet) ele.tFoot = tFoot;
    if (_tHeadSet) ele.tHead = tHead;
  }
}

class VTableRowElement extends VHtmlElement<TableRowElement> {
  @override
  TableRowElement _elementFactory() => new TableRowElement();
  @override
  void _applyAttributesToElement(TableRowElement ele) {
    super._applyAttributesToElement(ele);
  }
}

abstract class VTableSectionElement<T extends TableSectionElement>
    extends VHtmlElement<T> {
  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);
  }
}

class VTemplateElement extends VHtmlElement<TemplateElement> {
  @override
  TemplateElement _elementFactory() => new TemplateElement();
  @override
  void _applyAttributesToElement(TemplateElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VTextAreaElement extends VHtmlElement<TextAreaElement> {
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
  TextAreaElement _elementFactory() => new TextAreaElement();
  @override
  void _applyAttributesToElement(TextAreaElement ele) {
    super._applyAttributesToElement(ele);
    if (_autocapitalizeSet) ele.autocapitalize = autocapitalize;
    if (_autofocusSet) ele.autofocus = autofocus;
    if (_colsSet) ele.cols = cols;
    if (_defaultValueSet) ele.defaultValue = defaultValue;
    if (_dirNameSet) ele.dirName = dirName;
    if (_disabledSet) ele.disabled = disabled;
    if (_inputModeSet) ele.inputMode = inputMode;
    if (_maxLengthSet) ele.maxLength = maxLength;
    if (_minLengthSet) ele.minLength = minLength;
    if (_nameSet) ele.name = name;
    if (_placeholderSet) ele.placeholder = placeholder;
    if (_readOnlySet) ele.readOnly = readOnly;
    if (_requiredSet) ele.required = required;
    if (_rowsSet) ele.rows = rows;
    if (_selectionDirectionSet) ele.selectionDirection = selectionDirection;
    if (_selectionEndSet) ele.selectionEnd = selectionEnd;
    if (_selectionStartSet) ele.selectionStart = selectionStart;
    if (_valueSet) ele.value = value;
    if (_wrapSet) ele.wrap = wrap;
  }
}

class VTitleElement extends VHtmlElement<TitleElement> {
  @override
  TitleElement _elementFactory() => new TitleElement();
  @override
  void _applyAttributesToElement(TitleElement ele) {
    super._applyAttributesToElement(ele);
  }
}

class VTrackElement extends VHtmlElement<TrackElement> {
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
  TrackElement _elementFactory() => new TrackElement();
  @override
  void _applyAttributesToElement(TrackElement ele) {
    super._applyAttributesToElement(ele);
    if (_defaultValueSet) ele.defaultValue = defaultValue;
    if (_kindSet) ele.kind = kind;
    if (_labelSet) ele.label = label;
    if (_srcSet) ele.src = src;
    if (_srclangSet) ele.srclang = srclang;
  }
}

class VUListElement extends VHtmlElement<UListElement> {
  @override
  UListElement _elementFactory() => new UListElement();
  @override
  void _applyAttributesToElement(UListElement ele) {
    super._applyAttributesToElement(ele);
  }
}

abstract class VUnknownElement<T extends UnknownElement>
    extends VHtmlElement<T> {
  @override
  void _applyAttributesToElement(T ele) {
    super._applyAttributesToElement(ele);
  }
}

class VVideoElement extends VMediaElement<VideoElement> {
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
  VideoElement _elementFactory() => new VideoElement();
  @override
  void _applyAttributesToElement(VideoElement ele) {
    super._applyAttributesToElement(ele);
    if (_heightSet) ele.height = height;
    if (_posterSet) ele.poster = poster;
    if (_widthSet) ele.width = width;
  }
}
