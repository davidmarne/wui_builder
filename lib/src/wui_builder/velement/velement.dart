part of velement;
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields

const contentEditableElementAttribute = 0;
const contextMenuElementAttribute = 1;
const dirElementAttribute = 2;
const draggableElementAttribute = 3;
const hiddenElementAttribute = 4;
const langElementAttribute = 5;
const spellcheckElementAttribute = 6;
const tabIndexElementAttribute = 7;
const titleElementAttribute = 8;
const translateElementAttribute = 9;
const dropzoneElementAttribute = 10;
const classNameElementAttribute = 11;
const idElementAttribute = 12;
const slotElementAttribute = 13;
const classesElementAttribute = 14;
const datasetElementAttribute = 15;
const xtagElementAttribute = 16;
const innerHtmlElementAttribute = 17;
const scrollLeftElementAttribute = 18;
const scrollTopElementAttribute = 19;
const textElementAttribute = 20;
const onAbortEvent = 0;
const onBeforeCopyEvent = 1;
const onBeforeCutEvent = 2;
const onBeforePasteEvent = 3;
const onBlurEvent = 4;
const onCanPlayEvent = 5;
const onCanPlayThroughEvent = 6;
const onChangeEvent = 7;
const onClickEvent = 8;
const onContextMenuEvent = 9;
const onCopyEvent = 10;
const onCutEvent = 11;
const onDoubleClickEvent = 12;
const onDragEvent = 13;
const onDragEndEvent = 14;
const onDragEnterEvent = 15;
const onDragLeaveEvent = 16;
const onDragOverEvent = 17;
const onDragStartEvent = 18;
const onDropEvent = 19;
const onDurationChangeEvent = 20;
const onEmptiedEvent = 21;
const onEndedEvent = 22;
const onErrorEvent = 23;
const onFocusEvent = 24;
const onInputEvent = 25;
const onInvalidEvent = 26;
const onKeyDownEvent = 27;
const onKeyPressEvent = 28;
const onKeyUpEvent = 29;
const onLoadEvent = 30;
const onLoadedDataEvent = 31;
const onLoadedMetadataEvent = 32;
const onMouseDownEvent = 33;
const onMouseEnterEvent = 34;
const onMouseLeaveEvent = 35;
const onMouseMoveEvent = 36;
const onMouseOutEvent = 37;
const onMouseOverEvent = 38;
const onMouseUpEvent = 39;
const onMouseWheelEvent = 40;
const onPasteEvent = 41;
const onPauseEvent = 42;
const onPlayEvent = 43;
const onPlayingEvent = 44;
const onRateChangeEvent = 45;
const onResetEvent = 46;
const onResizeEvent = 47;
const onScrollEvent = 48;
const onSearchEvent = 49;
const onSeekedEvent = 50;
const onSeekingEvent = 51;
const onSelectEvent = 52;
const onSelectStartEvent = 53;
const onStalledEvent = 54;
const onSubmitEvent = 55;
const onSuspendEvent = 56;
const onTimeUpdateEvent = 57;
const onTouchCancelEvent = 58;
const onTouchEndEvent = 59;
const onTouchEnterEvent = 60;
const onTouchLeaveEvent = 61;
const onTouchMoveEvent = 62;
const onTouchStartEvent = 63;
const onTransitionEndEvent = 64;
const onVolumeChangeEvent = 65;
const onWaitingEvent = 66;
const onFullscreenChangeEvent = 67;
const onFullscreenErrorEvent = 68;

abstract class VElement<E extends Element> extends VNode {
  @override
  VNodeTypes get vNodeType => VNodeTypes.element;

  var _setValuesElement = <int, dynamic>{};
  var _setSubs = <int, EventHandler>{};
  var _style = <String, String>{};
  var _eventSubs = <int, StreamSubscription>{};
  var attributes = <String, String>{};

  E elementFactory();

  // TODO: gen builder for css style
  StyleBuilder styleBuilder;

  var _children = <VNode>[];
  List<VNode> get children => _children;
  set children(Iterable<VNode> c) {
    _children = c.toList();
  }

  String get text => _setValuesElement[textElementAttribute] as String;
  set text(String v) {
    _setValuesElement[textElementAttribute] = v;
  }

  String get contentEditable =>
      _setValuesElement[contentEditableElementAttribute] as String;
  set contentEditable(String v) {
    _setValuesElement[contentEditableElementAttribute] = v;
  }

  MenuElement get contextMenu =>
      _setValuesElement[contextMenuElementAttribute] as MenuElement;
  set contextMenu(MenuElement v) {
    _setValuesElement[contextMenuElementAttribute] = v;
  }

  String get dir => _setValuesElement[dirElementAttribute] as String;
  set dir(String v) {
    _setValuesElement[dirElementAttribute] = v;
  }

