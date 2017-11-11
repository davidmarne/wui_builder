part of velement;

abstract class VElement<E extends Element> extends VNode {
  final vNodeType = VNodeTypes.Element;

  E elementFactory();

  bool shouldUpdateSubs = false;

  StyleBuilder styleBuilder;

  List<VNode> _children = new List<VNode>();
  List<VNode> get children => _children;
  void set children(Iterable<VNode> c) {
    _children = c.toList();
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
    shouldUpdateSubs = true;
  }

  StreamSubscription _onBeforeCopySub;
  bool _onBeforeCopySet = false;
  EventHandler<Event> _onBeforeCopy;
  EventHandler<Event> get onBeforeCopy => _onBeforeCopy;
  void set onBeforeCopy(EventHandler<Event> v) {
    _onBeforeCopy = v;
    _onBeforeCopySet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onBeforeCutSub;
  bool _onBeforeCutSet = false;
  EventHandler<Event> _onBeforeCut;
  EventHandler<Event> get onBeforeCut => _onBeforeCut;
  void set onBeforeCut(EventHandler<Event> v) {
    _onBeforeCut = v;
    _onBeforeCutSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onBeforePasteSub;
  bool _onBeforePasteSet = false;
  EventHandler<Event> _onBeforePaste;
  EventHandler<Event> get onBeforePaste => _onBeforePaste;
  void set onBeforePaste(EventHandler<Event> v) {
    _onBeforePaste = v;
    _onBeforePasteSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onBlurSub;
  bool _onBlurSet = false;
  EventHandler<Event> _onBlur;
  EventHandler<Event> get onBlur => _onBlur;
  void set onBlur(EventHandler<Event> v) {
    _onBlur = v;
    _onBlurSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onCanPlaySub;
  bool _onCanPlaySet = false;
  EventHandler<Event> _onCanPlay;
  EventHandler<Event> get onCanPlay => _onCanPlay;
  void set onCanPlay(EventHandler<Event> v) {
    _onCanPlay = v;
    _onCanPlaySet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onCanPlayThroughSub;
  bool _onCanPlayThroughSet = false;
  EventHandler<Event> _onCanPlayThrough;
  EventHandler<Event> get onCanPlayThrough => _onCanPlayThrough;
  void set onCanPlayThrough(EventHandler<Event> v) {
    _onCanPlayThrough = v;
    _onCanPlayThroughSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onChangeSub;
  bool _onChangeSet = false;
  EventHandler<Event> _onChange;
  EventHandler<Event> get onChange => _onChange;
  void set onChange(EventHandler<Event> v) {
    _onChange = v;
    _onChangeSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onClickSub;
  bool _onClickSet = false;
  EventHandler<MouseEvent> _onClick;
  EventHandler<MouseEvent> get onClick => _onClick;
  void set onClick(EventHandler<MouseEvent> v) {
    _onClick = v;
    _onClickSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onContextMenuSub;
  bool _onContextMenuSet = false;
  EventHandler<MouseEvent> _onContextMenu;
  EventHandler<MouseEvent> get onContextMenu => _onContextMenu;
  void set onContextMenu(EventHandler<MouseEvent> v) {
    _onContextMenu = v;
    _onContextMenuSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onCopySub;
  bool _onCopySet = false;
  EventHandler<ClipboardEvent> _onCopy;
  EventHandler<ClipboardEvent> get onCopy => _onCopy;
  void set onCopy(EventHandler<ClipboardEvent> v) {
    _onCopy = v;
    _onCopySet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onCutSub;
  bool _onCutSet = false;
  EventHandler<ClipboardEvent> _onCut;
  EventHandler<ClipboardEvent> get onCut => _onCut;
  void set onCut(EventHandler<ClipboardEvent> v) {
    _onCut = v;
    _onCutSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onDoubleClickSub;
  bool _onDoubleClickSet = false;
  EventHandler<Event> _onDoubleClick;
  EventHandler<Event> get onDoubleClick => _onDoubleClick;
  void set onDoubleClick(EventHandler<Event> v) {
    _onDoubleClick = v;
    _onDoubleClickSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onDragSub;
  bool _onDragSet = false;
  EventHandler<MouseEvent> _onDrag;
  EventHandler<MouseEvent> get onDrag => _onDrag;
  void set onDrag(EventHandler<MouseEvent> v) {
    _onDrag = v;
    _onDragSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onDragEndSub;
  bool _onDragEndSet = false;
  EventHandler<MouseEvent> _onDragEnd;
  EventHandler<MouseEvent> get onDragEnd => _onDragEnd;
  void set onDragEnd(EventHandler<MouseEvent> v) {
    _onDragEnd = v;
    _onDragEndSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onDragEnterSub;
  bool _onDragEnterSet = false;
  EventHandler<MouseEvent> _onDragEnter;
  EventHandler<MouseEvent> get onDragEnter => _onDragEnter;
  void set onDragEnter(EventHandler<MouseEvent> v) {
    _onDragEnter = v;
    _onDragEnterSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onDragLeaveSub;
  bool _onDragLeaveSet = false;
  EventHandler<MouseEvent> _onDragLeave;
  EventHandler<MouseEvent> get onDragLeave => _onDragLeave;
  void set onDragLeave(EventHandler<MouseEvent> v) {
    _onDragLeave = v;
    _onDragLeaveSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onDragOverSub;
  bool _onDragOverSet = false;
  EventHandler<MouseEvent> _onDragOver;
  EventHandler<MouseEvent> get onDragOver => _onDragOver;
  void set onDragOver(EventHandler<MouseEvent> v) {
    _onDragOver = v;
    _onDragOverSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onDragStartSub;
  bool _onDragStartSet = false;
  EventHandler<MouseEvent> _onDragStart;
  EventHandler<MouseEvent> get onDragStart => _onDragStart;
  void set onDragStart(EventHandler<MouseEvent> v) {
    _onDragStart = v;
    _onDragStartSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onDropSub;
  bool _onDropSet = false;
  EventHandler<MouseEvent> _onDrop;
  EventHandler<MouseEvent> get onDrop => _onDrop;
  void set onDrop(EventHandler<MouseEvent> v) {
    _onDrop = v;
    _onDropSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onDurationChangeSub;
  bool _onDurationChangeSet = false;
  EventHandler<Event> _onDurationChange;
  EventHandler<Event> get onDurationChange => _onDurationChange;
  void set onDurationChange(EventHandler<Event> v) {
    _onDurationChange = v;
    _onDurationChangeSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onEmptiedSub;
  bool _onEmptiedSet = false;
  EventHandler<Event> _onEmptied;
  EventHandler<Event> get onEmptied => _onEmptied;
  void set onEmptied(EventHandler<Event> v) {
    _onEmptied = v;
    _onEmptiedSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onEndedSub;
  bool _onEndedSet = false;
  EventHandler<Event> _onEnded;
  EventHandler<Event> get onEnded => _onEnded;
  void set onEnded(EventHandler<Event> v) {
    _onEnded = v;
    _onEndedSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onErrorSub;
  bool _onErrorSet = false;
  EventHandler<Event> _onError;
  EventHandler<Event> get onError => _onError;
  void set onError(EventHandler<Event> v) {
    _onError = v;
    _onErrorSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onFocusSub;
  bool _onFocusSet = false;
  EventHandler<Event> _onFocus;
  EventHandler<Event> get onFocus => _onFocus;
  void set onFocus(EventHandler<Event> v) {
    _onFocus = v;
    _onFocusSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onInputSub;
  bool _onInputSet = false;
  EventHandler<Event> _onInput;
  EventHandler<Event> get onInput => _onInput;
  void set onInput(EventHandler<Event> v) {
    _onInput = v;
    _onInputSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onInvalidSub;
  bool _onInvalidSet = false;
  EventHandler<Event> _onInvalid;
  EventHandler<Event> get onInvalid => _onInvalid;
  void set onInvalid(EventHandler<Event> v) {
    _onInvalid = v;
    _onInvalidSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onKeyDownSub;
  bool _onKeyDownSet = false;
  EventHandler<KeyboardEvent> _onKeyDown;
  EventHandler<KeyboardEvent> get onKeyDown => _onKeyDown;
  void set onKeyDown(EventHandler<KeyboardEvent> v) {
    _onKeyDown = v;
    _onKeyDownSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onKeyPressSub;
  bool _onKeyPressSet = false;
  EventHandler<KeyboardEvent> _onKeyPress;
  EventHandler<KeyboardEvent> get onKeyPress => _onKeyPress;
  void set onKeyPress(EventHandler<KeyboardEvent> v) {
    _onKeyPress = v;
    _onKeyPressSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onKeyUpSub;
  bool _onKeyUpSet = false;
  EventHandler<KeyboardEvent> _onKeyUp;
  EventHandler<KeyboardEvent> get onKeyUp => _onKeyUp;
  void set onKeyUp(EventHandler<KeyboardEvent> v) {
    _onKeyUp = v;
    _onKeyUpSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onLoadSub;
  bool _onLoadSet = false;
  EventHandler<Event> _onLoad;
  EventHandler<Event> get onLoad => _onLoad;
  void set onLoad(EventHandler<Event> v) {
    _onLoad = v;
    _onLoadSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onLoadedDataSub;
  bool _onLoadedDataSet = false;
  EventHandler<Event> _onLoadedData;
  EventHandler<Event> get onLoadedData => _onLoadedData;
  void set onLoadedData(EventHandler<Event> v) {
    _onLoadedData = v;
    _onLoadedDataSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onLoadedMetadataSub;
  bool _onLoadedMetadataSet = false;
  EventHandler<Event> _onLoadedMetadata;
  EventHandler<Event> get onLoadedMetadata => _onLoadedMetadata;
  void set onLoadedMetadata(EventHandler<Event> v) {
    _onLoadedMetadata = v;
    _onLoadedMetadataSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onMouseDownSub;
  bool _onMouseDownSet = false;
  EventHandler<MouseEvent> _onMouseDown;
  EventHandler<MouseEvent> get onMouseDown => _onMouseDown;
  void set onMouseDown(EventHandler<MouseEvent> v) {
    _onMouseDown = v;
    _onMouseDownSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onMouseEnterSub;
  bool _onMouseEnterSet = false;
  EventHandler<MouseEvent> _onMouseEnter;
  EventHandler<MouseEvent> get onMouseEnter => _onMouseEnter;
  void set onMouseEnter(EventHandler<MouseEvent> v) {
    _onMouseEnter = v;
    _onMouseEnterSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onMouseLeaveSub;
  bool _onMouseLeaveSet = false;
  EventHandler<MouseEvent> _onMouseLeave;
  EventHandler<MouseEvent> get onMouseLeave => _onMouseLeave;
  void set onMouseLeave(EventHandler<MouseEvent> v) {
    _onMouseLeave = v;
    _onMouseLeaveSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onMouseMoveSub;
  bool _onMouseMoveSet = false;
  EventHandler<MouseEvent> _onMouseMove;
  EventHandler<MouseEvent> get onMouseMove => _onMouseMove;
  void set onMouseMove(EventHandler<MouseEvent> v) {
    _onMouseMove = v;
    _onMouseMoveSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onMouseOutSub;
  bool _onMouseOutSet = false;
  EventHandler<MouseEvent> _onMouseOut;
  EventHandler<MouseEvent> get onMouseOut => _onMouseOut;
  void set onMouseOut(EventHandler<MouseEvent> v) {
    _onMouseOut = v;
    _onMouseOutSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onMouseOverSub;
  bool _onMouseOverSet = false;
  EventHandler<MouseEvent> _onMouseOver;
  EventHandler<MouseEvent> get onMouseOver => _onMouseOver;
  void set onMouseOver(EventHandler<MouseEvent> v) {
    _onMouseOver = v;
    _onMouseOverSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onMouseUpSub;
  bool _onMouseUpSet = false;
  EventHandler<MouseEvent> _onMouseUp;
  EventHandler<MouseEvent> get onMouseUp => _onMouseUp;
  void set onMouseUp(EventHandler<MouseEvent> v) {
    _onMouseUp = v;
    _onMouseUpSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onMouseWheelSub;
  bool _onMouseWheelSet = false;
  EventHandler<WheelEvent> _onMouseWheel;
  EventHandler<WheelEvent> get onMouseWheel => _onMouseWheel;
  void set onMouseWheel(EventHandler<WheelEvent> v) {
    _onMouseWheel = v;
    _onMouseWheelSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onPasteSub;
  bool _onPasteSet = false;
  EventHandler<ClipboardEvent> _onPaste;
  EventHandler<ClipboardEvent> get onPaste => _onPaste;
  void set onPaste(EventHandler<ClipboardEvent> v) {
    _onPaste = v;
    _onPasteSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onPauseSub;
  bool _onPauseSet = false;
  EventHandler<Event> _onPause;
  EventHandler<Event> get onPause => _onPause;
  void set onPause(EventHandler<Event> v) {
    _onPause = v;
    _onPauseSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onPlaySub;
  bool _onPlaySet = false;
  EventHandler<Event> _onPlay;
  EventHandler<Event> get onPlay => _onPlay;
  void set onPlay(EventHandler<Event> v) {
    _onPlay = v;
    _onPlaySet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onPlayingSub;
  bool _onPlayingSet = false;
  EventHandler<Event> _onPlaying;
  EventHandler<Event> get onPlaying => _onPlaying;
  void set onPlaying(EventHandler<Event> v) {
    _onPlaying = v;
    _onPlayingSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onRateChangeSub;
  bool _onRateChangeSet = false;
  EventHandler<Event> _onRateChange;
  EventHandler<Event> get onRateChange => _onRateChange;
  void set onRateChange(EventHandler<Event> v) {
    _onRateChange = v;
    _onRateChangeSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onResetSub;
  bool _onResetSet = false;
  EventHandler<Event> _onReset;
  EventHandler<Event> get onReset => _onReset;
  void set onReset(EventHandler<Event> v) {
    _onReset = v;
    _onResetSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onResizeSub;
  bool _onResizeSet = false;
  EventHandler<Event> _onResize;
  EventHandler<Event> get onResize => _onResize;
  void set onResize(EventHandler<Event> v) {
    _onResize = v;
    _onResizeSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onScrollSub;
  bool _onScrollSet = false;
  EventHandler<Event> _onScroll;
  EventHandler<Event> get onScroll => _onScroll;
  void set onScroll(EventHandler<Event> v) {
    _onScroll = v;
    _onScrollSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onSearchSub;
  bool _onSearchSet = false;
  EventHandler<Event> _onSearch;
  EventHandler<Event> get onSearch => _onSearch;
  void set onSearch(EventHandler<Event> v) {
    _onSearch = v;
    _onSearchSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onSeekedSub;
  bool _onSeekedSet = false;
  EventHandler<Event> _onSeeked;
  EventHandler<Event> get onSeeked => _onSeeked;
  void set onSeeked(EventHandler<Event> v) {
    _onSeeked = v;
    _onSeekedSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onSeekingSub;
  bool _onSeekingSet = false;
  EventHandler<Event> _onSeeking;
  EventHandler<Event> get onSeeking => _onSeeking;
  void set onSeeking(EventHandler<Event> v) {
    _onSeeking = v;
    _onSeekingSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onSelectSub;
  bool _onSelectSet = false;
  EventHandler<Event> _onSelect;
  EventHandler<Event> get onSelect => _onSelect;
  void set onSelect(EventHandler<Event> v) {
    _onSelect = v;
    _onSelectSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onSelectStartSub;
  bool _onSelectStartSet = false;
  EventHandler<Event> _onSelectStart;
  EventHandler<Event> get onSelectStart => _onSelectStart;
  void set onSelectStart(EventHandler<Event> v) {
    _onSelectStart = v;
    _onSelectStartSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onStalledSub;
  bool _onStalledSet = false;
  EventHandler<Event> _onStalled;
  EventHandler<Event> get onStalled => _onStalled;
  void set onStalled(EventHandler<Event> v) {
    _onStalled = v;
    _onStalledSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onSubmitSub;
  bool _onSubmitSet = false;
  EventHandler<Event> _onSubmit;
  EventHandler<Event> get onSubmit => _onSubmit;
  void set onSubmit(EventHandler<Event> v) {
    _onSubmit = v;
    _onSubmitSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onSuspendSub;
  bool _onSuspendSet = false;
  EventHandler<Event> _onSuspend;
  EventHandler<Event> get onSuspend => _onSuspend;
  void set onSuspend(EventHandler<Event> v) {
    _onSuspend = v;
    _onSuspendSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onTimeUpdateSub;
  bool _onTimeUpdateSet = false;
  EventHandler<Event> _onTimeUpdate;
  EventHandler<Event> get onTimeUpdate => _onTimeUpdate;
  void set onTimeUpdate(EventHandler<Event> v) {
    _onTimeUpdate = v;
    _onTimeUpdateSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onTouchCancelSub;
  bool _onTouchCancelSet = false;
  EventHandler<TouchEvent> _onTouchCancel;
  EventHandler<TouchEvent> get onTouchCancel => _onTouchCancel;
  void set onTouchCancel(EventHandler<TouchEvent> v) {
    _onTouchCancel = v;
    _onTouchCancelSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onTouchEndSub;
  bool _onTouchEndSet = false;
  EventHandler<TouchEvent> _onTouchEnd;
  EventHandler<TouchEvent> get onTouchEnd => _onTouchEnd;
  void set onTouchEnd(EventHandler<TouchEvent> v) {
    _onTouchEnd = v;
    _onTouchEndSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onTouchEnterSub;
  bool _onTouchEnterSet = false;
  EventHandler<TouchEvent> _onTouchEnter;
  EventHandler<TouchEvent> get onTouchEnter => _onTouchEnter;
  void set onTouchEnter(EventHandler<TouchEvent> v) {
    _onTouchEnter = v;
    _onTouchEnterSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onTouchLeaveSub;
  bool _onTouchLeaveSet = false;
  EventHandler<TouchEvent> _onTouchLeave;
  EventHandler<TouchEvent> get onTouchLeave => _onTouchLeave;
  void set onTouchLeave(EventHandler<TouchEvent> v) {
    _onTouchLeave = v;
    _onTouchLeaveSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onTouchMoveSub;
  bool _onTouchMoveSet = false;
  EventHandler<TouchEvent> _onTouchMove;
  EventHandler<TouchEvent> get onTouchMove => _onTouchMove;
  void set onTouchMove(EventHandler<TouchEvent> v) {
    _onTouchMove = v;
    _onTouchMoveSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onTouchStartSub;
  bool _onTouchStartSet = false;
  EventHandler<TouchEvent> _onTouchStart;
  EventHandler<TouchEvent> get onTouchStart => _onTouchStart;
  void set onTouchStart(EventHandler<TouchEvent> v) {
    _onTouchStart = v;
    _onTouchStartSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onTransitionEndSub;
  bool _onTransitionEndSet = false;
  EventHandler<TransitionEvent> _onTransitionEnd;
  EventHandler<TransitionEvent> get onTransitionEnd => _onTransitionEnd;
  void set onTransitionEnd(EventHandler<TransitionEvent> v) {
    _onTransitionEnd = v;
    _onTransitionEndSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onVolumeChangeSub;
  bool _onVolumeChangeSet = false;
  EventHandler<Event> _onVolumeChange;
  EventHandler<Event> get onVolumeChange => _onVolumeChange;
  void set onVolumeChange(EventHandler<Event> v) {
    _onVolumeChange = v;
    _onVolumeChangeSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onWaitingSub;
  bool _onWaitingSet = false;
  EventHandler<Event> _onWaiting;
  EventHandler<Event> get onWaiting => _onWaiting;
  void set onWaiting(EventHandler<Event> v) {
    _onWaiting = v;
    _onWaitingSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onFullscreenChangeSub;
  bool _onFullscreenChangeSet = false;
  EventHandler<Event> _onFullscreenChange;
  EventHandler<Event> get onFullscreenChange => _onFullscreenChange;
  void set onFullscreenChange(EventHandler<Event> v) {
    _onFullscreenChange = v;
    _onFullscreenChangeSet = true;
    shouldUpdateSubs = true;
  }

  StreamSubscription _onFullscreenErrorSub;
  bool _onFullscreenErrorSet = false;
  EventHandler<Event> _onFullscreenError;
  EventHandler<Event> get onFullscreenError => _onFullscreenError;
  void set onFullscreenError(EventHandler<Event> v) {
    _onFullscreenError = v;
    _onFullscreenErrorSet = true;
    shouldUpdateSubs = true;
  }

  @protected
  void applyAttributesToElement(E ele) {
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

  @protected
  void updateElementAttributes(covariant VElement<E> prev, E ele) {
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

  void applyEventListenersToElement(Element ele) {
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

  void updateEventListenersToElement(VElement prev, Element ele) {
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
