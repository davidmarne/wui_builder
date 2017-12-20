part of velement;
    // ignore_for_file: annotate_overrides
    // ignore_for_file: overridden_fields

    typedef void RemoveIfNecessary(String k, dynamic value);
  abstract class VElement<E extends Element> extends VNode {
    @override
    VNodeTypes get vNodeType => VNodeTypes.element;

    final _setValues = <String, dynamic>{};
    final _customAttributes = <String, String>{};
    final _style = <String, String>{};
    final _setSubs = <String, EventHandler>{};

    E elementFactory();
    
    bool shouldUpdateSubs = false;

    // TODO: gen builder for css style
    StyleBuilder styleBuilder;

    var _children = <VNode>[];
    List<VNode> get children => _children;
    set children(Iterable<VNode> c) {
      _children = c.toList();
    }

      String get text => _setValues['text'};
  set text(String v) {
      _setValues['text'} = v;
  }

    
  String get contentEditable => _setValues['contentEditable'};
  set contentEditable(String v) {
      _setValues['contentEditable'} = v;
  }
  MenuElement get contextMenu => _setValues['contextMenu'};
  set contextMenu(MenuElement v) {
      _setValues['contextMenu'} = v;
  }
  String get dir => _setValues['dir'};
  set dir(String v) {
      _setValues['dir'} = v;
  }
  bool get draggable => _setValues['draggable'};
  set draggable(bool v) {
      _setValues['draggable'} = v;
  }
  bool get hidden => _setValues['hidden'};
  set hidden(bool v) {
      _setValues['hidden'} = v;
  }
  String get lang => _setValues['lang'};
  set lang(String v) {
      _setValues['lang'} = v;
  }
  bool get spellcheck => _setValues['spellcheck'};
  set spellcheck(bool v) {
      _setValues['spellcheck'} = v;
  }
  int get tabIndex => _setValues['tabIndex'};
  set tabIndex(int v) {
      _setValues['tabIndex'} = v;
  }
  String get title => _setValues['title'};
  set title(String v) {
      _setValues['title'} = v;
  }
  bool get translate => _setValues['translate'};
  set translate(bool v) {
      _setValues['translate'} = v;
  }
  String get dropzone => _setValues['dropzone'};
  set dropzone(String v) {
      _setValues['dropzone'} = v;
  }
  String get className => _setValues['className'};
  set className(String v) {
      _setValues['className'} = v;
  }
  String get id => _setValues['id'};
  set id(String v) {
      _setValues['id'} = v;
  }
  String get slot => _setValues['slot'};
  set slot(String v) {
      _setValues['slot'} = v;
  }
  Map<String, String> get attributes => _setValues['attributes'};
  set attributes(Map<String, String> v) {
      _setValues['attributes'} = v;
  }
  Iterable<String> get classes => _setValues['classes'};
  set classes(Iterable<String> v) {
      _setValues['classes'} = v;
  }
  Map<String, String> get dataset => _setValues['dataset'};
  set dataset(Map<String, String> v) {
      _setValues['dataset'} = v;
  }
  Element get xtag => _setValues['xtag'};
  set xtag(Element v) {
      _setValues['xtag'} = v;
  }
  String get innerHtml => _setValues['innerHtml'};
  set innerHtml(String v) {
      _setValues['innerHtml'} = v;
  }
  int get scrollLeft => _setValues['scrollLeft'};
  set scrollLeft(int v) {
      _setValues['scrollLeft'} = v;
  }
  int get scrollTop => _setValues['scrollTop'};
  set scrollTop(int v) {
      _setValues['scrollTop'} = v;
  }

    
    StreamSubscription _onAbortSub;
    bool _onAbortSet = false;
    EventHandler<Event> _onAbort;
    EventHandler<Event> get onAbort => _onAbort;
    set onAbort(EventHandler<Event> v) {
        _onAbort = v;
        _onAbortSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onBeforeCopySub;
    bool _onBeforeCopySet = false;
    EventHandler<Event> _onBeforeCopy;
    EventHandler<Event> get onBeforeCopy => _onBeforeCopy;
    set onBeforeCopy(EventHandler<Event> v) {
        _onBeforeCopy = v;
        _onBeforeCopySet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onBeforeCutSub;
    bool _onBeforeCutSet = false;
    EventHandler<Event> _onBeforeCut;
    EventHandler<Event> get onBeforeCut => _onBeforeCut;
    set onBeforeCut(EventHandler<Event> v) {
        _onBeforeCut = v;
        _onBeforeCutSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onBeforePasteSub;
    bool _onBeforePasteSet = false;
    EventHandler<Event> _onBeforePaste;
    EventHandler<Event> get onBeforePaste => _onBeforePaste;
    set onBeforePaste(EventHandler<Event> v) {
        _onBeforePaste = v;
        _onBeforePasteSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onBlurSub;
    bool _onBlurSet = false;
    EventHandler<Event> _onBlur;
    EventHandler<Event> get onBlur => _onBlur;
    set onBlur(EventHandler<Event> v) {
        _onBlur = v;
        _onBlurSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onCanPlaySub;
    bool _onCanPlaySet = false;
    EventHandler<Event> _onCanPlay;
    EventHandler<Event> get onCanPlay => _onCanPlay;
    set onCanPlay(EventHandler<Event> v) {
        _onCanPlay = v;
        _onCanPlaySet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onCanPlayThroughSub;
    bool _onCanPlayThroughSet = false;
    EventHandler<Event> _onCanPlayThrough;
    EventHandler<Event> get onCanPlayThrough => _onCanPlayThrough;
    set onCanPlayThrough(EventHandler<Event> v) {
        _onCanPlayThrough = v;
        _onCanPlayThroughSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onChangeSub;
    bool _onChangeSet = false;
    EventHandler<Event> _onChange;
    EventHandler<Event> get onChange => _onChange;
    set onChange(EventHandler<Event> v) {
        _onChange = v;
        _onChangeSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onClickSub;
    bool _onClickSet = false;
    EventHandler<MouseEvent> _onClick;
    EventHandler<MouseEvent> get onClick => _onClick;
    set onClick(EventHandler<MouseEvent> v) {
        _onClick = v;
        _onClickSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onContextMenuSub;
    bool _onContextMenuSet = false;
    EventHandler<MouseEvent> _onContextMenu;
    EventHandler<MouseEvent> get onContextMenu => _onContextMenu;
    set onContextMenu(EventHandler<MouseEvent> v) {
        _onContextMenu = v;
        _onContextMenuSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onCopySub;
    bool _onCopySet = false;
    EventHandler<ClipboardEvent> _onCopy;
    EventHandler<ClipboardEvent> get onCopy => _onCopy;
    set onCopy(EventHandler<ClipboardEvent> v) {
        _onCopy = v;
        _onCopySet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onCutSub;
    bool _onCutSet = false;
    EventHandler<ClipboardEvent> _onCut;
    EventHandler<ClipboardEvent> get onCut => _onCut;
    set onCut(EventHandler<ClipboardEvent> v) {
        _onCut = v;
        _onCutSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onDoubleClickSub;
    bool _onDoubleClickSet = false;
    EventHandler<Event> _onDoubleClick;
    EventHandler<Event> get onDoubleClick => _onDoubleClick;
    set onDoubleClick(EventHandler<Event> v) {
        _onDoubleClick = v;
        _onDoubleClickSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onDragSub;
    bool _onDragSet = false;
    EventHandler<MouseEvent> _onDrag;
    EventHandler<MouseEvent> get onDrag => _onDrag;
    set onDrag(EventHandler<MouseEvent> v) {
        _onDrag = v;
        _onDragSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onDragEndSub;
    bool _onDragEndSet = false;
    EventHandler<MouseEvent> _onDragEnd;
    EventHandler<MouseEvent> get onDragEnd => _onDragEnd;
    set onDragEnd(EventHandler<MouseEvent> v) {
        _onDragEnd = v;
        _onDragEndSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onDragEnterSub;
    bool _onDragEnterSet = false;
    EventHandler<MouseEvent> _onDragEnter;
    EventHandler<MouseEvent> get onDragEnter => _onDragEnter;
    set onDragEnter(EventHandler<MouseEvent> v) {
        _onDragEnter = v;
        _onDragEnterSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onDragLeaveSub;
    bool _onDragLeaveSet = false;
    EventHandler<MouseEvent> _onDragLeave;
    EventHandler<MouseEvent> get onDragLeave => _onDragLeave;
    set onDragLeave(EventHandler<MouseEvent> v) {
        _onDragLeave = v;
        _onDragLeaveSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onDragOverSub;
    bool _onDragOverSet = false;
    EventHandler<MouseEvent> _onDragOver;
    EventHandler<MouseEvent> get onDragOver => _onDragOver;
    set onDragOver(EventHandler<MouseEvent> v) {
        _onDragOver = v;
        _onDragOverSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onDragStartSub;
    bool _onDragStartSet = false;
    EventHandler<MouseEvent> _onDragStart;
    EventHandler<MouseEvent> get onDragStart => _onDragStart;
    set onDragStart(EventHandler<MouseEvent> v) {
        _onDragStart = v;
        _onDragStartSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onDropSub;
    bool _onDropSet = false;
    EventHandler<MouseEvent> _onDrop;
    EventHandler<MouseEvent> get onDrop => _onDrop;
    set onDrop(EventHandler<MouseEvent> v) {
        _onDrop = v;
        _onDropSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onDurationChangeSub;
    bool _onDurationChangeSet = false;
    EventHandler<Event> _onDurationChange;
    EventHandler<Event> get onDurationChange => _onDurationChange;
    set onDurationChange(EventHandler<Event> v) {
        _onDurationChange = v;
        _onDurationChangeSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onEmptiedSub;
    bool _onEmptiedSet = false;
    EventHandler<Event> _onEmptied;
    EventHandler<Event> get onEmptied => _onEmptied;
    set onEmptied(EventHandler<Event> v) {
        _onEmptied = v;
        _onEmptiedSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onEndedSub;
    bool _onEndedSet = false;
    EventHandler<Event> _onEnded;
    EventHandler<Event> get onEnded => _onEnded;
    set onEnded(EventHandler<Event> v) {
        _onEnded = v;
        _onEndedSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onErrorSub;
    bool _onErrorSet = false;
    EventHandler<Event> _onError;
    EventHandler<Event> get onError => _onError;
    set onError(EventHandler<Event> v) {
        _onError = v;
        _onErrorSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onFocusSub;
    bool _onFocusSet = false;
    EventHandler<Event> _onFocus;
    EventHandler<Event> get onFocus => _onFocus;
    set onFocus(EventHandler<Event> v) {
        _onFocus = v;
        _onFocusSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onInputSub;
    bool _onInputSet = false;
    EventHandler<Event> _onInput;
    EventHandler<Event> get onInput => _onInput;
    set onInput(EventHandler<Event> v) {
        _onInput = v;
        _onInputSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onInvalidSub;
    bool _onInvalidSet = false;
    EventHandler<Event> _onInvalid;
    EventHandler<Event> get onInvalid => _onInvalid;
    set onInvalid(EventHandler<Event> v) {
        _onInvalid = v;
        _onInvalidSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onKeyDownSub;
    bool _onKeyDownSet = false;
    EventHandler<KeyboardEvent> _onKeyDown;
    EventHandler<KeyboardEvent> get onKeyDown => _onKeyDown;
    set onKeyDown(EventHandler<KeyboardEvent> v) {
        _onKeyDown = v;
        _onKeyDownSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onKeyPressSub;
    bool _onKeyPressSet = false;
    EventHandler<KeyboardEvent> _onKeyPress;
    EventHandler<KeyboardEvent> get onKeyPress => _onKeyPress;
    set onKeyPress(EventHandler<KeyboardEvent> v) {
        _onKeyPress = v;
        _onKeyPressSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onKeyUpSub;
    bool _onKeyUpSet = false;
    EventHandler<KeyboardEvent> _onKeyUp;
    EventHandler<KeyboardEvent> get onKeyUp => _onKeyUp;
    set onKeyUp(EventHandler<KeyboardEvent> v) {
        _onKeyUp = v;
        _onKeyUpSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onLoadSub;
    bool _onLoadSet = false;
    EventHandler<Event> _onLoad;
    EventHandler<Event> get onLoad => _onLoad;
    set onLoad(EventHandler<Event> v) {
        _onLoad = v;
        _onLoadSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onLoadedDataSub;
    bool _onLoadedDataSet = false;
    EventHandler<Event> _onLoadedData;
    EventHandler<Event> get onLoadedData => _onLoadedData;
    set onLoadedData(EventHandler<Event> v) {
        _onLoadedData = v;
        _onLoadedDataSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onLoadedMetadataSub;
    bool _onLoadedMetadataSet = false;
    EventHandler<Event> _onLoadedMetadata;
    EventHandler<Event> get onLoadedMetadata => _onLoadedMetadata;
    set onLoadedMetadata(EventHandler<Event> v) {
        _onLoadedMetadata = v;
        _onLoadedMetadataSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onMouseDownSub;
    bool _onMouseDownSet = false;
    EventHandler<MouseEvent> _onMouseDown;
    EventHandler<MouseEvent> get onMouseDown => _onMouseDown;
    set onMouseDown(EventHandler<MouseEvent> v) {
        _onMouseDown = v;
        _onMouseDownSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onMouseEnterSub;
    bool _onMouseEnterSet = false;
    EventHandler<MouseEvent> _onMouseEnter;
    EventHandler<MouseEvent> get onMouseEnter => _onMouseEnter;
    set onMouseEnter(EventHandler<MouseEvent> v) {
        _onMouseEnter = v;
        _onMouseEnterSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onMouseLeaveSub;
    bool _onMouseLeaveSet = false;
    EventHandler<MouseEvent> _onMouseLeave;
    EventHandler<MouseEvent> get onMouseLeave => _onMouseLeave;
    set onMouseLeave(EventHandler<MouseEvent> v) {
        _onMouseLeave = v;
        _onMouseLeaveSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onMouseMoveSub;
    bool _onMouseMoveSet = false;
    EventHandler<MouseEvent> _onMouseMove;
    EventHandler<MouseEvent> get onMouseMove => _onMouseMove;
    set onMouseMove(EventHandler<MouseEvent> v) {
        _onMouseMove = v;
        _onMouseMoveSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onMouseOutSub;
    bool _onMouseOutSet = false;
    EventHandler<MouseEvent> _onMouseOut;
    EventHandler<MouseEvent> get onMouseOut => _onMouseOut;
    set onMouseOut(EventHandler<MouseEvent> v) {
        _onMouseOut = v;
        _onMouseOutSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onMouseOverSub;
    bool _onMouseOverSet = false;
    EventHandler<MouseEvent> _onMouseOver;
    EventHandler<MouseEvent> get onMouseOver => _onMouseOver;
    set onMouseOver(EventHandler<MouseEvent> v) {
        _onMouseOver = v;
        _onMouseOverSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onMouseUpSub;
    bool _onMouseUpSet = false;
    EventHandler<MouseEvent> _onMouseUp;
    EventHandler<MouseEvent> get onMouseUp => _onMouseUp;
    set onMouseUp(EventHandler<MouseEvent> v) {
        _onMouseUp = v;
        _onMouseUpSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onMouseWheelSub;
    bool _onMouseWheelSet = false;
    EventHandler<WheelEvent> _onMouseWheel;
    EventHandler<WheelEvent> get onMouseWheel => _onMouseWheel;
    set onMouseWheel(EventHandler<WheelEvent> v) {
        _onMouseWheel = v;
        _onMouseWheelSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onPasteSub;
    bool _onPasteSet = false;
    EventHandler<ClipboardEvent> _onPaste;
    EventHandler<ClipboardEvent> get onPaste => _onPaste;
    set onPaste(EventHandler<ClipboardEvent> v) {
        _onPaste = v;
        _onPasteSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onPauseSub;
    bool _onPauseSet = false;
    EventHandler<Event> _onPause;
    EventHandler<Event> get onPause => _onPause;
    set onPause(EventHandler<Event> v) {
        _onPause = v;
        _onPauseSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onPlaySub;
    bool _onPlaySet = false;
    EventHandler<Event> _onPlay;
    EventHandler<Event> get onPlay => _onPlay;
    set onPlay(EventHandler<Event> v) {
        _onPlay = v;
        _onPlaySet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onPlayingSub;
    bool _onPlayingSet = false;
    EventHandler<Event> _onPlaying;
    EventHandler<Event> get onPlaying => _onPlaying;
    set onPlaying(EventHandler<Event> v) {
        _onPlaying = v;
        _onPlayingSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onRateChangeSub;
    bool _onRateChangeSet = false;
    EventHandler<Event> _onRateChange;
    EventHandler<Event> get onRateChange => _onRateChange;
    set onRateChange(EventHandler<Event> v) {
        _onRateChange = v;
        _onRateChangeSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onResetSub;
    bool _onResetSet = false;
    EventHandler<Event> _onReset;
    EventHandler<Event> get onReset => _onReset;
    set onReset(EventHandler<Event> v) {
        _onReset = v;
        _onResetSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onResizeSub;
    bool _onResizeSet = false;
    EventHandler<Event> _onResize;
    EventHandler<Event> get onResize => _onResize;
    set onResize(EventHandler<Event> v) {
        _onResize = v;
        _onResizeSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onScrollSub;
    bool _onScrollSet = false;
    EventHandler<Event> _onScroll;
    EventHandler<Event> get onScroll => _onScroll;
    set onScroll(EventHandler<Event> v) {
        _onScroll = v;
        _onScrollSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onSearchSub;
    bool _onSearchSet = false;
    EventHandler<Event> _onSearch;
    EventHandler<Event> get onSearch => _onSearch;
    set onSearch(EventHandler<Event> v) {
        _onSearch = v;
        _onSearchSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onSeekedSub;
    bool _onSeekedSet = false;
    EventHandler<Event> _onSeeked;
    EventHandler<Event> get onSeeked => _onSeeked;
    set onSeeked(EventHandler<Event> v) {
        _onSeeked = v;
        _onSeekedSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onSeekingSub;
    bool _onSeekingSet = false;
    EventHandler<Event> _onSeeking;
    EventHandler<Event> get onSeeking => _onSeeking;
    set onSeeking(EventHandler<Event> v) {
        _onSeeking = v;
        _onSeekingSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onSelectSub;
    bool _onSelectSet = false;
    EventHandler<Event> _onSelect;
    EventHandler<Event> get onSelect => _onSelect;
    set onSelect(EventHandler<Event> v) {
        _onSelect = v;
        _onSelectSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onSelectStartSub;
    bool _onSelectStartSet = false;
    EventHandler<Event> _onSelectStart;
    EventHandler<Event> get onSelectStart => _onSelectStart;
    set onSelectStart(EventHandler<Event> v) {
        _onSelectStart = v;
        _onSelectStartSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onStalledSub;
    bool _onStalledSet = false;
    EventHandler<Event> _onStalled;
    EventHandler<Event> get onStalled => _onStalled;
    set onStalled(EventHandler<Event> v) {
        _onStalled = v;
        _onStalledSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onSubmitSub;
    bool _onSubmitSet = false;
    EventHandler<Event> _onSubmit;
    EventHandler<Event> get onSubmit => _onSubmit;
    set onSubmit(EventHandler<Event> v) {
        _onSubmit = v;
        _onSubmitSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onSuspendSub;
    bool _onSuspendSet = false;
    EventHandler<Event> _onSuspend;
    EventHandler<Event> get onSuspend => _onSuspend;
    set onSuspend(EventHandler<Event> v) {
        _onSuspend = v;
        _onSuspendSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onTimeUpdateSub;
    bool _onTimeUpdateSet = false;
    EventHandler<Event> _onTimeUpdate;
    EventHandler<Event> get onTimeUpdate => _onTimeUpdate;
    set onTimeUpdate(EventHandler<Event> v) {
        _onTimeUpdate = v;
        _onTimeUpdateSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onTouchCancelSub;
    bool _onTouchCancelSet = false;
    EventHandler<TouchEvent> _onTouchCancel;
    EventHandler<TouchEvent> get onTouchCancel => _onTouchCancel;
    set onTouchCancel(EventHandler<TouchEvent> v) {
        _onTouchCancel = v;
        _onTouchCancelSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onTouchEndSub;
    bool _onTouchEndSet = false;
    EventHandler<TouchEvent> _onTouchEnd;
    EventHandler<TouchEvent> get onTouchEnd => _onTouchEnd;
    set onTouchEnd(EventHandler<TouchEvent> v) {
        _onTouchEnd = v;
        _onTouchEndSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onTouchEnterSub;
    bool _onTouchEnterSet = false;
    EventHandler<TouchEvent> _onTouchEnter;
    EventHandler<TouchEvent> get onTouchEnter => _onTouchEnter;
    set onTouchEnter(EventHandler<TouchEvent> v) {
        _onTouchEnter = v;
        _onTouchEnterSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onTouchLeaveSub;
    bool _onTouchLeaveSet = false;
    EventHandler<TouchEvent> _onTouchLeave;
    EventHandler<TouchEvent> get onTouchLeave => _onTouchLeave;
    set onTouchLeave(EventHandler<TouchEvent> v) {
        _onTouchLeave = v;
        _onTouchLeaveSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onTouchMoveSub;
    bool _onTouchMoveSet = false;
    EventHandler<TouchEvent> _onTouchMove;
    EventHandler<TouchEvent> get onTouchMove => _onTouchMove;
    set onTouchMove(EventHandler<TouchEvent> v) {
        _onTouchMove = v;
        _onTouchMoveSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onTouchStartSub;
    bool _onTouchStartSet = false;
    EventHandler<TouchEvent> _onTouchStart;
    EventHandler<TouchEvent> get onTouchStart => _onTouchStart;
    set onTouchStart(EventHandler<TouchEvent> v) {
        _onTouchStart = v;
        _onTouchStartSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onTransitionEndSub;
    bool _onTransitionEndSet = false;
    EventHandler<TransitionEvent> _onTransitionEnd;
    EventHandler<TransitionEvent> get onTransitionEnd => _onTransitionEnd;
    set onTransitionEnd(EventHandler<TransitionEvent> v) {
        _onTransitionEnd = v;
        _onTransitionEndSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onVolumeChangeSub;
    bool _onVolumeChangeSet = false;
    EventHandler<Event> _onVolumeChange;
    EventHandler<Event> get onVolumeChange => _onVolumeChange;
    set onVolumeChange(EventHandler<Event> v) {
        _onVolumeChange = v;
        _onVolumeChangeSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onWaitingSub;
    bool _onWaitingSet = false;
    EventHandler<Event> _onWaiting;
    EventHandler<Event> get onWaiting => _onWaiting;
    set onWaiting(EventHandler<Event> v) {
        _onWaiting = v;
        _onWaitingSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onFullscreenChangeSub;
    bool _onFullscreenChangeSet = false;
    EventHandler<Event> _onFullscreenChange;
    EventHandler<Event> get onFullscreenChange => _onFullscreenChange;
    set onFullscreenChange(EventHandler<Event> v) {
        _onFullscreenChange = v;
        _onFullscreenChangeSet = true;
        shouldUpdateSubs = true;
    }
    StreamSubscription _onFullscreenErrorSub;
    bool _onFullscreenErrorSet = false;
    EventHandler<Event> _onFullscreenError;
    EventHandler<Event> get onFullscreenError => _onFullscreenError;
    set onFullscreenError(EventHandler<Event> v) {
        _onFullscreenError = v;
        _onFullscreenErrorSet = true;
        shouldUpdateSubs = true;
    }

    @protected
    void applyAttributesToElement(E ele) {
      _style.forEach(_updateStyle);
      _customAttributes.forEach(_updateAttribute);
      _setValues.forEach(_updateAttribute);
    }

    @protected
    void updateElementAttributes(covariant VElement<E> prev, E ele) {
      prev._style.forEach(_updateStyle);
      prev._customAttributes.forEach(_removeAttributeIfNecessary);
      prev._setValues.forEach(_removeAttributeIfNecessary);

      _style.forEach(_updateStyle);
      _customAttributes.forEach(_updateAttribute);
      _setValues.forEach(_updateAttribute);

      prev._style = _style;
      prev._customAttributes = _customAttributes;
      prev._setValues = _setValues;
    }

    void _updateAttribute(String key, dynamic value) {
      switch(key) {
        case 'text':
            final first = ele.firstChild;
  if (first != null && first == ele.lastChild && first.nodeType == Node.TEXT_NODE) {
    first.text = text;
  } else {
    ele.text = text;
  }

          break;
        
    case 'contentEditable': 
      ele.contentEditable = value as String;
      break;
  
    case 'contextMenu': 
      ele.contextMenu = value as MenuElement;
      break;
  
    case 'dir': 
      ele.dir = value as String;
      break;
  
    case 'draggable': 
      ele.draggable = value as bool;
      break;
  
    case 'hidden': 
      ele.hidden = value as bool;
      break;
  
    case 'lang': 
      ele.lang = value as String;
      break;
  
    case 'spellcheck': 
      ele.spellcheck = value as bool;
      break;
  
    case 'tabIndex': 
      ele.tabIndex = value as int;
      break;
  
    case 'title': 
      ele.title = value as String;
      break;
  
    case 'translate': 
      ele.translate = value as bool;
      break;
  
    case 'dropzone': 
      ele.dropzone = value as String;
      break;
  
    case 'className': 
      ele.className = value as String;
      break;
  
    case 'id': 
      ele.id = value as String;
      break;
  
    case 'slot': 
      ele.slot = value as String;
      break;
  
    case 'attributes': 
      ele.attributes = value as Map<String, String>;
      break;
  
    case 'classes': 
      ele.classes = value as Iterable<String>;
      break;
  
    case 'dataset': 
      ele.dataset = value as Map<String, String>;
      break;
  
    case 'xtag': 
      ele.xtag = value as Element;
      break;
  
    case 'innerHtml': 
      ele.innerHtml = value as String;
      break;
  
    case 'scrollLeft': 
      ele.scrollLeft = value as int;
      break;
  
    case 'scrollTop': 
      ele.scrollTop = value as int;
      break;
  
        default:

      }
    }

    // TODO: find out if more efficient to do lookups or get values/keys to iterate over
    RemoveIfNecessary _removeAttributeIfNecessary(E ele) => (String key, dynamic value) {
      if (_setValues.containsKey(key)) return;
      switch(key) {
        case 'text':
          // TODO: remove text node
          break;
      }
    }

    void applyEventListenersToElement(Element ele) {
      _setSubs.forEach(_applyEventListener);
    }

    void updateEventListenersToElement(VElement prev, Element ele) {
      _setSubs.forEach(_applyEventListener);

      prev._setSubs.forEach(_removeEventListenerIfNeccessary);

      prev._setSubs = _setSubs;
    }

    void _applyEventListener(String key, dynamic value) {
      switch(key) {
        case 'text':
            final first = ele.firstChild;
  if (first != null && first == ele.lastChild && first.nodeType == Node.TEXT_NODE) {
    first.text = text;
  } else {
    ele.text = text;
  }

          break;
      }
    }

    RemoveIfNecessary _removeEventListenerIfNeccessary(E ele) => (String key, dynamic value) {
      if (_setValues.containsKey(key)) return;
      switch(key) {
        case 'text':
          // TODO: remove text node
          break;
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
  