  bool get draggable => _setValuesElement[draggableElementAttribute] as bool;
  set draggable(bool v) {
    _setValuesElement[draggableElementAttribute] = v;
  }

  bool get hidden => _setValuesElement[hiddenElementAttribute] as bool;
  set hidden(bool v) {
    _setValuesElement[hiddenElementAttribute] = v;
  }

  String get lang => _setValuesElement[langElementAttribute] as String;
  set lang(String v) {
    _setValuesElement[langElementAttribute] = v;
  }

  bool get spellcheck => _setValuesElement[spellcheckElementAttribute] as bool;
  set spellcheck(bool v) {
    _setValuesElement[spellcheckElementAttribute] = v;
  }

  int get tabIndex => _setValuesElement[tabIndexElementAttribute] as int;
  set tabIndex(int v) {
    _setValuesElement[tabIndexElementAttribute] = v;
  }

  String get title => _setValuesElement[titleElementAttribute] as String;
  set title(String v) {
    _setValuesElement[titleElementAttribute] = v;
  }

  bool get translate => _setValuesElement[translateElementAttribute] as bool;
  set translate(bool v) {
    _setValuesElement[translateElementAttribute] = v;
  }

  String get dropzone => _setValuesElement[dropzoneElementAttribute] as String;
  set dropzone(String v) {
    _setValuesElement[dropzoneElementAttribute] = v;
  }

  String get className =>
      _setValuesElement[classNameElementAttribute] as String;
  set className(String v) {
    _setValuesElement[classNameElementAttribute] = v;
  }

  String get id => _setValuesElement[idElementAttribute] as String;
  set id(String v) {
    _setValuesElement[idElementAttribute] = v;
  }

  String get slot => _setValuesElement[slotElementAttribute] as String;
  set slot(String v) {
    _setValuesElement[slotElementAttribute] = v;
  }

  Iterable<String> get classes =>
      _setValuesElement[classesElementAttribute] as Iterable<String>;
  set classes(Iterable<String> v) {
    _setValuesElement[classesElementAttribute] = v;
  }

  Map<String, String> get dataset =>
      _setValuesElement[datasetElementAttribute] as Map<String, String>;
  set dataset(Map<String, String> v) {
    _setValuesElement[datasetElementAttribute] = v;
  }

  Element get xtag => _setValuesElement[xtagElementAttribute] as Element;
  set xtag(Element v) {
    _setValuesElement[xtagElementAttribute] = v;
  }

  String get innerHtml =>
      _setValuesElement[innerHtmlElementAttribute] as String;
  set innerHtml(String v) {
    _setValuesElement[innerHtmlElementAttribute] = v;
  }

  int get scrollLeft => _setValuesElement[scrollLeftElementAttribute] as int;
  set scrollLeft(int v) {
    _setValuesElement[scrollLeftElementAttribute] = v;
  }

  int get scrollTop => _setValuesElement[scrollTopElementAttribute] as int;
  set scrollTop(int v) {
    _setValuesElement[scrollTopElementAttribute] = v;
  }

  EventHandler<Event> get onAbort =>
      _setSubs[onAbortEvent] as EventHandler<Event>;
  set onAbort(EventHandler<Event> v) {
    _setSubs[onAbortEvent] = v;
  }

  EventHandler<Event> get onBeforeCopy =>
      _setSubs[onBeforeCopyEvent] as EventHandler<Event>;
  set onBeforeCopy(EventHandler<Event> v) {
    _setSubs[onBeforeCopyEvent] = v;
  }

  EventHandler<Event> get onBeforeCut =>
      _setSubs[onBeforeCutEvent] as EventHandler<Event>;
  set onBeforeCut(EventHandler<Event> v) {
    _setSubs[onBeforeCutEvent] = v;
  }

  EventHandler<Event> get onBeforePaste =>
      _setSubs[onBeforePasteEvent] as EventHandler<Event>;
  set onBeforePaste(EventHandler<Event> v) {
    _setSubs[onBeforePasteEvent] = v;
  }

  EventHandler<Event> get onBlur =>
      _setSubs[onBlurEvent] as EventHandler<Event>;
  set onBlur(EventHandler<Event> v) {
    _setSubs[onBlurEvent] = v;
  }

  EventHandler<Event> get onCanPlay =>
      _setSubs[onCanPlayEvent] as EventHandler<Event>;
  set onCanPlay(EventHandler<Event> v) {
    _setSubs[onCanPlayEvent] = v;
  }

  EventHandler<Event> get onCanPlayThrough =>
      _setSubs[onCanPlayThroughEvent] as EventHandler<Event>;
  set onCanPlayThrough(EventHandler<Event> v) {
    _setSubs[onCanPlayThroughEvent] = v;
  }

