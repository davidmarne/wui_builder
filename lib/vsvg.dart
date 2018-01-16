import 'dart:svg';
import 'package:meta/meta.dart';
import 'wui_builder.dart' show VElement;
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: prefer_final_fields

class VAElement extends VGraphicsElement<AElement> {
  @override
  AElement elementFactory() => new AElement();
}

class VAnimateElement extends VAnimationElement<AnimateElement> {
  @override
  AnimateElement elementFactory() => new AnimateElement();
}

class VAnimateMotionElement extends VAnimationElement<AnimateMotionElement> {
  @override
  AnimateMotionElement elementFactory() => new AnimateMotionElement();
}

class VAnimateTransformElement
    extends VAnimationElement<AnimateTransformElement> {
  @override
  AnimateTransformElement elementFactory() => new AnimateTransformElement();
}

abstract class VAnimationElement<T extends AnimationElement>
    extends VSvgElement<T> {}

class VCircleElement extends VGeometryElement<CircleElement> {
  @override
  CircleElement elementFactory() => new CircleElement();
}

class VClipPathElement extends VGraphicsElement<ClipPathElement> {
  @override
  ClipPathElement elementFactory() => new ClipPathElement();
}

class VDefsElement extends VGraphicsElement<DefsElement> {
  @override
  DefsElement elementFactory() => new DefsElement();
}

class VDescElement extends VSvgElement<DescElement> {
  @override
  DescElement elementFactory() => new DescElement();
}

abstract class VDiscardElement<T extends DiscardElement>
    extends VSvgElement<T> {}

class VEllipseElement extends VGeometryElement<EllipseElement> {
  @override
  EllipseElement elementFactory() => new EllipseElement();
}

class VFEBlendElement extends VSvgElement<FEBlendElement> {
  @override
  FEBlendElement elementFactory() => new FEBlendElement();
}

class VFEColorMatrixElement extends VSvgElement<FEColorMatrixElement> {
  @override
  FEColorMatrixElement elementFactory() => new FEColorMatrixElement();
}

class VFEComponentTransferElement
    extends VSvgElement<FEComponentTransferElement> {
  @override
  FEComponentTransferElement elementFactory() =>
      new FEComponentTransferElement();
}

abstract class VFECompositeElement<T extends FECompositeElement>
    extends VSvgElement<T> {}

class VFEConvolveMatrixElement extends VSvgElement<FEConvolveMatrixElement> {
  @override
  FEConvolveMatrixElement elementFactory() => new FEConvolveMatrixElement();
}

class VFEDiffuseLightingElement extends VSvgElement<FEDiffuseLightingElement> {
  @override
  FEDiffuseLightingElement elementFactory() => new FEDiffuseLightingElement();
}

class VFEDisplacementMapElement extends VSvgElement<FEDisplacementMapElement> {
  @override
  FEDisplacementMapElement elementFactory() => new FEDisplacementMapElement();
}

class VFEDistantLightElement extends VSvgElement<FEDistantLightElement> {
  @override
  FEDistantLightElement elementFactory() => new FEDistantLightElement();
}

class VFEFloodElement extends VSvgElement<FEFloodElement> {
  @override
  FEFloodElement elementFactory() => new FEFloodElement();
}

class VFEFuncAElement extends VSvgElement<FEFuncAElement> {
  @override
  FEFuncAElement elementFactory() => new FEFuncAElement();
}

class VFEFuncBElement extends VSvgElement<FEFuncBElement> {
  @override
  FEFuncBElement elementFactory() => new FEFuncBElement();
}

class VFEFuncGElement extends VSvgElement<FEFuncGElement> {
  @override
  FEFuncGElement elementFactory() => new FEFuncGElement();
}

class VFEFuncRElement extends VSvgElement<FEFuncRElement> {
  @override
  FEFuncRElement elementFactory() => new FEFuncRElement();
}

class VFEGaussianBlurElement extends VSvgElement<FEGaussianBlurElement> {
  @override
  FEGaussianBlurElement elementFactory() => new FEGaussianBlurElement();
}

class VFEImageElement extends VSvgElement<FEImageElement> {
  @override
  FEImageElement elementFactory() => new FEImageElement();
}

class VFEMergeElement extends VSvgElement<FEMergeElement> {
  @override
  FEMergeElement elementFactory() => new FEMergeElement();
}

class VFEMergeNodeElement extends VSvgElement<FEMergeNodeElement> {
  @override
  FEMergeNodeElement elementFactory() => new FEMergeNodeElement();
}

