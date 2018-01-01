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

    
    EventHandler<Event> get onAbort => _setSubs['onAbort'] as EventHandler<Event>;
    set onAbort(EventHandler<Event> v) {
        _setSubs['onAbort'] = v;
    }
    EventHandler<Event> get onBeforeCopy => _setSubs['onBeforeCopy'] as EventHandler<Event>;
    set onBeforeCopy(EventHandler<Event> v) {
        _setSubs['onBeforeCopy'] = v;
    }
    EventHandler<Event> get onBeforeCut => _setSubs['onBeforeCut'] as EventHandler<Event>;
    set onBeforeCut(EventHandler<Event> v) {
        _setSubs['onBeforeCut'] = v;
    }
    EventHandler<Event> get onBeforePaste => _setSubs['onBeforePaste'] as EventHandler<Event>;
    set onBeforePaste(EventHandler<Event> v) {
        _setSubs['onBeforePaste'] = v;
    }
    EventHandler<Event> get onBlur => _setSubs['onBlur'] as EventHandler<Event>;
    set onBlur(EventHandler<Event> v) {
        _setSubs['onBlur'] = v;
    }
    EventHandler<Event> get onCanPlay => _setSubs['onCanPlay'] as EventHandler<Event>;
    set onCanPlay(EventHandler<Event> v) {
        _setSubs['onCanPlay'] = v;
    }
    EventHandler<Event> get onCanPlayThrough => _setSubs['onCanPlayThrough'] as EventHandler<Event>;
    set onCanPlayThrough(EventHandler<Event> v) {
        _setSubs['onCanPlayThrough'] = v;
    }
    EventHandler<Event> get onChange => _setSubs['onChange'] as EventHandler<Event>;
    set onChange(EventHandler<Event> v) {
        _setSubs['onChange'] = v;
    }
    EventHandler<MouseEvent> get onClick => _setSubs['onClick'] as EventHandler<MouseEvent>;
    set onClick(EventHandler<MouseEvent> v) {
        _setSubs['onClick'] = v;
    }
    EventHandler<MouseEvent> get onContextMenu => _setSubs['onContextMenu'] as EventHandler<MouseEvent>;
    set onContextMenu(EventHandler<MouseEvent> v) {
        _setSubs['onContextMenu'] = v;
    }
    EventHandler<ClipboardEvent> get onCopy => _setSubs['onCopy'] as EventHandler<ClipboardEvent>;
    set onCopy(EventHandler<ClipboardEvent> v) {
        _setSubs['onCopy'] = v;
    }
    EventHandler<ClipboardEvent> get onCut => _setSubs['onCut'] as EventHandler<ClipboardEvent>;
    set onCut(EventHandler<ClipboardEvent> v) {
        _setSubs['onCut'] = v;
    }
    EventHandler<Event> get onDoubleClick => _setSubs['onDoubleClick'] as EventHandler<Event>;
    set onDoubleClick(EventHandler<Event> v) {
        _setSubs['onDoubleClick'] = v;
    }
    EventHandler<MouseEvent> get onDrag => _setSubs['onDrag'] as EventHandler<MouseEvent>;
    set onDrag(EventHandler<MouseEvent> v) {
        _setSubs['onDrag'] = v;
    }
    EventHandler<MouseEvent> get onDragEnd => _setSubs['onDragEnd'] as EventHandler<MouseEvent>;
    set onDragEnd(EventHandler<MouseEvent> v) {
        _setSubs['onDragEnd'] = v;
    }
    EventHandler<MouseEvent> get onDragEnter => _setSubs['onDragEnter'] as EventHandler<MouseEvent>;
    set onDragEnter(EventHandler<MouseEvent> v) {
        _setSubs['onDragEnter'] = v;
    }
    EventHandler<MouseEvent> get onDragLeave => _setSubs['onDragLeave'] as EventHandler<MouseEvent>;
    set onDragLeave(EventHandler<MouseEvent> v) {
        _setSubs['onDragLeave'] = v;
    }
    EventHandler<MouseEvent> get onDragOver => _setSubs['onDragOver'] as EventHandler<MouseEvent>;
    set onDragOver(EventHandler<MouseEvent> v) {
        _setSubs['onDragOver'] = v;
    }
    EventHandler<MouseEvent> get onDragStart => _setSubs['onDragStart'] as EventHandler<MouseEvent>;
    set onDragStart(EventHandler<MouseEvent> v) {
        _setSubs['onDragStart'] = v;
    }
    EventHandler<MouseEvent> get onDrop => _setSubs['onDrop'] as EventHandler<MouseEvent>;
    set onDrop(EventHandler<MouseEvent> v) {
        _setSubs['onDrop'] = v;
    }
    EventHandler<Event> get onDurationChange => _setSubs['onDurationChange'] as EventHandler<Event>;
    set onDurationChange(EventHandler<Event> v) {
        _setSubs['onDurationChange'] = v;
    }
    EventHandler<Event> get onEmptied => _setSubs['onEmptied'] as EventHandler<Event>;
    set onEmptied(EventHandler<Event> v) {
        _setSubs['onEmptied'] = v;
    }
    EventHandler<Event> get onEnded => _setSubs['onEnded'] as EventHandler<Event>;
    set onEnded(EventHandler<Event> v) {
        _setSubs['onEnded'] = v;
    }
    EventHandler<Event> get onError => _setSubs['onError'] as EventHandler<Event>;
    set onError(EventHandler<Event> v) {
        _setSubs['onError'] = v;
    }
    EventHandler<Event> get onFocus => _setSubs['onFocus'] as EventHandler<Event>;
    set onFocus(EventHandler<Event> v) {
        _setSubs['onFocus'] = v;
    }
    EventHandler<Event> get onInput => _setSubs['onInput'] as EventHandler<Event>;
    set onInput(EventHandler<Event> v) {
        _setSubs['onInput'] = v;
    }
    EventHandler<Event> get onInvalid => _setSubs['onInvalid'] as EventHandler<Event>;
    set onInvalid(EventHandler<Event> v) {
        _setSubs['onInvalid'] = v;
    }
    EventHandler<KeyboardEvent> get onKeyDown => _setSubs['onKeyDown'] as EventHandler<KeyboardEvent>;
    set onKeyDown(EventHandler<KeyboardEvent> v) {
        _setSubs['onKeyDown'] = v;
    }
    EventHandler<KeyboardEvent> get onKeyPress => _setSubs['onKeyPress'] as EventHandler<KeyboardEvent>;
    set onKeyPress(EventHandler<KeyboardEvent> v) {
        _setSubs['onKeyPress'] = v;
    }
    EventHandler<KeyboardEvent> get onKeyUp => _setSubs['onKeyUp'] as EventHandler<KeyboardEvent>;
    set onKeyUp(EventHandler<KeyboardEvent> v) {
        _setSubs['onKeyUp'] = v;
    }
    EventHandler<Event> get onLoad => _setSubs['onLoad'] as EventHandler<Event>;
    set onLoad(EventHandler<Event> v) {
        _setSubs['onLoad'] = v;
    }
    EventHandler<Event> get onLoadedData => _setSubs['onLoadedData'] as EventHandler<Event>;
    set onLoadedData(EventHandler<Event> v) {
        _setSubs['onLoadedData'] = v;
    }
    EventHandler<Event> get onLoadedMetadata => _setSubs['onLoadedMetadata'] as EventHandler<Event>;
    set onLoadedMetadata(EventHandler<Event> v) {
        _setSubs['onLoadedMetadata'] = v;
    }
    EventHandler<MouseEvent> get onMouseDown => _setSubs['onMouseDown'] as EventHandler<MouseEvent>;
    set onMouseDown(EventHandler<MouseEvent> v) {
        _setSubs['onMouseDown'] = v;
    }
    EventHandler<MouseEvent> get onMouseEnter => _setSubs['onMouseEnter'] as EventHandler<MouseEvent>;
    set onMouseEnter(EventHandler<MouseEvent> v) {
        _setSubs['onMouseEnter'] = v;
    }
    EventHandler<MouseEvent> get onMouseLeave => _setSubs['onMouseLeave'] as EventHandler<MouseEvent>;
    set onMouseLeave(EventHandler<MouseEvent> v) {
        _setSubs['onMouseLeave'] = v;
    }
    EventHandler<MouseEvent> get onMouseMove => _setSubs['onMouseMove'] as EventHandler<MouseEvent>;
    set onMouseMove(EventHandler<MouseEvent> v) {
        _setSubs['onMouseMove'] = v;
    }
    EventHandler<MouseEvent> get onMouseOut => _setSubs['onMouseOut'] as EventHandler<MouseEvent>;
    set onMouseOut(EventHandler<MouseEvent> v) {
        _setSubs['onMouseOut'] = v;
    }
    EventHandler<MouseEvent> get onMouseOver => _setSubs['onMouseOver'] as EventHandler<MouseEvent>;
    set onMouseOver(EventHandler<MouseEvent> v) {
        _setSubs['onMouseOver'] = v;
    }
    EventHandler<MouseEvent> get onMouseUp => _setSubs['onMouseUp'] as EventHandler<MouseEvent>;
    set onMouseUp(EventHandler<MouseEvent> v) {
        _setSubs['onMouseUp'] = v;
    }
    EventHandler<WheelEvent> get onMouseWheel => _setSubs['onMouseWheel'] as EventHandler<WheelEvent>;
    set onMouseWheel(EventHandler<WheelEvent> v) {
        _setSubs['onMouseWheel'] = v;
    }
    EventHandler<ClipboardEvent> get onPaste => _setSubs['onPaste'] as EventHandler<ClipboardEvent>;
    set onPaste(EventHandler<ClipboardEvent> v) {
        _setSubs['onPaste'] = v;
    }
    EventHandler<Event> get onPause => _setSubs['onPause'] as EventHandler<Event>;
    set onPause(EventHandler<Event> v) {
        _setSubs['onPause'] = v;
    }
    EventHandler<Event> get onPlay => _setSubs['onPlay'] as EventHandler<Event>;
    set onPlay(EventHandler<Event> v) {
        _setSubs['onPlay'] = v;
    }
    EventHandler<Event> get onPlaying => _setSubs['onPlaying'] as EventHandler<Event>;
    set onPlaying(EventHandler<Event> v) {
        _setSubs['onPlaying'] = v;
    }
    EventHandler<Event> get onRateChange => _setSubs['onRateChange'] as EventHandler<Event>;
    set onRateChange(EventHandler<Event> v) {
        _setSubs['onRateChange'] = v;
    }
    EventHandler<Event> get onReset => _setSubs['onReset'] as EventHandler<Event>;
    set onReset(EventHandler<Event> v) {
        _setSubs['onReset'] = v;
    }
    EventHandler<Event> get onResize => _setSubs['onResize'] as EventHandler<Event>;
    set onResize(EventHandler<Event> v) {
        _setSubs['onResize'] = v;
    }
    EventHandler<Event> get onScroll => _setSubs['onScroll'] as EventHandler<Event>;
    set onScroll(EventHandler<Event> v) {
        _setSubs['onScroll'] = v;
    }
    EventHandler<Event> get onSearch => _setSubs['onSearch'] as EventHandler<Event>;
    set onSearch(EventHandler<Event> v) {
        _setSubs['onSearch'] = v;
    }
    EventHandler<Event> get onSeeked => _setSubs['onSeeked'] as EventHandler<Event>;
    set onSeeked(EventHandler<Event> v) {
        _setSubs['onSeeked'] = v;
    }
    EventHandler<Event> get onSeeking => _setSubs['onSeeking'] as EventHandler<Event>;
    set onSeeking(EventHandler<Event> v) {
        _setSubs['onSeeking'] = v;
    }
    EventHandler<Event> get onSelect => _setSubs['onSelect'] as EventHandler<Event>;
    set onSelect(EventHandler<Event> v) {
        _setSubs['onSelect'] = v;
    }
    EventHandler<Event> get onSelectStart => _setSubs['onSelectStart'] as EventHandler<Event>;
    set onSelectStart(EventHandler<Event> v) {
        _setSubs['onSelectStart'] = v;
    }
    EventHandler<Event> get onStalled => _setSubs['onStalled'] as EventHandler<Event>;
    set onStalled(EventHandler<Event> v) {
        _setSubs['onStalled'] = v;
    }
    EventHandler<Event> get onSubmit => _setSubs['onSubmit'] as EventHandler<Event>;
    set onSubmit(EventHandler<Event> v) {
        _setSubs['onSubmit'] = v;
    }
    EventHandler<Event> get onSuspend => _setSubs['onSuspend'] as EventHandler<Event>;
    set onSuspend(EventHandler<Event> v) {
        _setSubs['onSuspend'] = v;
    }
    EventHandler<Event> get onTimeUpdate => _setSubs['onTimeUpdate'] as EventHandler<Event>;
    set onTimeUpdate(EventHandler<Event> v) {
        _setSubs['onTimeUpdate'] = v;
    }
    EventHandler<TouchEvent> get onTouchCancel => _setSubs['onTouchCancel'] as EventHandler<TouchEvent>;
    set onTouchCancel(EventHandler<TouchEvent> v) {
        _setSubs['onTouchCancel'] = v;
    }
    EventHandler<TouchEvent> get onTouchEnd => _setSubs['onTouchEnd'] as EventHandler<TouchEvent>;
    set onTouchEnd(EventHandler<TouchEvent> v) {
        _setSubs['onTouchEnd'] = v;
    }
    EventHandler<TouchEvent> get onTouchEnter => _setSubs['onTouchEnter'] as EventHandler<TouchEvent>;
    set onTouchEnter(EventHandler<TouchEvent> v) {
        _setSubs['onTouchEnter'] = v;
    }
    EventHandler<TouchEvent> get onTouchLeave => _setSubs['onTouchLeave'] as EventHandler<TouchEvent>;
    set onTouchLeave(EventHandler<TouchEvent> v) {
        _setSubs['onTouchLeave'] = v;
    }
    EventHandler<TouchEvent> get onTouchMove => _setSubs['onTouchMove'] as EventHandler<TouchEvent>;
    set onTouchMove(EventHandler<TouchEvent> v) {
        _setSubs['onTouchMove'] = v;
    }
    EventHandler<TouchEvent> get onTouchStart => _setSubs['onTouchStart'] as EventHandler<TouchEvent>;
    set onTouchStart(EventHandler<TouchEvent> v) {
        _setSubs['onTouchStart'] = v;
    }
    EventHandler<TransitionEvent> get onTransitionEnd => _setSubs['onTransitionEnd'] as EventHandler<TransitionEvent>;
    set onTransitionEnd(EventHandler<TransitionEvent> v) {
        _setSubs['onTransitionEnd'] = v;
    }
    EventHandler<Event> get onVolumeChange => _setSubs['onVolumeChange'] as EventHandler<Event>;
    set onVolumeChange(EventHandler<Event> v) {
        _setSubs['onVolumeChange'] = v;
    }
    EventHandler<Event> get onWaiting => _setSubs['onWaiting'] as EventHandler<Event>;
    set onWaiting(EventHandler<Event> v) {
        _setSubs['onWaiting'] = v;
    }
    EventHandler<Event> get onFullscreenChange => _setSubs['onFullscreenChange'] as EventHandler<Event>;
    set onFullscreenChange(EventHandler<Event> v) {
        _setSubs['onFullscreenChange'] = v;
    }
    EventHandler<Event> get onFullscreenError => _setSubs['onFullscreenError'] as EventHandler<Event>;
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
      _setSubs.forEach((k, v) => _removeEventListenerIfNeccessary(prev, k, v));
      prev._setSubs = _setSubs;
      prev._setSubs.forEach((k, v) => prev._applyEventListener(ele, k, v));
    }

    void _applyEventListener(Element ele, String key, dynamic value) {
      if (_eventSubs.containsKey(key)) return;
      switch(key) {
        
    case 'onAbort': 
      _eventSubs['onAbort'] = ele.onAbort.listen(onAbort);
      break;
  
    case 'onBeforeCopy': 
      _eventSubs['onBeforeCopy'] = ele.onBeforeCopy.listen(onBeforeCopy);
      break;
  
    case 'onBeforeCut': 
      _eventSubs['onBeforeCut'] = ele.onBeforeCut.listen(onBeforeCut);
      break;
  
    case 'onBeforePaste': 
      _eventSubs['onBeforePaste'] = ele.onBeforePaste.listen(onBeforePaste);
      break;
  
    case 'onBlur': 
      _eventSubs['onBlur'] = ele.onBlur.listen(onBlur);
      break;
  
    case 'onCanPlay': 
      _eventSubs['onCanPlay'] = ele.onCanPlay.listen(onCanPlay);
      break;
  
    case 'onCanPlayThrough': 
      _eventSubs['onCanPlayThrough'] = ele.onCanPlayThrough.listen(onCanPlayThrough);
      break;
  
    case 'onChange': 
      _eventSubs['onChange'] = ele.onChange.listen(onChange);
      break;
  
    case 'onClick': 
      _eventSubs['onClick'] = ele.onClick.listen(onClick);
      break;
  
    case 'onContextMenu': 
      _eventSubs['onContextMenu'] = ele.onContextMenu.listen(onContextMenu);
      break;
  
    case 'onCopy': 
      _eventSubs['onCopy'] = ele.onCopy.listen(onCopy);
      break;
  
    case 'onCut': 
      _eventSubs['onCut'] = ele.onCut.listen(onCut);
      break;
  
    case 'onDoubleClick': 
      _eventSubs['onDoubleClick'] = ele.onDoubleClick.listen(onDoubleClick);
      break;
  
    case 'onDrag': 
      _eventSubs['onDrag'] = ele.onDrag.listen(onDrag);
      break;
  
    case 'onDragEnd': 
      _eventSubs['onDragEnd'] = ele.onDragEnd.listen(onDragEnd);
      break;
  
    case 'onDragEnter': 
      _eventSubs['onDragEnter'] = ele.onDragEnter.listen(onDragEnter);
      break;
  
    case 'onDragLeave': 
      _eventSubs['onDragLeave'] = ele.onDragLeave.listen(onDragLeave);
      break;
  
    case 'onDragOver': 
      _eventSubs['onDragOver'] = ele.onDragOver.listen(onDragOver);
      break;
  
    case 'onDragStart': 
      _eventSubs['onDragStart'] = ele.onDragStart.listen(onDragStart);
      break;
  
    case 'onDrop': 
      _eventSubs['onDrop'] = ele.onDrop.listen(onDrop);
      break;
  
    case 'onDurationChange': 
      _eventSubs['onDurationChange'] = ele.onDurationChange.listen(onDurationChange);
      break;
  
    case 'onEmptied': 
      _eventSubs['onEmptied'] = ele.onEmptied.listen(onEmptied);
      break;
  
    case 'onEnded': 
      _eventSubs['onEnded'] = ele.onEnded.listen(onEnded);
      break;
  
    case 'onError': 
      _eventSubs['onError'] = ele.onError.listen(onError);
      break;
  
    case 'onFocus': 
      _eventSubs['onFocus'] = ele.onFocus.listen(onFocus);
      break;
  
    case 'onInput': 
      _eventSubs['onInput'] = ele.onInput.listen(onInput);
      break;
  
    case 'onInvalid': 
      _eventSubs['onInvalid'] = ele.onInvalid.listen(onInvalid);
      break;
  
    case 'onKeyDown': 
      _eventSubs['onKeyDown'] = ele.onKeyDown.listen(onKeyDown);
      break;
  
    case 'onKeyPress': 
      _eventSubs['onKeyPress'] = ele.onKeyPress.listen(onKeyPress);
      break;
  
    case 'onKeyUp': 
      _eventSubs['onKeyUp'] = ele.onKeyUp.listen(onKeyUp);
      break;
  
    case 'onLoad': 
      _eventSubs['onLoad'] = ele.onLoad.listen(onLoad);
      break;
  
    case 'onLoadedData': 
      _eventSubs['onLoadedData'] = ele.onLoadedData.listen(onLoadedData);
      break;
  
    case 'onLoadedMetadata': 
      _eventSubs['onLoadedMetadata'] = ele.onLoadedMetadata.listen(onLoadedMetadata);
      break;
  
    case 'onMouseDown': 
      _eventSubs['onMouseDown'] = ele.onMouseDown.listen(onMouseDown);
      break;
  
    case 'onMouseEnter': 
      _eventSubs['onMouseEnter'] = ele.onMouseEnter.listen(onMouseEnter);
      break;
  
    case 'onMouseLeave': 
      _eventSubs['onMouseLeave'] = ele.onMouseLeave.listen(onMouseLeave);
      break;
  
    case 'onMouseMove': 
      _eventSubs['onMouseMove'] = ele.onMouseMove.listen(onMouseMove);
      break;
  
    case 'onMouseOut': 
      _eventSubs['onMouseOut'] = ele.onMouseOut.listen(onMouseOut);
      break;
  
    case 'onMouseOver': 
      _eventSubs['onMouseOver'] = ele.onMouseOver.listen(onMouseOver);
      break;
  
    case 'onMouseUp': 
      _eventSubs['onMouseUp'] = ele.onMouseUp.listen(onMouseUp);
      break;
  
    case 'onMouseWheel': 
      _eventSubs['onMouseWheel'] = ele.onMouseWheel.listen(onMouseWheel);
      break;
  
    case 'onPaste': 
      _eventSubs['onPaste'] = ele.onPaste.listen(onPaste);
      break;
  
    case 'onPause': 
      _eventSubs['onPause'] = ele.onPause.listen(onPause);
      break;
  
    case 'onPlay': 
      _eventSubs['onPlay'] = ele.onPlay.listen(onPlay);
      break;
  
    case 'onPlaying': 
      _eventSubs['onPlaying'] = ele.onPlaying.listen(onPlaying);
      break;
  
    case 'onRateChange': 
      _eventSubs['onRateChange'] = ele.onRateChange.listen(onRateChange);
      break;
  
    case 'onReset': 
      _eventSubs['onReset'] = ele.onReset.listen(onReset);
      break;
  
    case 'onResize': 
      _eventSubs['onResize'] = ele.onResize.listen(onResize);
      break;
  
    case 'onScroll': 
      _eventSubs['onScroll'] = ele.onScroll.listen(onScroll);
      break;
  
    case 'onSearch': 
      _eventSubs['onSearch'] = ele.onSearch.listen(onSearch);
      break;
  
    case 'onSeeked': 
      _eventSubs['onSeeked'] = ele.onSeeked.listen(onSeeked);
      break;
  
    case 'onSeeking': 
      _eventSubs['onSeeking'] = ele.onSeeking.listen(onSeeking);
      break;
  
    case 'onSelect': 
      _eventSubs['onSelect'] = ele.onSelect.listen(onSelect);
      break;
  
    case 'onSelectStart': 
      _eventSubs['onSelectStart'] = ele.onSelectStart.listen(onSelectStart);
      break;
  
    case 'onStalled': 
      _eventSubs['onStalled'] = ele.onStalled.listen(onStalled);
      break;
  
    case 'onSubmit': 
      _eventSubs['onSubmit'] = ele.onSubmit.listen(onSubmit);
      break;
  
    case 'onSuspend': 
      _eventSubs['onSuspend'] = ele.onSuspend.listen(onSuspend);
      break;
  
    case 'onTimeUpdate': 
      _eventSubs['onTimeUpdate'] = ele.onTimeUpdate.listen(onTimeUpdate);
      break;
  
    case 'onTouchCancel': 
      _eventSubs['onTouchCancel'] = ele.onTouchCancel.listen(onTouchCancel);
      break;
  
    case 'onTouchEnd': 
      _eventSubs['onTouchEnd'] = ele.onTouchEnd.listen(onTouchEnd);
      break;
  
    case 'onTouchEnter': 
      _eventSubs['onTouchEnter'] = ele.onTouchEnter.listen(onTouchEnter);
      break;
  
    case 'onTouchLeave': 
      _eventSubs['onTouchLeave'] = ele.onTouchLeave.listen(onTouchLeave);
      break;
  
    case 'onTouchMove': 
      _eventSubs['onTouchMove'] = ele.onTouchMove.listen(onTouchMove);
      break;
  
    case 'onTouchStart': 
      _eventSubs['onTouchStart'] = ele.onTouchStart.listen(onTouchStart);
      break;
  
    case 'onTransitionEnd': 
      _eventSubs['onTransitionEnd'] = ele.onTransitionEnd.listen(onTransitionEnd);
      break;
  
    case 'onVolumeChange': 
      _eventSubs['onVolumeChange'] = ele.onVolumeChange.listen(onVolumeChange);
      break;
  
    case 'onWaiting': 
      _eventSubs['onWaiting'] = ele.onWaiting.listen(onWaiting);
      break;
  
    case 'onFullscreenChange': 
      _eventSubs['onFullscreenChange'] = ele.onFullscreenChange.listen(onFullscreenChange);
      break;
  
    case 'onFullscreenError': 
      _eventSubs['onFullscreenError'] = ele.onFullscreenError.listen(onFullscreenError);
      break;
  
      }
    }

    void _removeEventListenerIfNeccessary(VElement prev, String key, dynamic value) {
      if (prev._setSubs.containsKey(key)) return;
      prev._eventSubs[key].cancel();
      prev._eventSubs[key] = null;
    }

    void dispose() {
      for (final sub in _eventSubs.values)
        sub.cancel();
      _eventSubs = null;
    }
  }
  