  EventHandler<Event> get onChange =>
      _setSubs[onChangeEvent] as EventHandler<Event>;
  set onChange(EventHandler<Event> v) {
    _setSubs[onChangeEvent] = v;
  }

  EventHandler<MouseEvent> get onClick =>
      _setSubs[onClickEvent] as EventHandler<MouseEvent>;
  set onClick(EventHandler<MouseEvent> v) {
    _setSubs[onClickEvent] = v;
  }

  EventHandler<MouseEvent> get onContextMenu =>
      _setSubs[onContextMenuEvent] as EventHandler<MouseEvent>;
  set onContextMenu(EventHandler<MouseEvent> v) {
    _setSubs[onContextMenuEvent] = v;
  }

  EventHandler<ClipboardEvent> get onCopy =>
      _setSubs[onCopyEvent] as EventHandler<ClipboardEvent>;
  set onCopy(EventHandler<ClipboardEvent> v) {
    _setSubs[onCopyEvent] = v;
  }

  EventHandler<ClipboardEvent> get onCut =>
      _setSubs[onCutEvent] as EventHandler<ClipboardEvent>;
  set onCut(EventHandler<ClipboardEvent> v) {
    _setSubs[onCutEvent] = v;
  }

  EventHandler<Event> get onDoubleClick =>
      _setSubs[onDoubleClickEvent] as EventHandler<Event>;
  set onDoubleClick(EventHandler<Event> v) {
    _setSubs[onDoubleClickEvent] = v;
  }

  EventHandler<MouseEvent> get onDrag =>
      _setSubs[onDragEvent] as EventHandler<MouseEvent>;
  set onDrag(EventHandler<MouseEvent> v) {
    _setSubs[onDragEvent] = v;
  }

  EventHandler<MouseEvent> get onDragEnd =>
      _setSubs[onDragEndEvent] as EventHandler<MouseEvent>;
  set onDragEnd(EventHandler<MouseEvent> v) {
    _setSubs[onDragEndEvent] = v;
  }

  EventHandler<MouseEvent> get onDragEnter =>
      _setSubs[onDragEnterEvent] as EventHandler<MouseEvent>;
  set onDragEnter(EventHandler<MouseEvent> v) {
    _setSubs[onDragEnterEvent] = v;
  }

  EventHandler<MouseEvent> get onDragLeave =>
      _setSubs[onDragLeaveEvent] as EventHandler<MouseEvent>;
  set onDragLeave(EventHandler<MouseEvent> v) {
    _setSubs[onDragLeaveEvent] = v;
  }

  EventHandler<MouseEvent> get onDragOver =>
      _setSubs[onDragOverEvent] as EventHandler<MouseEvent>;
  set onDragOver(EventHandler<MouseEvent> v) {
    _setSubs[onDragOverEvent] = v;
  }

  EventHandler<MouseEvent> get onDragStart =>
      _setSubs[onDragStartEvent] as EventHandler<MouseEvent>;
  set onDragStart(EventHandler<MouseEvent> v) {
    _setSubs[onDragStartEvent] = v;
  }

  EventHandler<MouseEvent> get onDrop =>
      _setSubs[onDropEvent] as EventHandler<MouseEvent>;
  set onDrop(EventHandler<MouseEvent> v) {
    _setSubs[onDropEvent] = v;
  }

  EventHandler<Event> get onDurationChange =>
      _setSubs[onDurationChangeEvent] as EventHandler<Event>;
  set onDurationChange(EventHandler<Event> v) {
    _setSubs[onDurationChangeEvent] = v;
  }

  EventHandler<Event> get onEmptied =>
      _setSubs[onEmptiedEvent] as EventHandler<Event>;
  set onEmptied(EventHandler<Event> v) {
    _setSubs[onEmptiedEvent] = v;
  }

  EventHandler<Event> get onEnded =>
      _setSubs[onEndedEvent] as EventHandler<Event>;
  set onEnded(EventHandler<Event> v) {
    _setSubs[onEndedEvent] = v;
  }

  EventHandler<Event> get onError =>
      _setSubs[onErrorEvent] as EventHandler<Event>;
  set onError(EventHandler<Event> v) {
    _setSubs[onErrorEvent] = v;
  }

  EventHandler<Event> get onFocus =>
      _setSubs[onFocusEvent] as EventHandler<Event>;
  set onFocus(EventHandler<Event> v) {
    _setSubs[onFocusEvent] = v;
  }

  EventHandler<Event> get onInput =>
      _setSubs[onInputEvent] as EventHandler<Event>;
  set onInput(EventHandler<Event> v) {
    _setSubs[onInputEvent] = v;
  }

  EventHandler<Event> get onInvalid =>
      _setSubs[onInvalidEvent] as EventHandler<Event>;
  set onInvalid(EventHandler<Event> v) {
    _setSubs[onInvalidEvent] = v;
  }

