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
    if (styleBuilder != null) {
      styleBuilder(ele.style);
    }

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
      prev.text = _text;
    }
    if (styleBuilder != null) {
      ele.setAttribute('style', '');
      styleBuilder(ele.style);
      prev.styleBuilder = styleBuilder;
    } else if (prev.styleBuilder != null) {
      prev.styleBuilder = null;
    }

    if (_contentEditable != prev._contentEditable) {
      ele.contentEditable = _contentEditable;
      prev.contentEditable = _contentEditable;
    }
    if (_contextMenu != prev._contextMenu) {
      ele.contextMenu = _contextMenu;
      prev.contextMenu = _contextMenu;
    }
    if (_dir != prev._dir) {
      ele.dir = _dir;
      prev.dir = _dir;
    }
    if (_draggable != prev._draggable) {
      ele.draggable = _draggable;
      prev.draggable = _draggable;
    }
    if (_hidden != prev._hidden) {
      ele.hidden = _hidden;
      prev.hidden = _hidden;
    }
    if (_lang != prev._lang) {
      ele.lang = _lang;
      prev.lang = _lang;
    }
    if (_spellcheck != prev._spellcheck) {
      ele.spellcheck = _spellcheck;
      prev.spellcheck = _spellcheck;
    }
    if (_tabIndex != prev._tabIndex) {
      ele.tabIndex = _tabIndex;
      prev.tabIndex = _tabIndex;
    }
    if (_title != prev._title) {
      ele.title = _title;
      prev.title = _title;
    }
    if (_translate != prev._translate) {
      ele.translate = _translate;
      prev.translate = _translate;
    }
    if (_dropzone != prev._dropzone) {
      ele.dropzone = _dropzone;
      prev.dropzone = _dropzone;
    }
    if (_className != prev._className) {
      ele.className = _className;
      prev.className = _className;
    }
    if (_id != prev._id) {
      ele.id = _id;
      prev.id = _id;
    }
    if (_slot != prev._slot) {
      ele.slot = _slot;
      prev.slot = _slot;
    }
    if (_attributes != prev._attributes) {
      ele.attributes = _attributes;
      prev.attributes = _attributes;
    }
    if (_classes != prev._classes) {
      ele.classes = _classes;
      prev.classes = _classes;
    }
    if (_dataset != prev._dataset) {
      ele.dataset = _dataset;
      prev.dataset = _dataset;
    }
    if (_xtag != prev._xtag) {
      ele.xtag = _xtag;
      prev.xtag = _xtag;
    }
    if (_innerHtml != prev._innerHtml) {
      ele.innerHtml = _innerHtml;
      prev.innerHtml = _innerHtml;
    }
    if (_scrollLeft != prev._scrollLeft) {
      ele.scrollLeft = _scrollLeft;
      prev.scrollLeft = _scrollLeft;
    }
    if (_scrollTop != prev._scrollTop) {
      ele.scrollTop = _scrollTop;
      prev.scrollTop = _scrollTop;
    }
  }

  void applyEventListenersToElement(Element ele) {
    if (_onAbortSet) _onAbortSub = ele.onAbort.listen((e) => onAbort(e));
    if (_onBeforeCopySet)
      _onBeforeCopySub = ele.onBeforeCopy.listen((e) => onBeforeCopy(e));
    if (_onBeforeCutSet)
      _onBeforeCutSub = ele.onBeforeCut.listen((e) => onBeforeCut(e));
    if (_onBeforePasteSet)
      _onBeforePasteSub = ele.onBeforePaste.listen((e) => onBeforePaste(e));
    if (_onBlurSet) _onBlurSub = ele.onBlur.listen((e) => onBlur(e));
    if (_onCanPlaySet)
      _onCanPlaySub = ele.onCanPlay.listen((e) => onCanPlay(e));
    if (_onCanPlayThroughSet)
      _onCanPlayThroughSub =
          ele.onCanPlayThrough.listen((e) => onCanPlayThrough(e));
    if (_onChangeSet) _onChangeSub = ele.onChange.listen((e) => onChange(e));
    if (_onClickSet) _onClickSub = ele.onClick.listen((e) => onClick(e));
    if (_onContextMenuSet)
      _onContextMenuSub = ele.onContextMenu.listen((e) => onContextMenu(e));
    if (_onCopySet) _onCopySub = ele.onCopy.listen((e) => onCopy(e));
    if (_onCutSet) _onCutSub = ele.onCut.listen((e) => onCut(e));
    if (_onDoubleClickSet)
      _onDoubleClickSub = ele.onDoubleClick.listen((e) => onDoubleClick(e));
    if (_onDragSet) _onDragSub = ele.onDrag.listen((e) => onDrag(e));
    if (_onDragEndSet)
      _onDragEndSub = ele.onDragEnd.listen((e) => onDragEnd(e));
    if (_onDragEnterSet)
      _onDragEnterSub = ele.onDragEnter.listen((e) => onDragEnter(e));
    if (_onDragLeaveSet)
      _onDragLeaveSub = ele.onDragLeave.listen((e) => onDragLeave(e));
    if (_onDragOverSet)
      _onDragOverSub = ele.onDragOver.listen((e) => onDragOver(e));
    if (_onDragStartSet)
      _onDragStartSub = ele.onDragStart.listen((e) => onDragStart(e));
    if (_onDropSet) _onDropSub = ele.onDrop.listen((e) => onDrop(e));
    if (_onDurationChangeSet)
      _onDurationChangeSub =
          ele.onDurationChange.listen((e) => onDurationChange(e));
    if (_onEmptiedSet)
      _onEmptiedSub = ele.onEmptied.listen((e) => onEmptied(e));
    if (_onEndedSet) _onEndedSub = ele.onEnded.listen((e) => onEnded(e));
    if (_onErrorSet) _onErrorSub = ele.onError.listen((e) => onError(e));
    if (_onFocusSet) _onFocusSub = ele.onFocus.listen((e) => onFocus(e));
    if (_onInputSet) _onInputSub = ele.onInput.listen((e) => onInput(e));
    if (_onInvalidSet)
      _onInvalidSub = ele.onInvalid.listen((e) => onInvalid(e));
    if (_onKeyDownSet)
      _onKeyDownSub = ele.onKeyDown.listen((e) => onKeyDown(e));
    if (_onKeyPressSet)
      _onKeyPressSub = ele.onKeyPress.listen((e) => onKeyPress(e));
    if (_onKeyUpSet) _onKeyUpSub = ele.onKeyUp.listen((e) => onKeyUp(e));
    if (_onLoadSet) _onLoadSub = ele.onLoad.listen((e) => onLoad(e));
    if (_onLoadedDataSet)
      _onLoadedDataSub = ele.onLoadedData.listen((e) => onLoadedData(e));
    if (_onLoadedMetadataSet)
      _onLoadedMetadataSub =
          ele.onLoadedMetadata.listen((e) => onLoadedMetadata(e));
    if (_onMouseDownSet)
      _onMouseDownSub = ele.onMouseDown.listen((e) => onMouseDown(e));
    if (_onMouseEnterSet)
      _onMouseEnterSub = ele.onMouseEnter.listen((e) => onMouseEnter(e));
    if (_onMouseLeaveSet)
      _onMouseLeaveSub = ele.onMouseLeave.listen((e) => onMouseLeave(e));
    if (_onMouseMoveSet)
      _onMouseMoveSub = ele.onMouseMove.listen((e) => onMouseMove(e));
    if (_onMouseOutSet)
      _onMouseOutSub = ele.onMouseOut.listen((e) => onMouseOut(e));
    if (_onMouseOverSet)
      _onMouseOverSub = ele.onMouseOver.listen((e) => onMouseOver(e));
    if (_onMouseUpSet)
      _onMouseUpSub = ele.onMouseUp.listen((e) => onMouseUp(e));
    if (_onMouseWheelSet)
      _onMouseWheelSub = ele.onMouseWheel.listen((e) => onMouseWheel(e));
    if (_onPasteSet) _onPasteSub = ele.onPaste.listen((e) => onPaste(e));
    if (_onPauseSet) _onPauseSub = ele.onPause.listen((e) => onPause(e));
    if (_onPlaySet) _onPlaySub = ele.onPlay.listen((e) => onPlay(e));
    if (_onPlayingSet)
      _onPlayingSub = ele.onPlaying.listen((e) => onPlaying(e));
    if (_onRateChangeSet)
      _onRateChangeSub = ele.onRateChange.listen((e) => onRateChange(e));
    if (_onResetSet) _onResetSub = ele.onReset.listen((e) => onReset(e));
    if (_onResizeSet) _onResizeSub = ele.onResize.listen((e) => onResize(e));
    if (_onScrollSet) _onScrollSub = ele.onScroll.listen((e) => onScroll(e));
    if (_onSearchSet) _onSearchSub = ele.onSearch.listen((e) => onSearch(e));
    if (_onSeekedSet) _onSeekedSub = ele.onSeeked.listen((e) => onSeeked(e));
    if (_onSeekingSet)
      _onSeekingSub = ele.onSeeking.listen((e) => onSeeking(e));
    if (_onSelectSet) _onSelectSub = ele.onSelect.listen((e) => onSelect(e));
    if (_onSelectStartSet)
      _onSelectStartSub = ele.onSelectStart.listen((e) => onSelectStart(e));
    if (_onStalledSet)
      _onStalledSub = ele.onStalled.listen((e) => onStalled(e));
    if (_onSubmitSet) _onSubmitSub = ele.onSubmit.listen((e) => onSubmit(e));
    if (_onSuspendSet)
      _onSuspendSub = ele.onSuspend.listen((e) => onSuspend(e));
    if (_onTimeUpdateSet)
      _onTimeUpdateSub = ele.onTimeUpdate.listen((e) => onTimeUpdate(e));
    if (_onTouchCancelSet)
      _onTouchCancelSub = ele.onTouchCancel.listen((e) => onTouchCancel(e));
    if (_onTouchEndSet)
      _onTouchEndSub = ele.onTouchEnd.listen((e) => onTouchEnd(e));
    if (_onTouchEnterSet)
      _onTouchEnterSub = ele.onTouchEnter.listen((e) => onTouchEnter(e));
    if (_onTouchLeaveSet)
      _onTouchLeaveSub = ele.onTouchLeave.listen((e) => onTouchLeave(e));
    if (_onTouchMoveSet)
      _onTouchMoveSub = ele.onTouchMove.listen((e) => onTouchMove(e));
    if (_onTouchStartSet)
      _onTouchStartSub = ele.onTouchStart.listen((e) => onTouchStart(e));
    if (_onTransitionEndSet)
      _onTransitionEndSub =
          ele.onTransitionEnd.listen((e) => onTransitionEnd(e));
    if (_onVolumeChangeSet)
      _onVolumeChangeSub = ele.onVolumeChange.listen((e) => onVolumeChange(e));
    if (_onWaitingSet)
      _onWaitingSub = ele.onWaiting.listen((e) => onWaiting(e));
    if (_onFullscreenChangeSet)
      _onFullscreenChangeSub =
          ele.onFullscreenChange.listen((e) => onFullscreenChange(e));
    if (_onFullscreenErrorSet)
      _onFullscreenErrorSub =
          ele.onFullscreenError.listen((e) => onFullscreenError(e));
  }

  void updateEventListenersToElement(VElement prev, Element ele) {
    if (_onAbortSet) {
      if (!prev._onAbortSet) {
        prev._onAbort = _onAbort;
        prev._onAbortSub = ele.onAbort.listen((e) => onAbort(e));
      } else if (prev.onAbort != onAbort) {
        prev._onAbort = _onAbort;
      }
    } else if (prev._onAbortSet) {
      prev._onAbortSub.cancel();
      prev._onAbortSub = null;
      prev._onAbortSet = false;
    }
    if (_onBeforeCopySet) {
      if (!prev._onBeforeCopySet) {
        prev._onBeforeCopy = _onBeforeCopy;
        prev._onBeforeCopySub = ele.onBeforeCopy.listen((e) => onBeforeCopy(e));
      } else if (prev.onBeforeCopy != onBeforeCopy) {
        prev._onBeforeCopy = _onBeforeCopy;
      }
    } else if (prev._onBeforeCopySet) {
      prev._onBeforeCopySub.cancel();
      prev._onBeforeCopySub = null;
      prev._onBeforeCopySet = false;
    }
    if (_onBeforeCutSet) {
      if (!prev._onBeforeCutSet) {
        prev._onBeforeCut = _onBeforeCut;
        prev._onBeforeCutSub = ele.onBeforeCut.listen((e) => onBeforeCut(e));
      } else if (prev.onBeforeCut != onBeforeCut) {
        prev._onBeforeCut = _onBeforeCut;
      }
    } else if (prev._onBeforeCutSet) {
      prev._onBeforeCutSub.cancel();
      prev._onBeforeCutSub = null;
      prev._onBeforeCutSet = false;
    }
    if (_onBeforePasteSet) {
      if (!prev._onBeforePasteSet) {
        prev._onBeforePaste = _onBeforePaste;
        prev._onBeforePasteSub =
            ele.onBeforePaste.listen((e) => onBeforePaste(e));
      } else if (prev.onBeforePaste != onBeforePaste) {
        prev._onBeforePaste = _onBeforePaste;
      }
    } else if (prev._onBeforePasteSet) {
      prev._onBeforePasteSub.cancel();
      prev._onBeforePasteSub = null;
      prev._onBeforePasteSet = false;
    }
    if (_onBlurSet) {
      if (!prev._onBlurSet) {
        prev._onBlur = _onBlur;
        prev._onBlurSub = ele.onBlur.listen((e) => onBlur(e));
      } else if (prev.onBlur != onBlur) {
        prev._onBlur = _onBlur;
      }
    } else if (prev._onBlurSet) {
      prev._onBlurSub.cancel();
      prev._onBlurSub = null;
      prev._onBlurSet = false;
    }
    if (_onCanPlaySet) {
      if (!prev._onCanPlaySet) {
        prev._onCanPlay = _onCanPlay;
        prev._onCanPlaySub = ele.onCanPlay.listen((e) => onCanPlay(e));
      } else if (prev.onCanPlay != onCanPlay) {
        prev._onCanPlay = _onCanPlay;
      }
    } else if (prev._onCanPlaySet) {
      prev._onCanPlaySub.cancel();
      prev._onCanPlaySub = null;
      prev._onCanPlaySet = false;
    }
    if (_onCanPlayThroughSet) {
      if (!prev._onCanPlayThroughSet) {
        prev._onCanPlayThrough = _onCanPlayThrough;
        prev._onCanPlayThroughSub =
            ele.onCanPlayThrough.listen((e) => onCanPlayThrough(e));
      } else if (prev.onCanPlayThrough != onCanPlayThrough) {
        prev._onCanPlayThrough = _onCanPlayThrough;
      }
    } else if (prev._onCanPlayThroughSet) {
      prev._onCanPlayThroughSub.cancel();
      prev._onCanPlayThroughSub = null;
      prev._onCanPlayThroughSet = false;
    }
    if (_onChangeSet) {
      if (!prev._onChangeSet) {
        prev._onChange = _onChange;
        prev._onChangeSub = ele.onChange.listen((e) => onChange(e));
      } else if (prev.onChange != onChange) {
        prev._onChange = _onChange;
      }
    } else if (prev._onChangeSet) {
      prev._onChangeSub.cancel();
      prev._onChangeSub = null;
      prev._onChangeSet = false;
    }
    if (_onClickSet) {
      if (!prev._onClickSet) {
        prev._onClick = _onClick;
        prev._onClickSub = ele.onClick.listen((e) => onClick(e));
      } else if (prev.onClick != onClick) {
        prev._onClick = _onClick;
      }
    } else if (prev._onClickSet) {
      prev._onClickSub.cancel();
      prev._onClickSub = null;
      prev._onClickSet = false;
    }
    if (_onContextMenuSet) {
      if (!prev._onContextMenuSet) {
        prev._onContextMenu = _onContextMenu;
        prev._onContextMenuSub =
            ele.onContextMenu.listen((e) => onContextMenu(e));
      } else if (prev.onContextMenu != onContextMenu) {
        prev._onContextMenu = _onContextMenu;
      }
    } else if (prev._onContextMenuSet) {
      prev._onContextMenuSub.cancel();
      prev._onContextMenuSub = null;
      prev._onContextMenuSet = false;
    }
    if (_onCopySet) {
      if (!prev._onCopySet) {
        prev._onCopy = _onCopy;
        prev._onCopySub = ele.onCopy.listen((e) => onCopy(e));
      } else if (prev.onCopy != onCopy) {
        prev._onCopy = _onCopy;
      }
    } else if (prev._onCopySet) {
      prev._onCopySub.cancel();
      prev._onCopySub = null;
      prev._onCopySet = false;
    }
    if (_onCutSet) {
      if (!prev._onCutSet) {
        prev._onCut = _onCut;
        prev._onCutSub = ele.onCut.listen((e) => onCut(e));
      } else if (prev.onCut != onCut) {
        prev._onCut = _onCut;
      }
    } else if (prev._onCutSet) {
      prev._onCutSub.cancel();
      prev._onCutSub = null;
      prev._onCutSet = false;
    }
    if (_onDoubleClickSet) {
      if (!prev._onDoubleClickSet) {
        prev._onDoubleClick = _onDoubleClick;
        prev._onDoubleClickSub =
            ele.onDoubleClick.listen((e) => onDoubleClick(e));
      } else if (prev.onDoubleClick != onDoubleClick) {
        prev._onDoubleClick = _onDoubleClick;
      }
    } else if (prev._onDoubleClickSet) {
      prev._onDoubleClickSub.cancel();
      prev._onDoubleClickSub = null;
      prev._onDoubleClickSet = false;
    }
    if (_onDragSet) {
      if (!prev._onDragSet) {
        prev._onDrag = _onDrag;
        prev._onDragSub = ele.onDrag.listen((e) => onDrag(e));
      } else if (prev.onDrag != onDrag) {
        prev._onDrag = _onDrag;
      }
    } else if (prev._onDragSet) {
      prev._onDragSub.cancel();
      prev._onDragSub = null;
      prev._onDragSet = false;
    }
    if (_onDragEndSet) {
      if (!prev._onDragEndSet) {
        prev._onDragEnd = _onDragEnd;
        prev._onDragEndSub = ele.onDragEnd.listen((e) => onDragEnd(e));
      } else if (prev.onDragEnd != onDragEnd) {
        prev._onDragEnd = _onDragEnd;
      }
    } else if (prev._onDragEndSet) {
      prev._onDragEndSub.cancel();
      prev._onDragEndSub = null;
      prev._onDragEndSet = false;
    }
    if (_onDragEnterSet) {
      if (!prev._onDragEnterSet) {
        prev._onDragEnter = _onDragEnter;
        prev._onDragEnterSub = ele.onDragEnter.listen((e) => onDragEnter(e));
      } else if (prev.onDragEnter != onDragEnter) {
        prev._onDragEnter = _onDragEnter;
      }
    } else if (prev._onDragEnterSet) {
      prev._onDragEnterSub.cancel();
      prev._onDragEnterSub = null;
      prev._onDragEnterSet = false;
    }
    if (_onDragLeaveSet) {
      if (!prev._onDragLeaveSet) {
        prev._onDragLeave = _onDragLeave;
        prev._onDragLeaveSub = ele.onDragLeave.listen((e) => onDragLeave(e));
      } else if (prev.onDragLeave != onDragLeave) {
        prev._onDragLeave = _onDragLeave;
      }
    } else if (prev._onDragLeaveSet) {
      prev._onDragLeaveSub.cancel();
      prev._onDragLeaveSub = null;
      prev._onDragLeaveSet = false;
    }
    if (_onDragOverSet) {
      if (!prev._onDragOverSet) {
        prev._onDragOver = _onDragOver;
        prev._onDragOverSub = ele.onDragOver.listen((e) => onDragOver(e));
      } else if (prev.onDragOver != onDragOver) {
        prev._onDragOver = _onDragOver;
      }
    } else if (prev._onDragOverSet) {
      prev._onDragOverSub.cancel();
      prev._onDragOverSub = null;
      prev._onDragOverSet = false;
    }
    if (_onDragStartSet) {
      if (!prev._onDragStartSet) {
        prev._onDragStart = _onDragStart;
        prev._onDragStartSub = ele.onDragStart.listen((e) => onDragStart(e));
      } else if (prev.onDragStart != onDragStart) {
        prev._onDragStart = _onDragStart;
      }
    } else if (prev._onDragStartSet) {
      prev._onDragStartSub.cancel();
      prev._onDragStartSub = null;
      prev._onDragStartSet = false;
    }
    if (_onDropSet) {
      if (!prev._onDropSet) {
        prev._onDrop = _onDrop;
        prev._onDropSub = ele.onDrop.listen((e) => onDrop(e));
      } else if (prev.onDrop != onDrop) {
        prev._onDrop = _onDrop;
      }
    } else if (prev._onDropSet) {
      prev._onDropSub.cancel();
      prev._onDropSub = null;
      prev._onDropSet = false;
    }
    if (_onDurationChangeSet) {
      if (!prev._onDurationChangeSet) {
        prev._onDurationChange = _onDurationChange;
        prev._onDurationChangeSub =
            ele.onDurationChange.listen((e) => onDurationChange(e));
      } else if (prev.onDurationChange != onDurationChange) {
        prev._onDurationChange = _onDurationChange;
      }
    } else if (prev._onDurationChangeSet) {
      prev._onDurationChangeSub.cancel();
      prev._onDurationChangeSub = null;
      prev._onDurationChangeSet = false;
    }
    if (_onEmptiedSet) {
      if (!prev._onEmptiedSet) {
        prev._onEmptied = _onEmptied;
        prev._onEmptiedSub = ele.onEmptied.listen((e) => onEmptied(e));
      } else if (prev.onEmptied != onEmptied) {
        prev._onEmptied = _onEmptied;
      }
    } else if (prev._onEmptiedSet) {
      prev._onEmptiedSub.cancel();
      prev._onEmptiedSub = null;
      prev._onEmptiedSet = false;
    }
    if (_onEndedSet) {
      if (!prev._onEndedSet) {
        prev._onEnded = _onEnded;
        prev._onEndedSub = ele.onEnded.listen((e) => onEnded(e));
      } else if (prev.onEnded != onEnded) {
        prev._onEnded = _onEnded;
      }
    } else if (prev._onEndedSet) {
      prev._onEndedSub.cancel();
      prev._onEndedSub = null;
      prev._onEndedSet = false;
    }
    if (_onErrorSet) {
      if (!prev._onErrorSet) {
        prev._onError = _onError;
        prev._onErrorSub = ele.onError.listen((e) => onError(e));
      } else if (prev.onError != onError) {
        prev._onError = _onError;
      }
    } else if (prev._onErrorSet) {
      prev._onErrorSub.cancel();
      prev._onErrorSub = null;
      prev._onErrorSet = false;
    }
    if (_onFocusSet) {
      if (!prev._onFocusSet) {
        prev._onFocus = _onFocus;
        prev._onFocusSub = ele.onFocus.listen((e) => onFocus(e));
      } else if (prev.onFocus != onFocus) {
        prev._onFocus = _onFocus;
      }
    } else if (prev._onFocusSet) {
      prev._onFocusSub.cancel();
      prev._onFocusSub = null;
      prev._onFocusSet = false;
    }
    if (_onInputSet) {
      if (!prev._onInputSet) {
        prev._onInput = _onInput;
        prev._onInputSub = ele.onInput.listen((e) => onInput(e));
      } else if (prev.onInput != onInput) {
        prev._onInput = _onInput;
      }
    } else if (prev._onInputSet) {
      prev._onInputSub.cancel();
      prev._onInputSub = null;
      prev._onInputSet = false;
    }
    if (_onInvalidSet) {
      if (!prev._onInvalidSet) {
        prev._onInvalid = _onInvalid;
        prev._onInvalidSub = ele.onInvalid.listen((e) => onInvalid(e));
      } else if (prev.onInvalid != onInvalid) {
        prev._onInvalid = _onInvalid;
      }
    } else if (prev._onInvalidSet) {
      prev._onInvalidSub.cancel();
      prev._onInvalidSub = null;
      prev._onInvalidSet = false;
    }
    if (_onKeyDownSet) {
      if (!prev._onKeyDownSet) {
        prev._onKeyDown = _onKeyDown;
        prev._onKeyDownSub = ele.onKeyDown.listen((e) => onKeyDown(e));
      } else if (prev.onKeyDown != onKeyDown) {
        prev._onKeyDown = _onKeyDown;
      }
    } else if (prev._onKeyDownSet) {
      prev._onKeyDownSub.cancel();
      prev._onKeyDownSub = null;
      prev._onKeyDownSet = false;
    }
    if (_onKeyPressSet) {
      if (!prev._onKeyPressSet) {
        prev._onKeyPress = _onKeyPress;
        prev._onKeyPressSub = ele.onKeyPress.listen((e) => onKeyPress(e));
      } else if (prev.onKeyPress != onKeyPress) {
        prev._onKeyPress = _onKeyPress;
      }
    } else if (prev._onKeyPressSet) {
      prev._onKeyPressSub.cancel();
      prev._onKeyPressSub = null;
      prev._onKeyPressSet = false;
    }
    if (_onKeyUpSet) {
      if (!prev._onKeyUpSet) {
        prev._onKeyUp = _onKeyUp;
        prev._onKeyUpSub = ele.onKeyUp.listen((e) => onKeyUp(e));
      } else if (prev.onKeyUp != onKeyUp) {
        prev._onKeyUp = _onKeyUp;
      }
    } else if (prev._onKeyUpSet) {
      prev._onKeyUpSub.cancel();
      prev._onKeyUpSub = null;
      prev._onKeyUpSet = false;
    }
    if (_onLoadSet) {
      if (!prev._onLoadSet) {
        prev._onLoad = _onLoad;
        prev._onLoadSub = ele.onLoad.listen((e) => onLoad(e));
      } else if (prev.onLoad != onLoad) {
        prev._onLoad = _onLoad;
      }
    } else if (prev._onLoadSet) {
      prev._onLoadSub.cancel();
      prev._onLoadSub = null;
      prev._onLoadSet = false;
    }
    if (_onLoadedDataSet) {
      if (!prev._onLoadedDataSet) {
        prev._onLoadedData = _onLoadedData;
        prev._onLoadedDataSub = ele.onLoadedData.listen((e) => onLoadedData(e));
      } else if (prev.onLoadedData != onLoadedData) {
        prev._onLoadedData = _onLoadedData;
      }
    } else if (prev._onLoadedDataSet) {
      prev._onLoadedDataSub.cancel();
      prev._onLoadedDataSub = null;
      prev._onLoadedDataSet = false;
    }
    if (_onLoadedMetadataSet) {
      if (!prev._onLoadedMetadataSet) {
        prev._onLoadedMetadata = _onLoadedMetadata;
        prev._onLoadedMetadataSub =
            ele.onLoadedMetadata.listen((e) => onLoadedMetadata(e));
      } else if (prev.onLoadedMetadata != onLoadedMetadata) {
        prev._onLoadedMetadata = _onLoadedMetadata;
      }
    } else if (prev._onLoadedMetadataSet) {
      prev._onLoadedMetadataSub.cancel();
      prev._onLoadedMetadataSub = null;
      prev._onLoadedMetadataSet = false;
    }
    if (_onMouseDownSet) {
      if (!prev._onMouseDownSet) {
        prev._onMouseDown = _onMouseDown;
        prev._onMouseDownSub = ele.onMouseDown.listen((e) => onMouseDown(e));
      } else if (prev.onMouseDown != onMouseDown) {
        prev._onMouseDown = _onMouseDown;
      }
    } else if (prev._onMouseDownSet) {
      prev._onMouseDownSub.cancel();
      prev._onMouseDownSub = null;
      prev._onMouseDownSet = false;
    }
    if (_onMouseEnterSet) {
      if (!prev._onMouseEnterSet) {
        prev._onMouseEnter = _onMouseEnter;
        prev._onMouseEnterSub = ele.onMouseEnter.listen((e) => onMouseEnter(e));
      } else if (prev.onMouseEnter != onMouseEnter) {
        prev._onMouseEnter = _onMouseEnter;
      }
    } else if (prev._onMouseEnterSet) {
      prev._onMouseEnterSub.cancel();
      prev._onMouseEnterSub = null;
      prev._onMouseEnterSet = false;
    }
    if (_onMouseLeaveSet) {
      if (!prev._onMouseLeaveSet) {
        prev._onMouseLeave = _onMouseLeave;
        prev._onMouseLeaveSub = ele.onMouseLeave.listen((e) => onMouseLeave(e));
      } else if (prev.onMouseLeave != onMouseLeave) {
        prev._onMouseLeave = _onMouseLeave;
      }
    } else if (prev._onMouseLeaveSet) {
      prev._onMouseLeaveSub.cancel();
      prev._onMouseLeaveSub = null;
      prev._onMouseLeaveSet = false;
    }
    if (_onMouseMoveSet) {
      if (!prev._onMouseMoveSet) {
        prev._onMouseMove = _onMouseMove;
        prev._onMouseMoveSub = ele.onMouseMove.listen((e) => onMouseMove(e));
      } else if (prev.onMouseMove != onMouseMove) {
        prev._onMouseMove = _onMouseMove;
      }
    } else if (prev._onMouseMoveSet) {
      prev._onMouseMoveSub.cancel();
      prev._onMouseMoveSub = null;
      prev._onMouseMoveSet = false;
    }
    if (_onMouseOutSet) {
      if (!prev._onMouseOutSet) {
        prev._onMouseOut = _onMouseOut;
        prev._onMouseOutSub = ele.onMouseOut.listen((e) => onMouseOut(e));
      } else if (prev.onMouseOut != onMouseOut) {
        prev._onMouseOut = _onMouseOut;
      }
    } else if (prev._onMouseOutSet) {
      prev._onMouseOutSub.cancel();
      prev._onMouseOutSub = null;
      prev._onMouseOutSet = false;
    }
    if (_onMouseOverSet) {
      if (!prev._onMouseOverSet) {
        prev._onMouseOver = _onMouseOver;
        prev._onMouseOverSub = ele.onMouseOver.listen((e) => onMouseOver(e));
      } else if (prev.onMouseOver != onMouseOver) {
        prev._onMouseOver = _onMouseOver;
      }
    } else if (prev._onMouseOverSet) {
      prev._onMouseOverSub.cancel();
      prev._onMouseOverSub = null;
      prev._onMouseOverSet = false;
    }
    if (_onMouseUpSet) {
      if (!prev._onMouseUpSet) {
        prev._onMouseUp = _onMouseUp;
        prev._onMouseUpSub = ele.onMouseUp.listen((e) => onMouseUp(e));
      } else if (prev.onMouseUp != onMouseUp) {
        prev._onMouseUp = _onMouseUp;
      }
    } else if (prev._onMouseUpSet) {
      prev._onMouseUpSub.cancel();
      prev._onMouseUpSub = null;
      prev._onMouseUpSet = false;
    }
    if (_onMouseWheelSet) {
      if (!prev._onMouseWheelSet) {
        prev._onMouseWheel = _onMouseWheel;
        prev._onMouseWheelSub = ele.onMouseWheel.listen((e) => onMouseWheel(e));
      } else if (prev.onMouseWheel != onMouseWheel) {
        prev._onMouseWheel = _onMouseWheel;
      }
    } else if (prev._onMouseWheelSet) {
      prev._onMouseWheelSub.cancel();
      prev._onMouseWheelSub = null;
      prev._onMouseWheelSet = false;
    }
    if (_onPasteSet) {
      if (!prev._onPasteSet) {
        prev._onPaste = _onPaste;
        prev._onPasteSub = ele.onPaste.listen((e) => onPaste(e));
      } else if (prev.onPaste != onPaste) {
        prev._onPaste = _onPaste;
      }
    } else if (prev._onPasteSet) {
      prev._onPasteSub.cancel();
      prev._onPasteSub = null;
      prev._onPasteSet = false;
    }
    if (_onPauseSet) {
      if (!prev._onPauseSet) {
        prev._onPause = _onPause;
        prev._onPauseSub = ele.onPause.listen((e) => onPause(e));
      } else if (prev.onPause != onPause) {
        prev._onPause = _onPause;
      }
    } else if (prev._onPauseSet) {
      prev._onPauseSub.cancel();
      prev._onPauseSub = null;
      prev._onPauseSet = false;
    }
    if (_onPlaySet) {
      if (!prev._onPlaySet) {
        prev._onPlay = _onPlay;
        prev._onPlaySub = ele.onPlay.listen((e) => onPlay(e));
      } else if (prev.onPlay != onPlay) {
        prev._onPlay = _onPlay;
      }
    } else if (prev._onPlaySet) {
      prev._onPlaySub.cancel();
      prev._onPlaySub = null;
      prev._onPlaySet = false;
    }
    if (_onPlayingSet) {
      if (!prev._onPlayingSet) {
        prev._onPlaying = _onPlaying;
        prev._onPlayingSub = ele.onPlaying.listen((e) => onPlaying(e));
      } else if (prev.onPlaying != onPlaying) {
        prev._onPlaying = _onPlaying;
      }
    } else if (prev._onPlayingSet) {
      prev._onPlayingSub.cancel();
      prev._onPlayingSub = null;
      prev._onPlayingSet = false;
    }
    if (_onRateChangeSet) {
      if (!prev._onRateChangeSet) {
        prev._onRateChange = _onRateChange;
        prev._onRateChangeSub = ele.onRateChange.listen((e) => onRateChange(e));
      } else if (prev.onRateChange != onRateChange) {
        prev._onRateChange = _onRateChange;
      }
    } else if (prev._onRateChangeSet) {
      prev._onRateChangeSub.cancel();
      prev._onRateChangeSub = null;
      prev._onRateChangeSet = false;
    }
    if (_onResetSet) {
      if (!prev._onResetSet) {
        prev._onReset = _onReset;
        prev._onResetSub = ele.onReset.listen((e) => onReset(e));
      } else if (prev.onReset != onReset) {
        prev._onReset = _onReset;
      }
    } else if (prev._onResetSet) {
      prev._onResetSub.cancel();
      prev._onResetSub = null;
      prev._onResetSet = false;
    }
    if (_onResizeSet) {
      if (!prev._onResizeSet) {
        prev._onResize = _onResize;
        prev._onResizeSub = ele.onResize.listen((e) => onResize(e));
      } else if (prev.onResize != onResize) {
        prev._onResize = _onResize;
      }
    } else if (prev._onResizeSet) {
      prev._onResizeSub.cancel();
      prev._onResizeSub = null;
      prev._onResizeSet = false;
    }
    if (_onScrollSet) {
      if (!prev._onScrollSet) {
        prev._onScroll = _onScroll;
        prev._onScrollSub = ele.onScroll.listen((e) => onScroll(e));
      } else if (prev.onScroll != onScroll) {
        prev._onScroll = _onScroll;
      }
    } else if (prev._onScrollSet) {
      prev._onScrollSub.cancel();
      prev._onScrollSub = null;
      prev._onScrollSet = false;
    }
    if (_onSearchSet) {
      if (!prev._onSearchSet) {
        prev._onSearch = _onSearch;
        prev._onSearchSub = ele.onSearch.listen((e) => onSearch(e));
      } else if (prev.onSearch != onSearch) {
        prev._onSearch = _onSearch;
      }
    } else if (prev._onSearchSet) {
      prev._onSearchSub.cancel();
      prev._onSearchSub = null;
      prev._onSearchSet = false;
    }
    if (_onSeekedSet) {
      if (!prev._onSeekedSet) {
        prev._onSeeked = _onSeeked;
        prev._onSeekedSub = ele.onSeeked.listen((e) => onSeeked(e));
      } else if (prev.onSeeked != onSeeked) {
        prev._onSeeked = _onSeeked;
      }
    } else if (prev._onSeekedSet) {
      prev._onSeekedSub.cancel();
      prev._onSeekedSub = null;
      prev._onSeekedSet = false;
    }
    if (_onSeekingSet) {
      if (!prev._onSeekingSet) {
        prev._onSeeking = _onSeeking;
        prev._onSeekingSub = ele.onSeeking.listen((e) => onSeeking(e));
      } else if (prev.onSeeking != onSeeking) {
        prev._onSeeking = _onSeeking;
      }
    } else if (prev._onSeekingSet) {
      prev._onSeekingSub.cancel();
      prev._onSeekingSub = null;
      prev._onSeekingSet = false;
    }
    if (_onSelectSet) {
      if (!prev._onSelectSet) {
        prev._onSelect = _onSelect;
        prev._onSelectSub = ele.onSelect.listen((e) => onSelect(e));
      } else if (prev.onSelect != onSelect) {
        prev._onSelect = _onSelect;
      }
    } else if (prev._onSelectSet) {
      prev._onSelectSub.cancel();
      prev._onSelectSub = null;
      prev._onSelectSet = false;
    }
    if (_onSelectStartSet) {
      if (!prev._onSelectStartSet) {
        prev._onSelectStart = _onSelectStart;
        prev._onSelectStartSub =
            ele.onSelectStart.listen((e) => onSelectStart(e));
      } else if (prev.onSelectStart != onSelectStart) {
        prev._onSelectStart = _onSelectStart;
      }
    } else if (prev._onSelectStartSet) {
      prev._onSelectStartSub.cancel();
      prev._onSelectStartSub = null;
      prev._onSelectStartSet = false;
    }
    if (_onStalledSet) {
      if (!prev._onStalledSet) {
        prev._onStalled = _onStalled;
        prev._onStalledSub = ele.onStalled.listen((e) => onStalled(e));
      } else if (prev.onStalled != onStalled) {
        prev._onStalled = _onStalled;
      }
    } else if (prev._onStalledSet) {
      prev._onStalledSub.cancel();
      prev._onStalledSub = null;
      prev._onStalledSet = false;
    }
    if (_onSubmitSet) {
      if (!prev._onSubmitSet) {
        prev._onSubmit = _onSubmit;
        prev._onSubmitSub = ele.onSubmit.listen((e) => onSubmit(e));
      } else if (prev.onSubmit != onSubmit) {
        prev._onSubmit = _onSubmit;
      }
    } else if (prev._onSubmitSet) {
      prev._onSubmitSub.cancel();
      prev._onSubmitSub = null;
      prev._onSubmitSet = false;
    }
    if (_onSuspendSet) {
      if (!prev._onSuspendSet) {
        prev._onSuspend = _onSuspend;
        prev._onSuspendSub = ele.onSuspend.listen((e) => onSuspend(e));
      } else if (prev.onSuspend != onSuspend) {
        prev._onSuspend = _onSuspend;
      }
    } else if (prev._onSuspendSet) {
      prev._onSuspendSub.cancel();
      prev._onSuspendSub = null;
      prev._onSuspendSet = false;
    }
    if (_onTimeUpdateSet) {
      if (!prev._onTimeUpdateSet) {
        prev._onTimeUpdate = _onTimeUpdate;
        prev._onTimeUpdateSub = ele.onTimeUpdate.listen((e) => onTimeUpdate(e));
      } else if (prev.onTimeUpdate != onTimeUpdate) {
        prev._onTimeUpdate = _onTimeUpdate;
      }
    } else if (prev._onTimeUpdateSet) {
      prev._onTimeUpdateSub.cancel();
      prev._onTimeUpdateSub = null;
      prev._onTimeUpdateSet = false;
    }
    if (_onTouchCancelSet) {
      if (!prev._onTouchCancelSet) {
        prev._onTouchCancel = _onTouchCancel;
        prev._onTouchCancelSub =
            ele.onTouchCancel.listen((e) => onTouchCancel(e));
      } else if (prev.onTouchCancel != onTouchCancel) {
        prev._onTouchCancel = _onTouchCancel;
      }
    } else if (prev._onTouchCancelSet) {
      prev._onTouchCancelSub.cancel();
      prev._onTouchCancelSub = null;
      prev._onTouchCancelSet = false;
    }
    if (_onTouchEndSet) {
      if (!prev._onTouchEndSet) {
        prev._onTouchEnd = _onTouchEnd;
        prev._onTouchEndSub = ele.onTouchEnd.listen((e) => onTouchEnd(e));
      } else if (prev.onTouchEnd != onTouchEnd) {
        prev._onTouchEnd = _onTouchEnd;
      }
    } else if (prev._onTouchEndSet) {
      prev._onTouchEndSub.cancel();
      prev._onTouchEndSub = null;
      prev._onTouchEndSet = false;
    }
    if (_onTouchEnterSet) {
      if (!prev._onTouchEnterSet) {
        prev._onTouchEnter = _onTouchEnter;
        prev._onTouchEnterSub = ele.onTouchEnter.listen((e) => onTouchEnter(e));
      } else if (prev.onTouchEnter != onTouchEnter) {
        prev._onTouchEnter = _onTouchEnter;
      }
    } else if (prev._onTouchEnterSet) {
      prev._onTouchEnterSub.cancel();
      prev._onTouchEnterSub = null;
      prev._onTouchEnterSet = false;
    }
    if (_onTouchLeaveSet) {
      if (!prev._onTouchLeaveSet) {
        prev._onTouchLeave = _onTouchLeave;
        prev._onTouchLeaveSub = ele.onTouchLeave.listen((e) => onTouchLeave(e));
      } else if (prev.onTouchLeave != onTouchLeave) {
        prev._onTouchLeave = _onTouchLeave;
      }
    } else if (prev._onTouchLeaveSet) {
      prev._onTouchLeaveSub.cancel();
      prev._onTouchLeaveSub = null;
      prev._onTouchLeaveSet = false;
    }
    if (_onTouchMoveSet) {
      if (!prev._onTouchMoveSet) {
        prev._onTouchMove = _onTouchMove;
        prev._onTouchMoveSub = ele.onTouchMove.listen((e) => onTouchMove(e));
      } else if (prev.onTouchMove != onTouchMove) {
        prev._onTouchMove = _onTouchMove;
      }
    } else if (prev._onTouchMoveSet) {
      prev._onTouchMoveSub.cancel();
      prev._onTouchMoveSub = null;
      prev._onTouchMoveSet = false;
    }
    if (_onTouchStartSet) {
      if (!prev._onTouchStartSet) {
        prev._onTouchStart = _onTouchStart;
        prev._onTouchStartSub = ele.onTouchStart.listen((e) => onTouchStart(e));
      } else if (prev.onTouchStart != onTouchStart) {
        prev._onTouchStart = _onTouchStart;
      }
    } else if (prev._onTouchStartSet) {
      prev._onTouchStartSub.cancel();
      prev._onTouchStartSub = null;
      prev._onTouchStartSet = false;
    }
    if (_onTransitionEndSet) {
      if (!prev._onTransitionEndSet) {
        prev._onTransitionEnd = _onTransitionEnd;
        prev._onTransitionEndSub =
            ele.onTransitionEnd.listen((e) => onTransitionEnd(e));
      } else if (prev.onTransitionEnd != onTransitionEnd) {
        prev._onTransitionEnd = _onTransitionEnd;
      }
    } else if (prev._onTransitionEndSet) {
      prev._onTransitionEndSub.cancel();
      prev._onTransitionEndSub = null;
      prev._onTransitionEndSet = false;
    }
    if (_onVolumeChangeSet) {
      if (!prev._onVolumeChangeSet) {
        prev._onVolumeChange = _onVolumeChange;
        prev._onVolumeChangeSub =
            ele.onVolumeChange.listen((e) => onVolumeChange(e));
      } else if (prev.onVolumeChange != onVolumeChange) {
        prev._onVolumeChange = _onVolumeChange;
      }
    } else if (prev._onVolumeChangeSet) {
      prev._onVolumeChangeSub.cancel();
      prev._onVolumeChangeSub = null;
      prev._onVolumeChangeSet = false;
    }
    if (_onWaitingSet) {
      if (!prev._onWaitingSet) {
        prev._onWaiting = _onWaiting;
        prev._onWaitingSub = ele.onWaiting.listen((e) => onWaiting(e));
      } else if (prev.onWaiting != onWaiting) {
        prev._onWaiting = _onWaiting;
      }
    } else if (prev._onWaitingSet) {
      prev._onWaitingSub.cancel();
      prev._onWaitingSub = null;
      prev._onWaitingSet = false;
    }
    if (_onFullscreenChangeSet) {
      if (!prev._onFullscreenChangeSet) {
        prev._onFullscreenChange = _onFullscreenChange;
        prev._onFullscreenChangeSub =
            ele.onFullscreenChange.listen((e) => onFullscreenChange(e));
      } else if (prev.onFullscreenChange != onFullscreenChange) {
        prev._onFullscreenChange = _onFullscreenChange;
      }
    } else if (prev._onFullscreenChangeSet) {
      prev._onFullscreenChangeSub.cancel();
      prev._onFullscreenChangeSub = null;
      prev._onFullscreenChangeSet = false;
    }
    if (_onFullscreenErrorSet) {
      if (!prev._onFullscreenErrorSet) {
        prev._onFullscreenError = _onFullscreenError;
        prev._onFullscreenErrorSub =
            ele.onFullscreenError.listen((e) => onFullscreenError(e));
      } else if (prev.onFullscreenError != onFullscreenError) {
        prev._onFullscreenError = _onFullscreenError;
      }
    } else if (prev._onFullscreenErrorSet) {
      prev._onFullscreenErrorSub.cancel();
      prev._onFullscreenErrorSub = null;
      prev._onFullscreenErrorSet = false;
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