abstract class VFEMorphologyElement<T extends FEMorphologyElement>
    extends VSvgElement<T> {}

class VFEOffsetElement extends VSvgElement<FEOffsetElement> {
  @override
  FEOffsetElement elementFactory() => new FEOffsetElement();
}

class VFEPointLightElement extends VSvgElement<FEPointLightElement> {
  @override
  FEPointLightElement elementFactory() => new FEPointLightElement();
}

class VFESpecularLightingElement
    extends VSvgElement<FESpecularLightingElement> {
  @override
  FESpecularLightingElement elementFactory() => new FESpecularLightingElement();
}

class VFESpotLightElement extends VSvgElement<FESpotLightElement> {
  @override
  FESpotLightElement elementFactory() => new FESpotLightElement();
}

class VFETileElement extends VSvgElement<FETileElement> {
  @override
  FETileElement elementFactory() => new FETileElement();
}

class VFETurbulenceElement extends VSvgElement<FETurbulenceElement> {
  @override
  FETurbulenceElement elementFactory() => new FETurbulenceElement();
}

class VFilterElement extends VSvgElement<FilterElement> {
  @override
  FilterElement elementFactory() => new FilterElement();
}

class VForeignObjectElement extends VGraphicsElement<ForeignObjectElement> {
  @override
  ForeignObjectElement elementFactory() => new ForeignObjectElement();
}

class VGElement extends VGraphicsElement<GElement> {
  @override
  GElement elementFactory() => new GElement();
}

abstract class VGeometryElement<T extends GeometryElement>
    extends VGraphicsElement<T> {}

abstract class VGraphicsElement<T extends GraphicsElement>
    extends VSvgElement<T> {}

class VImageElement extends VGraphicsElement<ImageElement> {
  @override
  ImageElement elementFactory() => new ImageElement();
}

class VLineElement extends VGeometryElement<LineElement> {
  @override
  LineElement elementFactory() => new LineElement();
}

class VLinearGradientElement extends VSvgElement<LinearGradientElement> {
  @override
  LinearGradientElement elementFactory() => new LinearGradientElement();
}

class VMarkerElement extends VSvgElement<MarkerElement> {
  @override
  MarkerElement elementFactory() => new MarkerElement();
}

class VMaskElement extends VSvgElement<MaskElement> {
  @override
  MaskElement elementFactory() => new MaskElement();
}

abstract class VMetadataElement<T extends MetadataElement>
    extends VSvgElement<T> {}

class VPathElement extends VGeometryElement<PathElement> {
  @override
  PathElement elementFactory() => new PathElement();
}

class VPatternElement extends VSvgElement<PatternElement> {
  @override
  PatternElement elementFactory() => new PatternElement();
}

class VPolygonElement extends VGeometryElement<PolygonElement> {
  @override
  PolygonElement elementFactory() => new PolygonElement();
}

class VPolylineElement extends VGeometryElement<PolylineElement> {
  @override
  PolylineElement elementFactory() => new PolylineElement();
}

class VRadialGradientElement extends VSvgElement<RadialGradientElement> {
  @override
  RadialGradientElement elementFactory() => new RadialGradientElement();
}

class VRectElement extends VGeometryElement<RectElement> {
  @override
  RectElement elementFactory() => new RectElement();
}

const typeScriptElementAttribute = 0;

class VScriptElement extends VSvgElement<ScriptElement> {
  @override
  ScriptElement elementFactory() => new ScriptElement();

  var _setValuesScriptElement = <int, dynamic>{};

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
      case typeScriptElementAttribute:
        ele.type = value as String;
        break;
    }
  }
}

class VSetElement extends VAnimationElement<SetElement> {
  @override
  SetElement elementFactory() => new SetElement();
}

class VStopElement extends VSvgElement<StopElement> {
  @override
  StopElement elementFactory() => new StopElement();
}

const disabledStyleElementAttribute = 0;
const mediaStyleElementAttribute = 1;
const typeStyleElementAttribute = 2;

class VStyleElement extends VSvgElement<StyleElement> {
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

const innerHtmlSvgElementAttribute = 0;

abstract class VSvgElement<T extends SvgElement> extends VElement<T> {
  var _setValuesSvgElement = <int, dynamic>{};