  EventHandler<KeyboardEvent> get onKeyDown =>
      _setSubs[onKeyDownEvent] as EventHandler<KeyboardEvent>;
  set onKeyDown(EventHandler<KeyboardEvent> v) {
    _setSubs[onKeyDownEvent] = v;
  }

  EventHandler<KeyboardEvent> get onKeyPress =>
      _setSubs[onKeyPressEvent] as EventHandler<KeyboardEvent>;
  set onKeyPress(EventHandler<KeyboardEvent> v) {
    _setSubs[onKeyPressEvent] = v;
  }

  EventHandler<KeyboardEvent> get onKeyUp =>
      _setSubs[onKeyUpEvent] as EventHandler<KeyboardEvent>;
  set onKeyUp(EventHandler<KeyboardEvent> v) {
    _setSubs[onKeyUpEvent] = v;
  }

  EventHandler<Event> get onLoad =>
      _setSubs[onLoadEvent] as EventHandler<Event>;
  set onLoad(EventHandler<Event> v) {
    _setSubs[onLoadEvent] = v;
  }

  EventHandler<Event> get onLoadedData =>
      _setSubs[onLoadedDataEvent] as EventHandler<Event>;
  set onLoadedData(EventHandler<Event> v) {
    _setSubs[onLoadedDataEvent] = v;
  }

  EventHandler<Event> get onLoadedMetadata =>
      _setSubs[onLoadedMetadataEvent] as EventHandler<Event>;
  set onLoadedMetadata(EventHandler<Event> v) {
    _setSubs[onLoadedMetadataEvent] = v;
  }

  EventHandler<MouseEvent> get onMouseDown =>
      _setSubs[onMouseDownEvent] as EventHandler<MouseEvent>;
  set onMouseDown(EventHandler<MouseEvent> v) {
    _setSubs[onMouseDownEvent] = v;
  }

  EventHandler<MouseEvent> get onMouseEnter =>
      _setSubs[onMouseEnterEvent] as EventHandler<MouseEvent>;
  set onMouseEnter(EventHandler<MouseEvent> v) {
    _setSubs[onMouseEnterEvent] = v;
  }

  EventHandler<MouseEvent> get onMouseLeave =>
      _setSubs[onMouseLeaveEvent] as EventHandler<MouseEvent>;
  set onMouseLeave(EventHandler<MouseEvent> v) {
    _setSubs[onMouseLeaveEvent] = v;
  }

  EventHandler<MouseEvent> get onMouseMove =>
      _setSubs[onMouseMoveEvent] as EventHandler<MouseEvent>;
  set onMouseMove(EventHandler<MouseEvent> v) {
    _setSubs[onMouseMoveEvent] = v;
  }

  EventHandler<MouseEvent> get onMouseOut =>
      _setSubs[onMouseOutEvent] as EventHandler<MouseEvent>;
  set onMouseOut(EventHandler<MouseEvent> v) {
    _setSubs[onMouseOutEvent] = v;
  }

  EventHandler<MouseEvent> get onMouseOver =>
      _setSubs[onMouseOverEvent] as EventHandler<MouseEvent>;
  set onMouseOver(EventHandler<MouseEvent> v) {
    _setSubs[onMouseOverEvent] = v;
  }

  EventHandler<MouseEvent> get onMouseUp =>
      _setSubs[onMouseUpEvent] as EventHandler<MouseEvent>;
  set onMouseUp(EventHandler<MouseEvent> v) {
    _setSubs[onMouseUpEvent] = v;
  }

  EventHandler<WheelEvent> get onMouseWheel =>
      _setSubs[onMouseWheelEvent] as EventHandler<WheelEvent>;
  set onMouseWheel(EventHandler<WheelEvent> v) {
    _setSubs[onMouseWheelEvent] = v;
  }

  EventHandler<ClipboardEvent> get onPaste =>
      _setSubs[onPasteEvent] as EventHandler<ClipboardEvent>;
  set onPaste(EventHandler<ClipboardEvent> v) {
    _setSubs[onPasteEvent] = v;
  }

  EventHandler<Event> get onPause =>
      _setSubs[onPauseEvent] as EventHandler<Event>;
  set onPause(EventHandler<Event> v) {
    _setSubs[onPauseEvent] = v;
  }

  EventHandler<Event> get onPlay =>
      _setSubs[onPlayEvent] as EventHandler<Event>;
  set onPlay(EventHandler<Event> v) {
    _setSubs[onPlayEvent] = v;
  }

  EventHandler<Event> get onPlaying =>
      _setSubs[onPlayingEvent] as EventHandler<Event>;
  set onPlaying(EventHandler<Event> v) {
    _setSubs[onPlayingEvent] = v;
  }

  EventHandler<Event> get onRateChange =>
      _setSubs[onRateChangeEvent] as EventHandler<Event>;
  set onRateChange(EventHandler<Event> v) {
    _setSubs[onRateChangeEvent] = v;
  }

