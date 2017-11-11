import 'dart:svg';
import 'package:meta/meta.dart';
import 'wui_builder.dart' show VElement;

class VAElement extends VGraphicsElement<AElement> {
  @override
  AElement elementFactory() => new AElement();

  @override
  @protected
  void applyAttributesToElement(AElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VAElement prev, AElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VAnimateElement extends VAnimationElement<AnimateElement> {
  @override
  AnimateElement elementFactory() => new AnimateElement();

  @override
  @protected
  void applyAttributesToElement(AnimateElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VAnimateElement prev, AnimateElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VAnimateMotionElement extends VAnimationElement<AnimateMotionElement> {
  @override
  AnimateMotionElement elementFactory() => new AnimateMotionElement();

  @override
  @protected
  void applyAttributesToElement(AnimateMotionElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VAnimateMotionElement prev, AnimateMotionElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VAnimateTransformElement
    extends VAnimationElement<AnimateTransformElement> {
  @override
  AnimateTransformElement elementFactory() => new AnimateTransformElement();

  @override
  @protected
  void applyAttributesToElement(AnimateTransformElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VAnimateTransformElement prev, AnimateTransformElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VAnimationElement<T extends AnimationElement>
    extends VSvgElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VAnimationElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VCircleElement extends VGeometryElement<CircleElement> {
  @override
  CircleElement elementFactory() => new CircleElement();

  @override
  @protected
  void applyAttributesToElement(CircleElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VCircleElement prev, CircleElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VClipPathElement extends VGraphicsElement<ClipPathElement> {
  @override
  ClipPathElement elementFactory() => new ClipPathElement();

  @override
  @protected
  void applyAttributesToElement(ClipPathElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VClipPathElement prev, ClipPathElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VDefsElement extends VGraphicsElement<DefsElement> {
  @override
  DefsElement elementFactory() => new DefsElement();

  @override
  @protected
  void applyAttributesToElement(DefsElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VDefsElement prev, DefsElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VDescElement extends VSvgElement<DescElement> {
  @override
  DescElement elementFactory() => new DescElement();

  @override
  @protected
  void applyAttributesToElement(DescElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VDescElement prev, DescElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VDiscardElement<T extends DiscardElement>
    extends VSvgElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VDiscardElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VEllipseElement extends VGeometryElement<EllipseElement> {
  @override
  EllipseElement elementFactory() => new EllipseElement();

  @override
  @protected
  void applyAttributesToElement(EllipseElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VEllipseElement prev, EllipseElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEBlendElement extends VSvgElement<FEBlendElement> {
  @override
  FEBlendElement elementFactory() => new FEBlendElement();

  @override
  @protected
  void applyAttributesToElement(FEBlendElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VFEBlendElement prev, FEBlendElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEColorMatrixElement extends VSvgElement<FEColorMatrixElement> {
  @override
  FEColorMatrixElement elementFactory() => new FEColorMatrixElement();

  @override
  @protected
  void applyAttributesToElement(FEColorMatrixElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VFEColorMatrixElement prev, FEColorMatrixElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEComponentTransferElement
    extends VSvgElement<FEComponentTransferElement> {
  @override
  FEComponentTransferElement elementFactory() =>
      new FEComponentTransferElement();

  @override
  @protected
  void applyAttributesToElement(FEComponentTransferElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VFEComponentTransferElement prev, FEComponentTransferElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VFECompositeElement<T extends FECompositeElement>
    extends VSvgElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VFECompositeElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEConvolveMatrixElement extends VSvgElement<FEConvolveMatrixElement> {
  @override
  FEConvolveMatrixElement elementFactory() => new FEConvolveMatrixElement();

  @override
  @protected
  void applyAttributesToElement(FEConvolveMatrixElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VFEConvolveMatrixElement prev, FEConvolveMatrixElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEDiffuseLightingElement extends VSvgElement<FEDiffuseLightingElement> {
  @override
  FEDiffuseLightingElement elementFactory() => new FEDiffuseLightingElement();

  @override
  @protected
  void applyAttributesToElement(FEDiffuseLightingElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VFEDiffuseLightingElement prev, FEDiffuseLightingElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEDisplacementMapElement extends VSvgElement<FEDisplacementMapElement> {
  @override
  FEDisplacementMapElement elementFactory() => new FEDisplacementMapElement();

  @override
  @protected
  void applyAttributesToElement(FEDisplacementMapElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VFEDisplacementMapElement prev, FEDisplacementMapElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEDistantLightElement extends VSvgElement<FEDistantLightElement> {
  @override
  FEDistantLightElement elementFactory() => new FEDistantLightElement();

  @override
  @protected
  void applyAttributesToElement(FEDistantLightElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VFEDistantLightElement prev, FEDistantLightElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEFloodElement extends VSvgElement<FEFloodElement> {
  @override
  FEFloodElement elementFactory() => new FEFloodElement();

  @override
  @protected
  void applyAttributesToElement(FEFloodElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VFEFloodElement prev, FEFloodElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEFuncAElement extends VSvgElement<FEFuncAElement> {
  @override
  FEFuncAElement elementFactory() => new FEFuncAElement();

  @override
  @protected
  void applyAttributesToElement(FEFuncAElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VFEFuncAElement prev, FEFuncAElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEFuncBElement extends VSvgElement<FEFuncBElement> {
  @override
  FEFuncBElement elementFactory() => new FEFuncBElement();

  @override
  @protected
  void applyAttributesToElement(FEFuncBElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VFEFuncBElement prev, FEFuncBElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEFuncGElement extends VSvgElement<FEFuncGElement> {
  @override
  FEFuncGElement elementFactory() => new FEFuncGElement();

  @override
  @protected
  void applyAttributesToElement(FEFuncGElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VFEFuncGElement prev, FEFuncGElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEFuncRElement extends VSvgElement<FEFuncRElement> {
  @override
  FEFuncRElement elementFactory() => new FEFuncRElement();

  @override
  @protected
  void applyAttributesToElement(FEFuncRElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VFEFuncRElement prev, FEFuncRElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEGaussianBlurElement extends VSvgElement<FEGaussianBlurElement> {
  @override
  FEGaussianBlurElement elementFactory() => new FEGaussianBlurElement();

  @override
  @protected
  void applyAttributesToElement(FEGaussianBlurElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VFEGaussianBlurElement prev, FEGaussianBlurElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEImageElement extends VSvgElement<FEImageElement> {
  @override
  FEImageElement elementFactory() => new FEImageElement();

  @override
  @protected
  void applyAttributesToElement(FEImageElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VFEImageElement prev, FEImageElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEMergeElement extends VSvgElement<FEMergeElement> {
  @override
  FEMergeElement elementFactory() => new FEMergeElement();

  @override
  @protected
  void applyAttributesToElement(FEMergeElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VFEMergeElement prev, FEMergeElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEMergeNodeElement extends VSvgElement<FEMergeNodeElement> {
  @override
  FEMergeNodeElement elementFactory() => new FEMergeNodeElement();

  @override
  @protected
  void applyAttributesToElement(FEMergeNodeElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VFEMergeNodeElement prev, FEMergeNodeElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VFEMorphologyElement<T extends FEMorphologyElement>
    extends VSvgElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VFEMorphologyElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEOffsetElement extends VSvgElement<FEOffsetElement> {
  @override
  FEOffsetElement elementFactory() => new FEOffsetElement();

  @override
  @protected
  void applyAttributesToElement(FEOffsetElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VFEOffsetElement prev, FEOffsetElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFEPointLightElement extends VSvgElement<FEPointLightElement> {
  @override
  FEPointLightElement elementFactory() => new FEPointLightElement();

  @override
  @protected
  void applyAttributesToElement(FEPointLightElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VFEPointLightElement prev, FEPointLightElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFESpecularLightingElement
    extends VSvgElement<FESpecularLightingElement> {
  @override
  FESpecularLightingElement elementFactory() => new FESpecularLightingElement();

  @override
  @protected
  void applyAttributesToElement(FESpecularLightingElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VFESpecularLightingElement prev, FESpecularLightingElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFESpotLightElement extends VSvgElement<FESpotLightElement> {
  @override
  FESpotLightElement elementFactory() => new FESpotLightElement();

  @override
  @protected
  void applyAttributesToElement(FESpotLightElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VFESpotLightElement prev, FESpotLightElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFETileElement extends VSvgElement<FETileElement> {
  @override
  FETileElement elementFactory() => new FETileElement();

  @override
  @protected
  void applyAttributesToElement(FETileElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VFETileElement prev, FETileElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFETurbulenceElement extends VSvgElement<FETurbulenceElement> {
  @override
  FETurbulenceElement elementFactory() => new FETurbulenceElement();

  @override
  @protected
  void applyAttributesToElement(FETurbulenceElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VFETurbulenceElement prev, FETurbulenceElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VFilterElement extends VSvgElement<FilterElement> {
  @override
  FilterElement elementFactory() => new FilterElement();

  @override
  @protected
  void applyAttributesToElement(FilterElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VFilterElement prev, FilterElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VForeignObjectElement extends VGraphicsElement<ForeignObjectElement> {
  @override
  ForeignObjectElement elementFactory() => new ForeignObjectElement();

  @override
  @protected
  void applyAttributesToElement(ForeignObjectElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VForeignObjectElement prev, ForeignObjectElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VGElement extends VGraphicsElement<GElement> {
  @override
  GElement elementFactory() => new GElement();

  @override
  @protected
  void applyAttributesToElement(GElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VGElement prev, GElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VGeometryElement<T extends GeometryElement>
    extends VGraphicsElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VGeometryElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VGraphicsElement<T extends GraphicsElement>
    extends VSvgElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VGraphicsElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VImageElement extends VGraphicsElement<ImageElement> {
  @override
  ImageElement elementFactory() => new ImageElement();

  @override
  @protected
  void applyAttributesToElement(ImageElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VImageElement prev, ImageElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VLineElement extends VGeometryElement<LineElement> {
  @override
  LineElement elementFactory() => new LineElement();

  @override
  @protected
  void applyAttributesToElement(LineElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VLineElement prev, LineElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VLinearGradientElement extends VSvgElement<LinearGradientElement> {
  @override
  LinearGradientElement elementFactory() => new LinearGradientElement();

  @override
  @protected
  void applyAttributesToElement(LinearGradientElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VLinearGradientElement prev, LinearGradientElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VMarkerElement extends VSvgElement<MarkerElement> {
  @override
  MarkerElement elementFactory() => new MarkerElement();

  @override
  @protected
  void applyAttributesToElement(MarkerElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VMarkerElement prev, MarkerElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VMaskElement extends VSvgElement<MaskElement> {
  @override
  MaskElement elementFactory() => new MaskElement();

  @override
  @protected
  void applyAttributesToElement(MaskElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VMaskElement prev, MaskElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VMetadataElement<T extends MetadataElement>
    extends VSvgElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VMetadataElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VPathElement extends VGeometryElement<PathElement> {
  @override
  PathElement elementFactory() => new PathElement();

  @override
  @protected
  void applyAttributesToElement(PathElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VPathElement prev, PathElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VPatternElement extends VSvgElement<PatternElement> {
  @override
  PatternElement elementFactory() => new PatternElement();

  @override
  @protected
  void applyAttributesToElement(PatternElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VPatternElement prev, PatternElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VPolygonElement extends VGeometryElement<PolygonElement> {
  @override
  PolygonElement elementFactory() => new PolygonElement();

  @override
  @protected
  void applyAttributesToElement(PolygonElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VPolygonElement prev, PolygonElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VPolylineElement extends VGeometryElement<PolylineElement> {
  @override
  PolylineElement elementFactory() => new PolylineElement();

  @override
  @protected
  void applyAttributesToElement(PolylineElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VPolylineElement prev, PolylineElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VRadialGradientElement extends VSvgElement<RadialGradientElement> {
  @override
  RadialGradientElement elementFactory() => new RadialGradientElement();

  @override
  @protected
  void applyAttributesToElement(RadialGradientElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      VRadialGradientElement prev, RadialGradientElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VRectElement extends VGeometryElement<RectElement> {
  @override
  RectElement elementFactory() => new RectElement();

  @override
  @protected
  void applyAttributesToElement(RectElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VRectElement prev, RectElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VScriptElement extends VSvgElement<ScriptElement> {
  @override
  ScriptElement elementFactory() => new ScriptElement();

  String _type;
  bool _typeSet = false;
  String get type => _type;
  void set type(String v) {
    _type = v;
    _typeSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(ScriptElement ele) {
    super.applyAttributesToElement(ele);

    if (_typeSet) ele.type = _type;
  }

  @override
  @protected
  void updateElementAttributes(VScriptElement prev, ScriptElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_type != prev._type) ele.type = _type;
  }
}

class VSetElement extends VAnimationElement<SetElement> {
  @override
  SetElement elementFactory() => new SetElement();

  @override
  @protected
  void applyAttributesToElement(SetElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VSetElement prev, SetElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VStopElement extends VSvgElement<StopElement> {
  @override
  StopElement elementFactory() => new StopElement();

  @override
  @protected
  void applyAttributesToElement(StopElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VStopElement prev, StopElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VStyleElement extends VSvgElement<StyleElement> {
  @override
  StyleElement elementFactory() => new StyleElement();

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

    if (_disabled != prev._disabled) ele.disabled = _disabled;
    if (_media != prev._media) ele.media = _media;
    if (_type != prev._type) ele.type = _type;
  }
}

abstract class VSvgElement<T extends SvgElement> extends VElement<T> {
  String _innerHtml;
  bool _innerHtmlSet = false;
  String get innerHtml => _innerHtml;
  void set innerHtml(String v) {
    _innerHtml = v;
    _innerHtmlSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);

    if (_innerHtmlSet) ele.innerHtml = _innerHtml;
  }

  @override
  @protected
  void updateElementAttributes(covariant VSvgElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);

    if (_innerHtml != prev._innerHtml) ele.innerHtml = _innerHtml;
  }
}

class VSvgSvgElement extends VGraphicsElement<SvgSvgElement> {
  @override
  SvgSvgElement elementFactory() => new SvgSvgElement();

  num _currentScale;
  bool _currentScaleSet = false;
  num get currentScale => _currentScale;
  void set currentScale(num v) {
    _currentScale = v;
    _currentScaleSet = true;
  }

  int _zoomAndPan;
  bool _zoomAndPanSet = false;
  int get zoomAndPan => _zoomAndPan;
  void set zoomAndPan(int v) {
    _zoomAndPan = v;
    _zoomAndPanSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(SvgSvgElement ele) {
    super.applyAttributesToElement(ele);

    if (_currentScaleSet) ele.currentScale = _currentScale;
    if (_zoomAndPanSet) ele.zoomAndPan = _zoomAndPan;
  }

  @override
  @protected
  void updateElementAttributes(VSvgSvgElement prev, SvgSvgElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_currentScale != prev._currentScale) ele.currentScale = _currentScale;
    if (_zoomAndPan != prev._zoomAndPan) ele.zoomAndPan = _zoomAndPan;
  }
}

class VSwitchElement extends VGraphicsElement<SwitchElement> {
  @override
  SwitchElement elementFactory() => new SwitchElement();

  @override
  @protected
  void applyAttributesToElement(SwitchElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VSwitchElement prev, SwitchElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VSymbolElement extends VSvgElement<SymbolElement> {
  @override
  SymbolElement elementFactory() => new SymbolElement();

  @override
  @protected
  void applyAttributesToElement(SymbolElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VSymbolElement prev, SymbolElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VTSpanElement extends VTextPositioningElement<TSpanElement> {
  @override
  TSpanElement elementFactory() => new TSpanElement();

  @override
  @protected
  void applyAttributesToElement(TSpanElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VTSpanElement prev, TSpanElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VTextContentElement<T extends TextContentElement>
    extends VGraphicsElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VTextContentElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VTextElement extends VTextPositioningElement<TextElement> {
  @override
  TextElement elementFactory() => new TextElement();

  @override
  @protected
  void applyAttributesToElement(TextElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VTextElement prev, TextElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VTextPathElement<T extends TextPathElement>
    extends VTextContentElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(covariant VTextPathElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

abstract class VTextPositioningElement<T extends TextPositioningElement>
    extends VTextContentElement<T> {
  @override
  @protected
  void applyAttributesToElement(T ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(
      covariant VTextPositioningElement<T> prev, T ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VTitleElement extends VSvgElement<TitleElement> {
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

class VUseElement extends VGraphicsElement<UseElement> {
  @override
  UseElement elementFactory() => new UseElement();

  @override
  @protected
  void applyAttributesToElement(UseElement ele) {
    super.applyAttributesToElement(ele);
  }

  @override
  @protected
  void updateElementAttributes(VUseElement prev, UseElement ele) {
    super.updateElementAttributes(prev, ele);
  }
}

class VViewElement extends VSvgElement<ViewElement> {
  @override
  ViewElement elementFactory() => new ViewElement();

  int _zoomAndPan;
  bool _zoomAndPanSet = false;
  int get zoomAndPan => _zoomAndPan;
  void set zoomAndPan(int v) {
    _zoomAndPan = v;
    _zoomAndPanSet = true;
  }

  @override
  @protected
  void applyAttributesToElement(ViewElement ele) {
    super.applyAttributesToElement(ele);

    if (_zoomAndPanSet) ele.zoomAndPan = _zoomAndPan;
  }

  @override
  @protected
  void updateElementAttributes(VViewElement prev, ViewElement ele) {
    super.updateElementAttributes(prev, ele);

    if (_zoomAndPan != prev._zoomAndPan) ele.zoomAndPan = _zoomAndPan;
  }
}
