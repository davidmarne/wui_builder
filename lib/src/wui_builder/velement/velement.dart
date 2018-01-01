part of velement;
    // ignore_for_file: annotate_overrides
    // ignore_for_file: overridden_fields

    abstract class VElement<E extends Element> extends VNode {
    @override
    VNodeTypes get vNodeType => VNodeTypes.element;

    var _setValues = <String, dynamic>{};
    var _setSubs = <String, EventHandler>{};
    var _style = <String, String>{};
    var _eventSubs = <String, StreamSubscription>{};
    var attributes = <String, String>{};

    E elementFactory();
    
    // TODO: gen builder for css style
    StyleBuilder styleBuilder;

    var _children = <VNode>[];
    List<VNode> get children => _children;
    set children(Iterable<VNode> c) {
      _children = c.toList();
    }
    
      String get text => _setValues['text'] as String;
  set text(String v) {
      _setValues['text'] = v;
  }

    
  String get contentEditable => _setValues['contentEditable'] as String;
  set contentEditable(String v) {
      _setValues['contentEditable'] = v;
  }
  MenuElement get contextMenu => _setValues['contextMenu'] as MenuElement;
  set contextMenu(MenuElement v) {
      _setValues['contextMenu'] = v;
  }
  String get dir => _setValues['dir'] as String;
  set dir(String v) {
      _setValues['dir'] = v;
  }
  bool get draggable => _setValues['draggable'] as bool;
  set draggable(bool v) {
      _setValues['draggable'] = v;
  }
  bool get hidden => _setValues['hidden'] as bool;
  set hidden(bool v) {
      _setValues['hidden'] = v;
  }
  String get lang => _setValues['lang'] as String;
  set lang(String v) {
      _setValues['lang'] = v;
  }
  bool get spellcheck => _setValues['spellcheck'] as bool;
  set spellcheck(bool v) {
      _setValues['spellcheck'] = v;
  }
  int get tabIndex => _setValues['tabIndex'] as int;
  set tabIndex(int v) {
      _setValues['tabIndex'] = v;
  }
  String get title => _setValues['title'] as String;
  set title(String v) {
      _setValues['title'] = v;
  }
  bool get translate => _setValues['translate'] as bool;
  set translate(bool v) {
      _setValues['translate'] = v;
  }
  String get dropzone => _setValues['dropzone'] as String;
  set dropzone(String v) {
      _setValues['dropzone'] = v;
  }
  String get className => _setValues['className'] as String;
  set className(String v) {
      _setValues['className'] = v;
  }
  String get id => _setValues['id'] as String;
  set id(String v) {
      _setValues['id'] = v;
  }
  String get slot => _setValues['slot'] as String;
  set slot(String v) {
      _setValues['slot'] = v;
  }
  Iterable<String> get classes => _setValues['classes'] as Iterable<String>;
  set classes(Iterable<String> v) {
      _setValues['classes'] = v;
  }
  Map<String, String> get dataset => _setValues['dataset'] as Map<String, String>;
  set dataset(Map<String, String> v) {
      _setValues['dataset'] = v;
  }
  Element get xtag => _setValues['xtag'] as Element;
  set xtag(Element v) {
      _setValues['xtag'] = v;
  }
  String get innerHtml => _setValues['innerHtml'] as String;
  set innerHtml(String v) {
      _setValues['innerHtml'] = v;
  }
  int get scrollLeft => _setValues['scrollLeft'] as int;
  set scrollLeft(int v) {
      _setValues['scrollLeft'] = v;
  }
  int get scrollTop => _setValues['scrollTop'] as int;
  set scrollTop(int v) {
      _setValues['scrollTop'] = v;
  }

    
    EventHandler<Event> get onAbort => _setValues['onAbort'] as EventHandler<Event>;
    set onAbort(EventHandler<Event> v) {
        _setSubs['onAbort'] = v;
    }
    EventHandler<Event> get onBeforeCopy => _setValues['onBeforeCopy'] as EventHandler<Event>;
    set onBeforeCopy(EventHandler<Event> v) {
        _setSubs['onBeforeCopy'] = v;
    }
    EventHandler<Event> get onBeforeCut => _setValues['onBeforeCut'] as EventHandler<Event>;
    set onBeforeCut(EventHandler<Event> v) {
        _setSubs['onBeforeCut'] = v;
    }
    EventHandler<Event> get onBeforePaste => _setValues['onBeforePaste'] as EventHandler<Event>;
    set onBeforePaste(EventHandler<Event> v) {
        _setSubs['onBeforePaste'] = v;
    }
    EventHandler<Event> get onBlur => _setValues['onBlur'] as EventHandler<Event>;
    set onBlur(EventHandler<Event> v) {
        _setSubs['onBlur'] = v;
    }
    EventHandler<Event> get onCanPlay => _setValues['onCanPlay'] as EventHandler<Event>;
    set onCanPlay(EventHandler<Event> v) {
        _setSubs['onCanPlay'] = v;
    }
    EventHandler<Event> get onCanPlayThrough => _setValues['onCanPlayThrough'] as EventHandler<Event>;
    set onCanPlayThrough(EventHandler<Event> v) {
        _setSubs['onCanPlayThrough'] = v;
    }
    EventHandler<Event> get onChange => _setValues['onChange'] as EventHandler<Event>;
    set onChange(EventHandler<Event> v) {
        _setSubs['onChange'] = v;
    }
    EventHandler<MouseEvent> get onClick => _setValues['onClick'] as EventHandler<MouseEvent>;
    set onClick(EventHandler<MouseEvent> v) {
        _setSubs['onClick'] = v;
    }
    EventHandler<MouseEvent> get onContextMenu => _setValues['onContextMenu'] as EventHandler<MouseEvent>;
    set onContextMenu(EventHandler<MouseEvent> v) {
        _setSubs['onContextMenu'] = v;
    }
    EventHandler<ClipboardEvent> get onCopy => _setValues['onCopy'] as EventHandler<ClipboardEvent>;
    set onCopy(EventHandler<ClipboardEvent> v) {
        _setSubs['onCopy'] = v;
    }
    EventHandler<ClipboardEvent> get onCut => _setValues['onCut'] as EventHandler<ClipboardEvent>;
    set onCut(EventHandler<ClipboardEvent> v) {
        _setSubs['onCut'] = v;
    }
    EventHandler<Event> get onDoubleClick => _setValues['onDoubleClick'] as EventHandler<Event>;
    set onDoubleClick(EventHandler<Event> v) {
        _setSubs['onDoubleClick'] = v;
    }
    EventHandler<MouseEvent> get onDrag => _setValues['onDrag'] as EventHandler<MouseEvent>;
    set onDrag(EventHandler<MouseEvent> v) {
        _setSubs['onDrag'] = v;
    }
    EventHandler<MouseEvent> get onDragEnd => _setValues['onDragEnd'] as EventHandler<MouseEvent>;
    set onDragEnd(EventHandler<MouseEvent> v) {
        _setSubs['onDragEnd'] = v;
    }
    EventHandler<MouseEvent> get onDragEnter => _setValues['onDragEnter'] as EventHandler<MouseEvent>;
    set onDragEnter(EventHandler<MouseEvent> v) {
        _setSubs['onDragEnter'] = v;
    }
    EventHandler<MouseEvent> get onDragLeave => _setValues['onDragLeave'] as EventHandler<MouseEvent>;
    set onDragLeave(EventHandler<MouseEvent> v) {
        _setSubs['onDragLeave'] = v;
    }
    EventHandler<MouseEvent> get onDragOver => _setValues['onDragOver'] as EventHandler<MouseEvent>;
    set onDragOver(EventHandler<MouseEvent> v) {
        _setSubs['onDragOver'] = v;
    }
    EventHandler<MouseEvent> get onDragStart => _setValues['onDragStart'] as EventHandler<MouseEvent>;
    set onDragStart(EventHandler<MouseEvent> v) {
        _setSubs['onDragStart'] = v;
    }
    EventHandler<MouseEvent> get onDrop => _setValues['onDrop'] as EventHandler<MouseEvent>;
    set onDrop(EventHandler<MouseEvent> v) {
        _setSubs['onDrop'] = v;
    }
    EventHandler<Event> get onDurationChange => _setValues['onDurationChange'] as EventHandler<Event>;
    set onDurationChange(EventHandler<Event> v) {
        _setSubs['onDurationChange'] = v;
    }
    EventHandler<Event> get onEmptied => _setValues['onEmptied'] as EventHandler<Event>;
    set onEmptied(EventHandler<Event> v) {
        _setSubs['onEmptied'] = v;
    }
    EventHandler<Event> get onEnded => _setValues['onEnded'] as EventHandler<Event>;
    set onEnded(EventHandler<Event> v) {
        _setSubs['onEnded'] = v;
    }
    EventHandler<Event> get onError => _setValues['onError'] as EventHandler<Event>;
    set onError(EventHandler<Event> v) {
        _setSubs['onError'] = v;
    }
    EventHandler<Event> get onFocus => _setValues['onFocus'] as EventHandler<Event>;
    set onFocus(EventHandler<Event> v) {
        _setSubs['onFocus'] = v;
    }
    EventHandler<Event> get onInput => _setValues['onInput'] as EventHandler<Event>;
    set onInput(EventHandler<Event> v) {
        _setSubs['onInput'] = v;
    }
    EventHandler<Event> get onInvalid => _setValues['onInvalid'] as EventHandler<Event>;
    set onInvalid(EventHandler<Event> v) {
        _setSubs['onInvalid'] = v;
    }
    EventHandler<KeyboardEvent> get onKeyDown => _setValues['onKeyDown'] as EventHandler<KeyboardEvent>;
    set onKeyDown(EventHandler<KeyboardEvent> v) {
        _setSubs['onKeyDown'] = v;
    }
    EventHandler<KeyboardEvent> get onKeyPress => _setValues['onKeyPress'] as EventHandler<KeyboardEvent>;
    set onKeyPress(EventHandler<KeyboardEvent> v) {
        _setSubs['onKeyPress'] = v;
    }
    EventHandler<KeyboardEvent> get onKeyUp => _setValues['onKeyUp'] as EventHandler<KeyboardEvent>;
    set onKeyUp(EventHandler<KeyboardEvent> v) {
        _setSubs['onKeyUp'] = v;
    }
    EventHandler<Event> get onLoad => _setValues['onLoad'] as EventHandler<Event>;
    set onLoad(EventHandler<Event> v) {
        _setSubs['onLoad'] = v;
    }
    EventHandler<Event> get onLoadedData => _setValues['onLoadedData'] as EventHandler<Event>;
    set onLoadedData(EventHandler<Event> v) {
        _setSubs['onLoadedData'] = v;
    }
    EventHandler<Event> get onLoadedMetadata => _setValues['onLoadedMetadata'] as EventHandler<Event>;
    set onLoadedMetadata(EventHandler<Event> v) {
        _setSubs['onLoadedMetadata'] = v;
    }
    EventHandler<MouseEvent> get onMouseDown => _setValues['onMouseDown'] as EventHandler<MouseEvent>;
    set onMouseDown(EventHandler<MouseEvent> v) {
        _setSubs['onMouseDown'] = v;
    }
    EventHandler<MouseEvent> get onMouseEnter => _setValues['onMouseEnter'] as EventHandler<MouseEvent>;
    set onMouseEnter(EventHandler<MouseEvent> v) {
        _setSubs['onMouseEnter'] = v;
    }
    EventHandler<MouseEvent> get onMouseLeave => _setValues['onMouseLeave'] as EventHandler<MouseEvent>;
    set onMouseLeave(EventHandler<MouseEvent> v) {
        _setSubs['onMouseLeave'] = v;
    }
    EventHandler<MouseEvent> get onMouseMove => _setValues['onMouseMove'] as EventHandler<MouseEvent>;
    set onMouseMove(EventHandler<MouseEvent> v) {
        _setSubs['onMouseMove'] = v;
    }
    EventHandler<MouseEvent> get onMouseOut => _setValues['onMouseOut'] as EventHandler<MouseEvent>;
    set onMouseOut(EventHandler<MouseEvent> v) {
        _setSubs['onMouseOut'] = v;
    }
    EventHandler<MouseEvent> get onMouseOver => _setValues['onMouseOver'] as EventHandler<MouseEvent>;
    set onMouseOver(EventHandler<MouseEvent> v) {
        _setSubs['onMouseOver'] = v;
    }
    EventHandler<MouseEvent> get onMouseUp => _setValues['onMouseUp'] as EventHandler<MouseEvent>;
    set onMouseUp(EventHandler<MouseEvent> v) {
        _setSubs['onMouseUp'] = v;
    }
    EventHandler<WheelEvent> get onMouseWheel => _setValues['onMouseWheel'] as EventHandler<WheelEvent>;
    set onMouseWheel(EventHandler<WheelEvent> v) {
        _setSubs['onMouseWheel'] = v;
    }
    EventHandler<ClipboardEvent> get onPaste => _setValues['onPaste'] as EventHandler<ClipboardEvent>;
    set onPaste(EventHandler<ClipboardEvent> v) {
        _setSubs['onPaste'] = v;
    }
    EventHandler<Event> get onPause => _setValues['onPause'] as EventHandler<Event>;
    set onPause(EventHandler<Event> v) {
        _setSubs['onPause'] = v;
    }
    EventHandler<Event> get onPlay => _setValues['onPlay'] as EventHandler<Event>;
    set onPlay(EventHandler<Event> v) {
        _setSubs['onPlay'] = v;
    }
    EventHandler<Event> get onPlaying => _setValues['onPlaying'] as EventHandler<Event>;
    set onPlaying(EventHandler<Event> v) {
        _setSubs['onPlaying'] = v;
    }
    EventHandler<Event> get onRateChange => _setValues['onRateChange'] as EventHandler<Event>;
    set onRateChange(EventHandler<Event> v) {
        _setSubs['onRateChange'] = v;
    }
    EventHandler<Event> get onReset => _setValues['onReset'] as EventHandler<Event>;
    set onReset(EventHandler<Event> v) {
        _setSubs['onReset'] = v;
    }
    EventHandler<Event> get onResize => _setValues['onResize'] as EventHandler<Event>;
    set onResize(EventHandler<Event> v) {
        _setSubs['onResize'] = v;
    }
    EventHandler<Event> get onScroll => _setValues['onScroll'] as EventHandler<Event>;
    set onScroll(EventHandler<Event> v) {
        _setSubs['onScroll'] = v;
    }
    EventHandler<Event> get onSearch => _setValues['onSearch'] as EventHandler<Event>;
    set onSearch(EventHandler<Event> v) {
        _setSubs['onSearch'] = v;
    }
    EventHandler<Event> get onSeeked => _setValues['onSeeked'] as EventHandler<Event>;
    set onSeeked(EventHandler<Event> v) {
        _setSubs['onSeeked'] = v;
    }
    EventHandler<Event> get onSeeking => _setValues['onSeeking'] as EventHandler<Event>;
    set onSeeking(EventHandler<Event> v) {
        _setSubs['onSeeking'] = v;
    }
    EventHandler<Event> get onSelect => _setValues['onSelect'] as EventHandler<Event>;
    set onSelect(EventHandler<Event> v) {
        _setSubs['onSelect'] = v;
    }
    EventHandler<Event> get onSelectStart => _setValues['onSelectStart'] as EventHandler<Event>;
    set onSelectStart(EventHandler<Event> v) {
        _setSubs['onSelectStart'] = v;
    }
    EventHandler<Event> get onStalled => _setValues['onStalled'] as EventHandler<Event>;
    set onStalled(EventHandler<Event> v) {
        _setSubs['onStalled'] = v;
    }
    EventHandler<Event> get onSubmit => _setValues['onSubmit'] as EventHandler<Event>;
    set onSubmit(EventHandler<Event> v) {
        _setSubs['onSubmit'] = v;
    }
    EventHandler<Event> get onSuspend => _setValues['onSuspend'] as EventHandler<Event>;
    set onSuspend(EventHandler<Event> v) {
        _setSubs['onSuspend'] = v;
    }
    EventHandler<Event> get onTimeUpdate => _setValues['onTimeUpdate'] as EventHandler<Event>;
    set onTimeUpdate(EventHandler<Event> v) {
        _setSubs['onTimeUpdate'] = v;
    }
    EventHandler<TouchEvent> get onTouchCancel => _setValues['onTouchCancel'] as EventHandler<TouchEvent>;
    set onTouchCancel(EventHandler<TouchEvent> v) {
        _setSubs['onTouchCancel'] = v;
    }
    EventHandler<TouchEvent> get onTouchEnd => _setValues['onTouchEnd'] as EventHandler<TouchEvent>;
    set onTouchEnd(EventHandler<TouchEvent> v) {
        _setSubs['onTouchEnd'] = v;
    }
    EventHandler<TouchEvent> get onTouchEnter => _setValues['onTouchEnter'] as EventHandler<TouchEvent>;
    set onTouchEnter(EventHandler<TouchEvent> v) {
        _setSubs['onTouchEnter'] = v;
    }
    EventHandler<TouchEvent> get onTouchLeave => _setValues['onTouchLeave'] as EventHandler<TouchEvent>;
    set onTouchLeave(EventHandler<TouchEvent> v) {
        _setSubs['onTouchLeave'] = v;
    }
    EventHandler<TouchEvent> get onTouchMove => _setValues['onTouchMove'] as EventHandler<TouchEvent>;
    set onTouchMove(EventHandler<TouchEvent> v) {
        _setSubs['onTouchMove'] = v;
    }
    EventHandler<TouchEvent> get onTouchStart => _setValues['onTouchStart'] as EventHandler<TouchEvent>;
    set onTouchStart(EventHandler<TouchEvent> v) {
        _setSubs['onTouchStart'] = v;
    }
    EventHandler<TransitionEvent> get onTransitionEnd => _setValues['onTransitionEnd'] as EventHandler<TransitionEvent>;
    set onTransitionEnd(EventHandler<TransitionEvent> v) {
        _setSubs['onTransitionEnd'] = v;
    }
    EventHandler<Event> get onVolumeChange => _setValues['onVolumeChange'] as EventHandler<Event>;
    set onVolumeChange(EventHandler<Event> v) {
        _setSubs['onVolumeChange'] = v;
    }
    EventHandler<Event> get onWaiting => _setValues['onWaiting'] as EventHandler<Event>;
    set onWaiting(EventHandler<Event> v) {
        _setSubs['onWaiting'] = v;
    }
    EventHandler<Event> get onFullscreenChange => _setValues['onFullscreenChange'] as EventHandler<Event>;
    set onFullscreenChange(EventHandler<Event> v) {
        _setSubs['onFullscreenChange'] = v;
    }
    EventHandler<Event> get onFullscreenError => _setValues['onFullscreenError'] as EventHandler<Event>;
    set onFullscreenError(EventHandler<Event> v) {
        _setSubs['onFullscreenError'] = v;
    }

    @protected
    void applyAttributesToElement(E ele) {
     // _style.forEach(_updateStyle);
      attributes.forEach((k, v) => _updateCustomAttribute(ele, k, v));
      _setValues.forEach((k, dynamic v) => _updateAttribute(ele, k, v));
    }

    @protected
    void updateElementAttributes(covariant VElement<E> prev, E ele) {
      //prev._style.forEach(_updateStyle);
      prev.attributes.forEach((k, v) => _removeCustomAttributeIfNecessary(ele, k, v));
      prev._setValues.forEach((k, dynamic v) => _removeAttributeIfNecessary(ele, k, v));

      //_style.forEach(_updateStyle);
      attributes.forEach((k, v) => _updateCustomAttribute(ele, k, v));
      _setValues.forEach((k, dynamic v) => _updateAttribute(ele, k, v));

      prev._style = _style;
      prev.attributes = attributes;
      prev._setValues = _setValues;
    }

    void _updateAttribute(Element ele, String key, dynamic value) {
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
  
      }
    }

    void _updateCustomAttribute(Element ele, String key, dynamic value) {
      ele.attributes[key] = value as String;
    }

    void _removeAttributeIfNecessary(E ele, String key, dynamic value) {
      if (_setValues.containsKey(key)) return;
      switch(key) {
        case 'text':
          // TODO: remove text node
          break;
        
    case 'contentEditable': 
      ele.contentEditable = null;
      break;
  
    case 'contextMenu': 
      ele.contextMenu = null;
      break;
  
    case 'dir': 
      ele.dir = null;
      break;
  
    case 'draggable': 
      ele.draggable = null;
      break;
  
    case 'hidden': 
      ele.hidden = null;
      break;
  
    case 'lang': 
      ele.lang = null;
      break;
  
    case 'spellcheck': 
      ele.spellcheck = null;
      break;
  
    case 'tabIndex': 
      ele.tabIndex = null;
      break;
  
    case 'title': 
      ele.title = null;
      break;
  
    case 'translate': 
      ele.translate = null;
      break;
  
    case 'dropzone': 
      ele.dropzone = null;
      break;
  
    case 'className': 
      ele.className = null;
      break;
  
    case 'id': 
      ele.id = null;
      break;
  
    case 'slot': 
      ele.slot = null;
      break;
  
    case 'classes': 
      ele.classes = null;
      break;
  
    case 'dataset': 
      ele.dataset = null;
      break;
  
    case 'xtag': 
      ele.xtag = null;
      break;
  
    case 'innerHtml': 
      ele.innerHtml = null;
      break;
  
    case 'scrollLeft': 
      ele.scrollLeft = null;
      break;
  
    case 'scrollTop': 
      ele.scrollTop = null;
      break;
  
      }
    }

    void _removeCustomAttributeIfNecessary(E ele, String key, dynamic value) {
      if (attributes.containsKey(key)) return;
        ele.attributes[key] = null;
    }

    void applyEventListenersToElement(Element ele) {
      _setSubs.forEach((k, dynamic v) => _applyEventListener(ele, k, v));
    }

    void updateEventListenersToElement(VElement prev, Element ele) {
      _setSubs.forEach((k, v) => _applyEventListener(ele, k, v));
      prev._setSubs.forEach(_removeEventListenerIfNeccessary);
      prev._setSubs = _setSubs;
      prev._eventSubs = _eventSubs;
    }

    void _applyEventListener(Element ele, String key, dynamic value) {
      switch(key) {
        
    case 'onAbort': 
      _eventSubs['onAbort'] = ele.onAbort.listen(_setSubs['onAbort'] as EventHandler<Event>);
      break;
  
    case 'onBeforeCopy': 
      _eventSubs['onBeforeCopy'] = ele.onBeforeCopy.listen(_setSubs['onBeforeCopy'] as EventHandler<Event>);
      break;
  
    case 'onBeforeCut': 
      _eventSubs['onBeforeCut'] = ele.onBeforeCut.listen(_setSubs['onBeforeCut'] as EventHandler<Event>);
      break;
  
    case 'onBeforePaste': 
      _eventSubs['onBeforePaste'] = ele.onBeforePaste.listen(_setSubs['onBeforePaste'] as EventHandler<Event>);
      break;
  
    case 'onBlur': 
      _eventSubs['onBlur'] = ele.onBlur.listen(_setSubs['onBlur'] as EventHandler<Event>);
      break;
  
    case 'onCanPlay': 
      _eventSubs['onCanPlay'] = ele.onCanPlay.listen(_setSubs['onCanPlay'] as EventHandler<Event>);
      break;
  
    case 'onCanPlayThrough': 
      _eventSubs['onCanPlayThrough'] = ele.onCanPlayThrough.listen(_setSubs['onCanPlayThrough'] as EventHandler<Event>);
      break;
  
    case 'onChange': 
      _eventSubs['onChange'] = ele.onChange.listen(_setSubs['onChange'] as EventHandler<Event>);
      break;
  
    case 'onClick': 
      _eventSubs['onClick'] = ele.onClick.listen(_setSubs['onClick'] as EventHandler<MouseEvent>);
      break;
  
    case 'onContextMenu': 
      _eventSubs['onContextMenu'] = ele.onContextMenu.listen(_setSubs['onContextMenu'] as EventHandler<MouseEvent>);
      break;
  
    case 'onCopy': 
      _eventSubs['onCopy'] = ele.onCopy.listen(_setSubs['onCopy'] as EventHandler<ClipboardEvent>);
      break;
  
    case 'onCut': 
      _eventSubs['onCut'] = ele.onCut.listen(_setSubs['onCut'] as EventHandler<ClipboardEvent>);
      break;
  
    case 'onDoubleClick': 
      _eventSubs['onDoubleClick'] = ele.onDoubleClick.listen(_setSubs['onDoubleClick'] as EventHandler<Event>);
      break;
  
    case 'onDrag': 
      _eventSubs['onDrag'] = ele.onDrag.listen(_setSubs['onDrag'] as EventHandler<MouseEvent>);
      break;
  
    case 'onDragEnd': 
      _eventSubs['onDragEnd'] = ele.onDragEnd.listen(_setSubs['onDragEnd'] as EventHandler<MouseEvent>);
      break;
  
    case 'onDragEnter': 
      _eventSubs['onDragEnter'] = ele.onDragEnter.listen(_setSubs['onDragEnter'] as EventHandler<MouseEvent>);
      break;
  
    case 'onDragLeave': 
      _eventSubs['onDragLeave'] = ele.onDragLeave.listen(_setSubs['onDragLeave'] as EventHandler<MouseEvent>);
      break;
  
    case 'onDragOver': 
      _eventSubs['onDragOver'] = ele.onDragOver.listen(_setSubs['onDragOver'] as EventHandler<MouseEvent>);
      break;
  
    case 'onDragStart': 
      _eventSubs['onDragStart'] = ele.onDragStart.listen(_setSubs['onDragStart'] as EventHandler<MouseEvent>);
      break;
  
    case 'onDrop': 
      _eventSubs['onDrop'] = ele.onDrop.listen(_setSubs['onDrop'] as EventHandler<MouseEvent>);
      break;
  
    case 'onDurationChange': 
      _eventSubs['onDurationChange'] = ele.onDurationChange.listen(_setSubs['onDurationChange'] as EventHandler<Event>);
      break;
  
    case 'onEmptied': 
      _eventSubs['onEmptied'] = ele.onEmptied.listen(_setSubs['onEmptied'] as EventHandler<Event>);
      break;
  
    case 'onEnded': 
      _eventSubs['onEnded'] = ele.onEnded.listen(_setSubs['onEnded'] as EventHandler<Event>);
      break;
  
    case 'onError': 
      _eventSubs['onError'] = ele.onError.listen(_setSubs['onError'] as EventHandler<Event>);
      break;
  
    case 'onFocus': 
      _eventSubs['onFocus'] = ele.onFocus.listen(_setSubs['onFocus'] as EventHandler<Event>);
      break;
  
    case 'onInput': 
      _eventSubs['onInput'] = ele.onInput.listen(_setSubs['onInput'] as EventHandler<Event>);
      break;
  
    case 'onInvalid': 
      _eventSubs['onInvalid'] = ele.onInvalid.listen(_setSubs['onInvalid'] as EventHandler<Event>);
      break;
  
    case 'onKeyDown': 
      _eventSubs['onKeyDown'] = ele.onKeyDown.listen(_setSubs['onKeyDown'] as EventHandler<KeyboardEvent>);
      break;
  
    case 'onKeyPress': 
      _eventSubs['onKeyPress'] = ele.onKeyPress.listen(_setSubs['onKeyPress'] as EventHandler<KeyboardEvent>);
      break;
  
    case 'onKeyUp': 
      _eventSubs['onKeyUp'] = ele.onKeyUp.listen(_setSubs['onKeyUp'] as EventHandler<KeyboardEvent>);
      break;
  
    case 'onLoad': 
      _eventSubs['onLoad'] = ele.onLoad.listen(_setSubs['onLoad'] as EventHandler<Event>);
      break;
  
    case 'onLoadedData': 
      _eventSubs['onLoadedData'] = ele.onLoadedData.listen(_setSubs['onLoadedData'] as EventHandler<Event>);
      break;
  
    case 'onLoadedMetadata': 
      _eventSubs['onLoadedMetadata'] = ele.onLoadedMetadata.listen(_setSubs['onLoadedMetadata'] as EventHandler<Event>);
      break;
  
    case 'onMouseDown': 
      _eventSubs['onMouseDown'] = ele.onMouseDown.listen(_setSubs['onMouseDown'] as EventHandler<MouseEvent>);
      break;
  
    case 'onMouseEnter': 
      _eventSubs['onMouseEnter'] = ele.onMouseEnter.listen(_setSubs['onMouseEnter'] as EventHandler<MouseEvent>);
      break;
  
    case 'onMouseLeave': 
      _eventSubs['onMouseLeave'] = ele.onMouseLeave.listen(_setSubs['onMouseLeave'] as EventHandler<MouseEvent>);
      break;
  
    case 'onMouseMove': 
      _eventSubs['onMouseMove'] = ele.onMouseMove.listen(_setSubs['onMouseMove'] as EventHandler<MouseEvent>);
      break;
  
    case 'onMouseOut': 
      _eventSubs['onMouseOut'] = ele.onMouseOut.listen(_setSubs['onMouseOut'] as EventHandler<MouseEvent>);
      break;
  
    case 'onMouseOver': 
      _eventSubs['onMouseOver'] = ele.onMouseOver.listen(_setSubs['onMouseOver'] as EventHandler<MouseEvent>);
      break;
  
    case 'onMouseUp': 
      _eventSubs['onMouseUp'] = ele.onMouseUp.listen(_setSubs['onMouseUp'] as EventHandler<MouseEvent>);
      break;
  
    case 'onMouseWheel': 
      _eventSubs['onMouseWheel'] = ele.onMouseWheel.listen(_setSubs['onMouseWheel'] as EventHandler<WheelEvent>);
      break;
  
    case 'onPaste': 
      _eventSubs['onPaste'] = ele.onPaste.listen(_setSubs['onPaste'] as EventHandler<ClipboardEvent>);
      break;
  
    case 'onPause': 
      _eventSubs['onPause'] = ele.onPause.listen(_setSubs['onPause'] as EventHandler<Event>);
      break;
  
    case 'onPlay': 
      _eventSubs['onPlay'] = ele.onPlay.listen(_setSubs['onPlay'] as EventHandler<Event>);
      break;
  
    case 'onPlaying': 
      _eventSubs['onPlaying'] = ele.onPlaying.listen(_setSubs['onPlaying'] as EventHandler<Event>);
      break;
  
    case 'onRateChange': 
      _eventSubs['onRateChange'] = ele.onRateChange.listen(_setSubs['onRateChange'] as EventHandler<Event>);
      break;
  
    case 'onReset': 
      _eventSubs['onReset'] = ele.onReset.listen(_setSubs['onReset'] as EventHandler<Event>);
      break;
  
    case 'onResize': 
      _eventSubs['onResize'] = ele.onResize.listen(_setSubs['onResize'] as EventHandler<Event>);
      break;
  
    case 'onScroll': 
      _eventSubs['onScroll'] = ele.onScroll.listen(_setSubs['onScroll'] as EventHandler<Event>);
      break;
  
    case 'onSearch': 
      _eventSubs['onSearch'] = ele.onSearch.listen(_setSubs['onSearch'] as EventHandler<Event>);
      break;
  
    case 'onSeeked': 
      _eventSubs['onSeeked'] = ele.onSeeked.listen(_setSubs['onSeeked'] as EventHandler<Event>);
      break;
  
    case 'onSeeking': 
      _eventSubs['onSeeking'] = ele.onSeeking.listen(_setSubs['onSeeking'] as EventHandler<Event>);
      break;
  
    case 'onSelect': 
      _eventSubs['onSelect'] = ele.onSelect.listen(_setSubs['onSelect'] as EventHandler<Event>);
      break;
  
    case 'onSelectStart': 
      _eventSubs['onSelectStart'] = ele.onSelectStart.listen(_setSubs['onSelectStart'] as EventHandler<Event>);
      break;
  
    case 'onStalled': 
      _eventSubs['onStalled'] = ele.onStalled.listen(_setSubs['onStalled'] as EventHandler<Event>);
      break;
  
    case 'onSubmit': 
      _eventSubs['onSubmit'] = ele.onSubmit.listen(_setSubs['onSubmit'] as EventHandler<Event>);
      break;
  
    case 'onSuspend': 
      _eventSubs['onSuspend'] = ele.onSuspend.listen(_setSubs['onSuspend'] as EventHandler<Event>);
      break;
  
    case 'onTimeUpdate': 
      _eventSubs['onTimeUpdate'] = ele.onTimeUpdate.listen(_setSubs['onTimeUpdate'] as EventHandler<Event>);
      break;
  
    case 'onTouchCancel': 
      _eventSubs['onTouchCancel'] = ele.onTouchCancel.listen(_setSubs['onTouchCancel'] as EventHandler<TouchEvent>);
      break;
  
    case 'onTouchEnd': 
      _eventSubs['onTouchEnd'] = ele.onTouchEnd.listen(_setSubs['onTouchEnd'] as EventHandler<TouchEvent>);
      break;
  
    case 'onTouchEnter': 
      _eventSubs['onTouchEnter'] = ele.onTouchEnter.listen(_setSubs['onTouchEnter'] as EventHandler<TouchEvent>);
      break;
  
    case 'onTouchLeave': 
      _eventSubs['onTouchLeave'] = ele.onTouchLeave.listen(_setSubs['onTouchLeave'] as EventHandler<TouchEvent>);
      break;
  
    case 'onTouchMove': 
      _eventSubs['onTouchMove'] = ele.onTouchMove.listen(_setSubs['onTouchMove'] as EventHandler<TouchEvent>);
      break;
  
    case 'onTouchStart': 
      _eventSubs['onTouchStart'] = ele.onTouchStart.listen(_setSubs['onTouchStart'] as EventHandler<TouchEvent>);
      break;
  
    case 'onTransitionEnd': 
      _eventSubs['onTransitionEnd'] = ele.onTransitionEnd.listen(_setSubs['onTransitionEnd'] as EventHandler<TransitionEvent>);
      break;
  
    case 'onVolumeChange': 
      _eventSubs['onVolumeChange'] = ele.onVolumeChange.listen(_setSubs['onVolumeChange'] as EventHandler<Event>);
      break;
  
    case 'onWaiting': 
      _eventSubs['onWaiting'] = ele.onWaiting.listen(_setSubs['onWaiting'] as EventHandler<Event>);
      break;
  
    case 'onFullscreenChange': 
      _eventSubs['onFullscreenChange'] = ele.onFullscreenChange.listen(_setSubs['onFullscreenChange'] as EventHandler<Event>);
      break;
  
    case 'onFullscreenError': 
      _eventSubs['onFullscreenError'] = ele.onFullscreenError.listen(_setSubs['onFullscreenError'] as EventHandler<Event>);
      break;
  
      }
    }

    void _removeEventListenerIfNeccessary(String key, dynamic value) {
      if (_setSubs.containsKey(key)) return;
      _eventSubs[key].cancel();
      _eventSubs[key] = null;
    }

    void dispose() {
      for (final sub in _eventSubs.values)
        sub.cancel();
      _eventSubs = null;
    }
  }
  