  EventHandler<Event> get onReset =>
      _setSubs[onResetEvent] as EventHandler<Event>;
  set onReset(EventHandler<Event> v) {
    _setSubs[onResetEvent] = v;
  }

  EventHandler<Event> get onResize =>
      _setSubs[onResizeEvent] as EventHandler<Event>;
  set onResize(EventHandler<Event> v) {
    _setSubs[onResizeEvent] = v;
  }

  EventHandler<Event> get onScroll =>
      _setSubs[onScrollEvent] as EventHandler<Event>;
  set onScroll(EventHandler<Event> v) {
    _setSubs[onScrollEvent] = v;
  }

  EventHandler<Event> get onSearch =>
      _setSubs[onSearchEvent] as EventHandler<Event>;
  set onSearch(EventHandler<Event> v) {
    _setSubs[onSearchEvent] = v;
  }

  EventHandler<Event> get onSeeked =>
      _setSubs[onSeekedEvent] as EventHandler<Event>;
  set onSeeked(EventHandler<Event> v) {
    _setSubs[onSeekedEvent] = v;
  }

  EventHandler<Event> get onSeeking =>
      _setSubs[onSeekingEvent] as EventHandler<Event>;
  set onSeeking(EventHandler<Event> v) {
    _setSubs[onSeekingEvent] = v;
  }

  EventHandler<Event> get onSelect =>
      _setSubs[onSelectEvent] as EventHandler<Event>;
  set onSelect(EventHandler<Event> v) {
    _setSubs[onSelectEvent] = v;
  }

  EventHandler<Event> get onSelectStart =>
      _setSubs[onSelectStartEvent] as EventHandler<Event>;
  set onSelectStart(EventHandler<Event> v) {
    _setSubs[onSelectStartEvent] = v;
  }

  EventHandler<Event> get onStalled =>
      _setSubs[onStalledEvent] as EventHandler<Event>;
  set onStalled(EventHandler<Event> v) {
    _setSubs[onStalledEvent] = v;
  }

  EventHandler<Event> get onSubmit =>
      _setSubs[onSubmitEvent] as EventHandler<Event>;
  set onSubmit(EventHandler<Event> v) {
    _setSubs[onSubmitEvent] = v;
  }

  EventHandler<Event> get onSuspend =>
      _setSubs[onSuspendEvent] as EventHandler<Event>;
  set onSuspend(EventHandler<Event> v) {
    _setSubs[onSuspendEvent] = v;
  }

  EventHandler<Event> get onTimeUpdate =>
      _setSubs[onTimeUpdateEvent] as EventHandler<Event>;
  set onTimeUpdate(EventHandler<Event> v) {
    _setSubs[onTimeUpdateEvent] = v;
  }

  EventHandler<TouchEvent> get onTouchCancel =>
      _setSubs[onTouchCancelEvent] as EventHandler<TouchEvent>;
  set onTouchCancel(EventHandler<TouchEvent> v) {
    _setSubs[onTouchCancelEvent] = v;
  }

  EventHandler<TouchEvent> get onTouchEnd =>
      _setSubs[onTouchEndEvent] as EventHandler<TouchEvent>;
  set onTouchEnd(EventHandler<TouchEvent> v) {
    _setSubs[onTouchEndEvent] = v;
  }

  EventHandler<TouchEvent> get onTouchEnter =>
      _setSubs[onTouchEnterEvent] as EventHandler<TouchEvent>;
  set onTouchEnter(EventHandler<TouchEvent> v) {
    _setSubs[onTouchEnterEvent] = v;
  }

  EventHandler<TouchEvent> get onTouchLeave =>
      _setSubs[onTouchLeaveEvent] as EventHandler<TouchEvent>;
  set onTouchLeave(EventHandler<TouchEvent> v) {
    _setSubs[onTouchLeaveEvent] = v;
  }

  EventHandler<TouchEvent> get onTouchMove =>
      _setSubs[onTouchMoveEvent] as EventHandler<TouchEvent>;
  set onTouchMove(EventHandler<TouchEvent> v) {
    _setSubs[onTouchMoveEvent] = v;
  }

  EventHandler<TouchEvent> get onTouchStart =>
      _setSubs[onTouchStartEvent] as EventHandler<TouchEvent>;
  set onTouchStart(EventHandler<TouchEvent> v) {
    _setSubs[onTouchStartEvent] = v;
  }

  EventHandler<TransitionEvent> get onTransitionEnd =>
      _setSubs[onTransitionEndEvent] as EventHandler<TransitionEvent>;
  set onTransitionEnd(EventHandler<TransitionEvent> v) {
    _setSubs[onTransitionEndEvent] = v;
  }