  String get innerHtml =>
      _setValuesSvgElement[innerHtmlSvgElementAttribute] as String;
  set innerHtml(String v) {
    _setValuesSvgElement[innerHtmlSvgElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    _setValuesSvgElement
        .forEach((k, dynamic v) => _updateAttributeSvgElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VSvgElement<T> prev, T ele) {
    prev._setValuesSvgElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesSvgElement[k];
      if (v != newValue) _updateAttributeSvgElement(ele, k, newValue);
    });
    prev._setValuesSvgElement = _setValuesSvgElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSvgElement(SvgElement ele, int key, dynamic value) {
    switch (key) {
      case innerHtmlSvgElementAttribute:
        ele.innerHtml = value as String;
        break;
    }
  }
}

const currentScaleSvgSvgElementAttribute = 0;
const zoomAndPanSvgSvgElementAttribute = 1;

class VSvgSvgElement extends VGraphicsElement<SvgSvgElement> {
  @override
  SvgSvgElement elementFactory() => new SvgSvgElement();

  var _setValuesSvgSvgElement = <int, dynamic>{};

  num get currentScale =>
      _setValuesSvgSvgElement[currentScaleSvgSvgElementAttribute] as num;
  set currentScale(num v) {
    _setValuesSvgSvgElement[currentScaleSvgSvgElementAttribute] = v;
  }

  int get zoomAndPan =>
      _setValuesSvgSvgElement[zoomAndPanSvgSvgElementAttribute] as int;
  set zoomAndPan(int v) {
    _setValuesSvgSvgElement[zoomAndPanSvgSvgElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(SvgSvgElement ele) {
    _setValuesSvgSvgElement
        .forEach((k, dynamic v) => _updateAttributeSvgSvgElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VSvgSvgElement prev, SvgSvgElement ele) {
    prev._setValuesSvgSvgElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesSvgSvgElement[k];
      if (v != newValue) _updateAttributeSvgSvgElement(ele, k, newValue);
    });
    prev._setValuesSvgSvgElement = _setValuesSvgSvgElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSvgSvgElement(
      SvgSvgElement ele, int key, dynamic value) {
    switch (key) {
      case currentScaleSvgSvgElementAttribute:
        ele.currentScale = value as num;
        break;
      case zoomAndPanSvgSvgElementAttribute:
        ele.zoomAndPan = value as int;
        break;
    }
  }
}

class VSwitchElement extends VGraphicsElement<SwitchElement> {
  @override
  SwitchElement elementFactory() => new SwitchElement();
}

class VSymbolElement extends VSvgElement<SymbolElement> {
  @override
  SymbolElement elementFactory() => new SymbolElement();
}

class VTSpanElement extends VTextPositioningElement<TSpanElement> {
  @override
  TSpanElement elementFactory() => new TSpanElement();
}

abstract class VTextContentElement<T extends TextContentElement>
    extends VGraphicsElement<T> {}

class VTextElement extends VTextPositioningElement<TextElement> {
  @override
  TextElement elementFactory() => new TextElement();
}

abstract class VTextPathElement<T extends TextPathElement>
    extends VTextContentElement<T> {}

abstract class VTextPositioningElement<T extends TextPositioningElement>
    extends VTextContentElement<T> {}

class VTitleElement extends VSvgElement<TitleElement> {
  @override
  TitleElement elementFactory() => new TitleElement();
}

class VUseElement extends VGraphicsElement<UseElement> {
  @override
  UseElement elementFactory() => new UseElement();
}

const zoomAndPanViewElementAttribute = 0;

class VViewElement extends VSvgElement<ViewElement> {
  @override
  ViewElement elementFactory() => new ViewElement();

  var _setValuesViewElement = <int, dynamic>{};

  int get zoomAndPan =>
      _setValuesViewElement[zoomAndPanViewElementAttribute] as int;
  set zoomAndPan(int v) {
    _setValuesViewElement[zoomAndPanViewElementAttribute] = v;
  }

  @override
  @protected
  void applyAttributesToElement(ViewElement ele) {
    _setValuesViewElement
        .forEach((k, dynamic v) => _updateAttributeViewElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VViewElement prev, ViewElement ele) {
    prev._setValuesViewElement.forEach((k, dynamic v) {
      final dynamic newValue = _setValuesViewElement[k];
      if (v != newValue) _updateAttributeViewElement(ele, k, newValue);
    });
    prev._setValuesViewElement = _setValuesViewElement;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeViewElement(ViewElement ele, int key, dynamic value) {
    switch (key) {
      case zoomAndPanViewElementAttribute:
        ele.zoomAndPan = value as int;
        break;
    }
  }
}