  EventHandler<Event> get onVolumeChange =>
      _setSubs[onVolumeChangeEvent] as EventHandler<Event>;
  set onVolumeChange(EventHandler<Event> v) {
    _setSubs[onVolumeChangeEvent] = v;
  }

  EventHandler<Event> get onWaiting =>
      _setSubs[onWaitingEvent] as EventHandler<Event>;
  set onWaiting(EventHandler<Event> v) {
    _setSubs[onWaitingEvent] = v;
  }

  EventHandler<Event> get onFullscreenChange =>
      _setSubs[onFullscreenChangeEvent] as EventHandler<Event>;
  set onFullscreenChange(EventHandler<Event> v) {
    _setSubs[onFullscreenChangeEvent] = v;
  }

  EventHandler<Event> get onFullscreenError =>
      _setSubs[onFullscreenErrorEvent] as EventHandler<Event>;
  set onFullscreenError(EventHandler<Event> v) {
    _setSubs[onFullscreenErrorEvent] = v;
  }

  @protected
  void applyAttributesToElement(E ele) {
    // _style.forEach(_updateStyle);
    attributes.forEach((k, v) => _updateCustomAttribute(ele, k, v));
    _setValuesElement.forEach((k, dynamic v) => _updateAttribute(ele, k, v));
  }

  @protected
  void updateElementAttributes(covariant VElement<E> prev, E ele) {
    //prev._style.forEach(_updateStyle);
    prev.attributes.forEach((k, v) {
      final newValue = attributes[k];
      if (newValue != v) _updateCustomAttribute(ele, k, newValue);
    });

    prev._setValuesElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesElement[k];
      if (newValue != v) _updateAttribute(ele, k, newValue);
    });

    prev._style = _style;
    prev.attributes = attributes;
    prev._setValuesElement = _setValuesElement;
  }

  void _updateAttribute(Element ele, int key, dynamic value) {
    switch (key) {
      case textElementAttribute:
        final first = ele.firstChild;
        if (first != null &&
            first == ele.lastChild &&
            first.nodeType == Node.TEXT_NODE) {
          first.text = value as String;
        } else {
          ele.text = value as String;
        }
        break;
      case contentEditableElementAttribute:
        ele.contentEditable = value as String;
        break;
      case contextMenuElementAttribute:
        ele.contextMenu = value as MenuElement;
        break;
      case dirElementAttribute:
        ele.dir = value as String;
        break;
      case draggableElementAttribute:
        ele.draggable = value as bool;
        break;
      case hiddenElementAttribute:
        ele.hidden = value as bool;
        break;
      case langElementAttribute:
        ele.lang = value as String;
        break;
      case spellcheckElementAttribute:
        ele.spellcheck = value as bool;
        break;
      case tabIndexElementAttribute:
        ele.tabIndex = value as int;
        break;
      case titleElementAttribute:
        ele.title = value as String;
        break;
      case translateElementAttribute:
        ele.translate = value as bool;
        break;
      case dropzoneElementAttribute:
        ele.dropzone = value as String;
        break;
      case classNameElementAttribute:
        ele.className = value as String;
        break;
      case idElementAttribute:
        ele.id = value as String;
        break;
      case slotElementAttribute:
        ele.slot = value as String;
        break;
      case classesElementAttribute:
        ele.classes = value as Iterable<String>;
        break;
      case datasetElementAttribute:
        ele.dataset = value as Map<String, String>;
        break;
      case xtagElementAttribute:
        ele.xtag = value as Element;
        break;
      case innerHtmlElementAttribute:
        ele.innerHtml = value as String;
        break;
      case scrollLeftElementAttribute:
        ele.scrollLeft = value as int;
        break;
      case scrollTopElementAttribute:
        ele.scrollTop = value as int;
        break;
    }
  }

  void _updateCustomAttribute(Element ele, String key, String value) {
    ele.attributes[key] = value;
  }

  void applyEventListenersToElement(Element ele) {
    _setSubs.forEach((k, dynamic v) => _applyEventListener(ele, k, v));
  }

  void updateEventListenersToElement(VElement prev, Element ele) {
    _setSubs.forEach((k, v) => _removeEventListenerIfNeccessary(prev, k, v));
    prev._setSubs = _setSubs;
    prev._setSubs.forEach((k, v) => prev._applyEventListener(ele, k, v));
  }

  void _applyEventListener(Element ele, int key, dynamic value) {
    if (_eventSubs.containsKey(key)) return;
    switch (key) {
      case onAbortEvent:
        _eventSubs[onAbortEvent] = ele.onAbort.listen(onAbort);
        break;
      case onBeforeCopyEvent:
        _eventSubs[onBeforeCopyEvent] = ele.onBeforeCopy.listen(onBeforeCopy);
        break;
      case onBeforeCutEvent:
        _eventSubs[onBeforeCutEvent] = ele.onBeforeCut.listen(onBeforeCut);
        break;
      case onBeforePasteEvent:
        _eventSubs[onBeforePasteEvent] =
            ele.onBeforePaste.listen(onBeforePaste);
        break;
      case onBlurEvent:
        _eventSubs[onBlurEvent] = ele.onBlur.listen(onBlur);
        break;
      case onCanPlayEvent:
        _eventSubs[onCanPlayEvent] = ele.onCanPlay.listen(onCanPlay);
        break;
      case onCanPlayThroughEvent:
        _eventSubs[onCanPlayThroughEvent] =
            ele.onCanPlayThrough.listen(onCanPlayThrough);
        break;
      case onChangeEvent:
        _eventSubs[onChangeEvent] = ele.onChange.listen(onChange);
        break;
      case onClickEvent:
        _eventSubs[onClickEvent] = ele.onClick.listen(onClick);
        break;
      case onContextMenuEvent:
        _eventSubs[onContextMenuEvent] =
            ele.onContextMenu.listen(onContextMenu);
        break;
      case onCopyEvent:
        _eventSubs[onCopyEvent] = ele.onCopy.listen(onCopy);
        break;
      case onCutEvent:
        _eventSubs[onCutEvent] = ele.onCut.listen(onCut);
        break;
      case onDoubleClickEvent:
        _eventSubs[onDoubleClickEvent] =
            ele.onDoubleClick.listen(onDoubleClick);
        break;
      case onDragEvent:
        _eventSubs[onDragEvent] = ele.onDrag.listen(onDrag);
        break;
      case onDragEndEvent:
        _eventSubs[onDragEndEvent] = ele.onDragEnd.listen(onDragEnd);
        break;
      case onDragEnterEvent:
        _eventSubs[onDragEnterEvent] = ele.onDragEnter.listen(onDragEnter);
        break;
      case onDragLeaveEvent:
        _eventSubs[onDragLeaveEvent] = ele.onDragLeave.listen(onDragLeave);
        break;
      case onDragOverEvent:
        _eventSubs[onDragOverEvent] = ele.onDragOver.listen(onDragOver);
        break;
      case onDragStartEvent:
        _eventSubs[onDragStartEvent] = ele.onDragStart.listen(onDragStart);
        break;
      case onDropEvent:
        _eventSubs[onDropEvent] = ele.onDrop.listen(onDrop);
        break;
      case onDurationChangeEvent:
        _eventSubs[onDurationChangeEvent] =
            ele.onDurationChange.listen(onDurationChange);
        break;
      case onEmptiedEvent:
        _eventSubs[onEmptiedEvent] = ele.onEmptied.listen(onEmptied);
        break;
      case onEndedEvent:
        _eventSubs[onEndedEvent] = ele.onEnded.listen(onEnded);
        break;
      case onErrorEvent:
        _eventSubs[onErrorEvent] = ele.onError.listen(onError);
        break;
      case onFocusEvent:
        _eventSubs[onFocusEvent] = ele.onFocus.listen(onFocus);
        break;
      case onInputEvent:
        _eventSubs[onInputEvent] = ele.onInput.listen(onInput);
        break;
      case onInvalidEvent:
        _eventSubs[onInvalidEvent] = ele.onInvalid.listen(onInvalid);
        break;
      case onKeyDownEvent:
        _eventSubs[onKeyDownEvent] = ele.onKeyDown.listen(onKeyDown);
        break;
      case onKeyPressEvent:
        _eventSubs[onKeyPressEvent] = ele.onKeyPress.listen(onKeyPress);
        break;
      case onKeyUpEvent:
        _eventSubs[onKeyUpEvent] = ele.onKeyUp.listen(onKeyUp);
        break;
      case onLoadEvent:
        _eventSubs[onLoadEvent] = ele.onLoad.listen(onLoad);
        break;
      case onLoadedDataEvent:
        _eventSubs[onLoadedDataEvent] = ele.onLoadedData.listen(onLoadedData);
        break;
      case onLoadedMetadataEvent:
        _eventSubs[onLoadedMetadataEvent] =
            ele.onLoadedMetadata.listen(onLoadedMetadata);
        break;
      case onMouseDownEvent:
        _eventSubs[onMouseDownEvent] = ele.onMouseDown.listen(onMouseDown);
        break;
      case onMouseEnterEvent:
        _eventSubs[onMouseEnterEvent] = ele.onMouseEnter.listen(onMouseEnter);
        break;
      case onMouseLeaveEvent:
        _eventSubs[onMouseLeaveEvent] = ele.onMouseLeave.listen(onMouseLeave);
        break;
      case onMouseMoveEvent:
        _eventSubs[onMouseMoveEvent] = ele.onMouseMove.listen(onMouseMove);
        break;
      case onMouseOutEvent:
        _eventSubs[onMouseOutEvent] = ele.onMouseOut.listen(onMouseOut);
        break;
      case onMouseOverEvent:
        _eventSubs[onMouseOverEvent] = ele.onMouseOver.listen(onMouseOver);
        break;
      case onMouseUpEvent:
        _eventSubs[onMouseUpEvent] = ele.onMouseUp.listen(onMouseUp);
        break;
      case onMouseWheelEvent:
        _eventSubs[onMouseWheelEvent] = ele.onMouseWheel.listen(onMouseWheel);
        break;
      case onPasteEvent:
        _eventSubs[onPasteEvent] = ele.onPaste.listen(onPaste);
        break;
      case onPauseEvent:
        _eventSubs[onPauseEvent] = ele.onPause.listen(onPause);
        break;
      case onPlayEvent:
        _eventSubs[onPlayEvent] = ele.onPlay.listen(onPlay);
        break;
      case onPlayingEvent:
        _eventSubs[onPlayingEvent] = ele.onPlaying.listen(onPlaying);
        break;
      case onRateChangeEvent:
        _eventSubs[onRateChangeEvent] = ele.onRateChange.listen(onRateChange);
        break;
      case onResetEvent:
        _eventSubs[onResetEvent] = ele.onReset.listen(onReset);
        break;
      case onResizeEvent:
        _eventSubs[onResizeEvent] = ele.onResize.listen(onResize);
        break;
      case onScrollEvent:
        _eventSubs[onScrollEvent] = ele.onScroll.listen(onScroll);
        break;
      case onSearchEvent:
        _eventSubs[onSearchEvent] = ele.onSearch.listen(onSearch);
        break;
      case onSeekedEvent:
        _eventSubs[onSeekedEvent] = ele.onSeeked.listen(onSeeked);
        break;
      case onSeekingEvent:
        _eventSubs[onSeekingEvent] = ele.onSeeking.listen(onSeeking);
        break;
      case onSelectEvent:
        _eventSubs[onSelectEvent] = ele.onSelect.listen(onSelect);
        break;
      case onSelectStartEvent:
        _eventSubs[onSelectStartEvent] =
            ele.onSelectStart.listen(onSelectStart);
        break;
      case onStalledEvent:
        _eventSubs[onStalledEvent] = ele.onStalled.listen(onStalled);
        break;
      case onSubmitEvent:
        _eventSubs[onSubmitEvent] = ele.onSubmit.listen(onSubmit);
        break;
      case onSuspendEvent:
        _eventSubs[onSuspendEvent] = ele.onSuspend.listen(onSuspend);
        break;
      case onTimeUpdateEvent:
        _eventSubs[onTimeUpdateEvent] = ele.onTimeUpdate.listen(onTimeUpdate);
        break;
      case onTouchCancelEvent:
        _eventSubs[onTouchCancelEvent] =
            ele.onTouchCancel.listen(onTouchCancel);
        break;
      case onTouchEndEvent:
        _eventSubs[onTouchEndEvent] = ele.onTouchEnd.listen(onTouchEnd);
        break;
      case onTouchEnterEvent:
        _eventSubs[onTouchEnterEvent] = ele.onTouchEnter.listen(onTouchEnter);
        break;
      case onTouchLeaveEvent:
        _eventSubs[onTouchLeaveEvent] = ele.onTouchLeave.listen(onTouchLeave);
        break;
      case onTouchMoveEvent:
        _eventSubs[onTouchMoveEvent] = ele.onTouchMove.listen(onTouchMove);
        break;
      case onTouchStartEvent:
        _eventSubs[onTouchStartEvent] = ele.onTouchStart.listen(onTouchStart);
        break;
      case onTransitionEndEvent:
        _eventSubs[onTransitionEndEvent] =
            ele.onTransitionEnd.listen(onTransitionEnd);
        break;
      case onVolumeChangeEvent:
        _eventSubs[onVolumeChangeEvent] =
            ele.onVolumeChange.listen(onVolumeChange);
        break;
      case onWaitingEvent:
        _eventSubs[onWaitingEvent] = ele.onWaiting.listen(onWaiting);
        break;
      case onFullscreenChangeEvent:
        _eventSubs[onFullscreenChangeEvent] =
            ele.onFullscreenChange.listen(onFullscreenChange);
        break;
      case onFullscreenErrorEvent:
        _eventSubs[onFullscreenErrorEvent] =
            ele.onFullscreenError.listen(onFullscreenError);
        break;
    }
  }

  void _removeEventListenerIfNeccessary(VElement prev, int key, dynamic value) {
    if (prev._setSubs.containsKey(key)) return;
    prev._eventSubs[key].cancel();
    prev._eventSubs[key] = null;
  }

  void dispose() {
    for (final sub in _eventSubs.values) sub.cancel();
    _eventSubs = null;
  }
}
