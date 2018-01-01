import 'dart:svg';
import 'package:meta/meta.dart';
import 'wui_builder.dart' show VElement;
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields

class VAElement extends VGraphicsElement<AElement> {
  @override
  AElement elementFactory() => new AElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(AElement ele) {
    _setValues.forEach((k, dynamic v) => _updateAttributeAElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VAElement prev, AElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryAElement(ele, k, v));
    _setValues.forEach((k, dynamic v) => _updateAttributeAElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeAElement(AElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryAElement(
      AElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VAnimateElement extends VAnimationElement<AnimateElement> {
  @override
  AnimateElement elementFactory() => new AnimateElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(AnimateElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeAnimateElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VAnimateElement prev, AnimateElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryAnimateElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeAnimateElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeAnimateElement(
      AnimateElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryAnimateElement(
      AnimateElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VAnimateMotionElement extends VAnimationElement<AnimateMotionElement> {
  @override
  AnimateMotionElement elementFactory() => new AnimateMotionElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(AnimateMotionElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeAnimateMotionElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VAnimateMotionElement prev, AnimateMotionElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryAnimateMotionElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeAnimateMotionElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeAnimateMotionElement(
      AnimateMotionElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryAnimateMotionElement(
      AnimateMotionElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VAnimateTransformElement
    extends VAnimationElement<AnimateTransformElement> {
  @override
  AnimateTransformElement elementFactory() => new AnimateTransformElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(AnimateTransformElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeAnimateTransformElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VAnimateTransformElement prev, AnimateTransformElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryAnimateTransformElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeAnimateTransformElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeAnimateTransformElement(
      AnimateTransformElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryAnimateTransformElement(
      AnimateTransformElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VAnimationElement<T extends AnimationElement>
    extends VSvgElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeAnimationElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VAnimationElement<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryAnimationElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeAnimationElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeAnimationElement(
      AnimationElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryAnimationElement(
      AnimationElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VCircleElement extends VGeometryElement<CircleElement> {
  @override
  CircleElement elementFactory() => new CircleElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(CircleElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeCircleElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VCircleElement prev, CircleElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryCircleElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeCircleElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeCircleElement(
      CircleElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryCircleElement(
      CircleElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VClipPathElement extends VGraphicsElement<ClipPathElement> {
  @override
  ClipPathElement elementFactory() => new ClipPathElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(ClipPathElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeClipPathElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VClipPathElement prev, ClipPathElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryClipPathElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeClipPathElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeClipPathElement(
      ClipPathElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryClipPathElement(
      ClipPathElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VDefsElement extends VGraphicsElement<DefsElement> {
  @override
  DefsElement elementFactory() => new DefsElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(DefsElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDefsElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VDefsElement prev, DefsElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryDefsElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDefsElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeDefsElement(DefsElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryDefsElement(
      DefsElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VDescElement extends VSvgElement<DescElement> {
  @override
  DescElement elementFactory() => new DescElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(DescElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDescElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VDescElement prev, DescElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryDescElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDescElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeDescElement(DescElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryDescElement(
      DescElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VDiscardElement<T extends DiscardElement>
    extends VSvgElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDiscardElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VDiscardElement<T> prev, T ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryDiscardElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeDiscardElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeDiscardElement(
      DiscardElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryDiscardElement(
      DiscardElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VEllipseElement extends VGeometryElement<EllipseElement> {
  @override
  EllipseElement elementFactory() => new EllipseElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(EllipseElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeEllipseElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VEllipseElement prev, EllipseElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryEllipseElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeEllipseElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeEllipseElement(
      EllipseElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryEllipseElement(
      EllipseElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEBlendElement extends VSvgElement<FEBlendElement> {
  @override
  FEBlendElement elementFactory() => new FEBlendElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEBlendElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEBlendElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VFEBlendElement prev, FEBlendElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryFEBlendElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEBlendElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEBlendElement(
      FEBlendElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEBlendElement(
      FEBlendElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEColorMatrixElement extends VSvgElement<FEColorMatrixElement> {
  @override
  FEColorMatrixElement elementFactory() => new FEColorMatrixElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEColorMatrixElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEColorMatrixElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VFEColorMatrixElement prev, FEColorMatrixElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFEColorMatrixElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEColorMatrixElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEColorMatrixElement(
      FEColorMatrixElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEColorMatrixElement(
      FEColorMatrixElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEComponentTransferElement
    extends VSvgElement<FEComponentTransferElement> {
  @override
  FEComponentTransferElement elementFactory() =>
      new FEComponentTransferElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEComponentTransferElement ele) {
    _setValues.forEach((k, dynamic v) =>
        _updateAttributeFEComponentTransferElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VFEComponentTransferElement prev, FEComponentTransferElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFEComponentTransferElement(ele, k, v));
    _setValues.forEach((k, dynamic v) =>
        _updateAttributeFEComponentTransferElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEComponentTransferElement(
      FEComponentTransferElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEComponentTransferElement(
      FEComponentTransferElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VFECompositeElement<T extends FECompositeElement>
    extends VSvgElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFECompositeElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VFECompositeElement<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFECompositeElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFECompositeElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFECompositeElement(
      FECompositeElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFECompositeElement(
      FECompositeElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEConvolveMatrixElement extends VSvgElement<FEConvolveMatrixElement> {
  @override
  FEConvolveMatrixElement elementFactory() => new FEConvolveMatrixElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEConvolveMatrixElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEConvolveMatrixElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VFEConvolveMatrixElement prev, FEConvolveMatrixElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFEConvolveMatrixElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEConvolveMatrixElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEConvolveMatrixElement(
      FEConvolveMatrixElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEConvolveMatrixElement(
      FEConvolveMatrixElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEDiffuseLightingElement extends VSvgElement<FEDiffuseLightingElement> {
  @override
  FEDiffuseLightingElement elementFactory() => new FEDiffuseLightingElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEDiffuseLightingElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEDiffuseLightingElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VFEDiffuseLightingElement prev, FEDiffuseLightingElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFEDiffuseLightingElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEDiffuseLightingElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEDiffuseLightingElement(
      FEDiffuseLightingElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEDiffuseLightingElement(
      FEDiffuseLightingElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEDisplacementMapElement extends VSvgElement<FEDisplacementMapElement> {
  @override
  FEDisplacementMapElement elementFactory() => new FEDisplacementMapElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEDisplacementMapElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEDisplacementMapElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VFEDisplacementMapElement prev, FEDisplacementMapElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFEDisplacementMapElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEDisplacementMapElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEDisplacementMapElement(
      FEDisplacementMapElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEDisplacementMapElement(
      FEDisplacementMapElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEDistantLightElement extends VSvgElement<FEDistantLightElement> {
  @override
  FEDistantLightElement elementFactory() => new FEDistantLightElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEDistantLightElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEDistantLightElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VFEDistantLightElement prev, FEDistantLightElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFEDistantLightElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEDistantLightElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEDistantLightElement(
      FEDistantLightElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEDistantLightElement(
      FEDistantLightElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEFloodElement extends VSvgElement<FEFloodElement> {
  @override
  FEFloodElement elementFactory() => new FEFloodElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEFloodElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEFloodElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VFEFloodElement prev, FEFloodElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryFEFloodElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEFloodElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEFloodElement(
      FEFloodElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEFloodElement(
      FEFloodElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEFuncAElement extends VSvgElement<FEFuncAElement> {
  @override
  FEFuncAElement elementFactory() => new FEFuncAElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEFuncAElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEFuncAElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VFEFuncAElement prev, FEFuncAElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryFEFuncAElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEFuncAElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEFuncAElement(
      FEFuncAElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEFuncAElement(
      FEFuncAElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEFuncBElement extends VSvgElement<FEFuncBElement> {
  @override
  FEFuncBElement elementFactory() => new FEFuncBElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEFuncBElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEFuncBElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VFEFuncBElement prev, FEFuncBElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryFEFuncBElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEFuncBElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEFuncBElement(
      FEFuncBElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEFuncBElement(
      FEFuncBElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEFuncGElement extends VSvgElement<FEFuncGElement> {
  @override
  FEFuncGElement elementFactory() => new FEFuncGElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEFuncGElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEFuncGElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VFEFuncGElement prev, FEFuncGElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryFEFuncGElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEFuncGElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEFuncGElement(
      FEFuncGElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEFuncGElement(
      FEFuncGElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEFuncRElement extends VSvgElement<FEFuncRElement> {
  @override
  FEFuncRElement elementFactory() => new FEFuncRElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEFuncRElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEFuncRElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VFEFuncRElement prev, FEFuncRElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryFEFuncRElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEFuncRElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEFuncRElement(
      FEFuncRElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEFuncRElement(
      FEFuncRElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEGaussianBlurElement extends VSvgElement<FEGaussianBlurElement> {
  @override
  FEGaussianBlurElement elementFactory() => new FEGaussianBlurElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEGaussianBlurElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEGaussianBlurElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VFEGaussianBlurElement prev, FEGaussianBlurElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFEGaussianBlurElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEGaussianBlurElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEGaussianBlurElement(
      FEGaussianBlurElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEGaussianBlurElement(
      FEGaussianBlurElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEImageElement extends VSvgElement<FEImageElement> {
  @override
  FEImageElement elementFactory() => new FEImageElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEImageElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEImageElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VFEImageElement prev, FEImageElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryFEImageElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEImageElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEImageElement(
      FEImageElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEImageElement(
      FEImageElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEMergeElement extends VSvgElement<FEMergeElement> {
  @override
  FEMergeElement elementFactory() => new FEMergeElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEMergeElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEMergeElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VFEMergeElement prev, FEMergeElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryFEMergeElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEMergeElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEMergeElement(
      FEMergeElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEMergeElement(
      FEMergeElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEMergeNodeElement extends VSvgElement<FEMergeNodeElement> {
  @override
  FEMergeNodeElement elementFactory() => new FEMergeNodeElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEMergeNodeElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEMergeNodeElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VFEMergeNodeElement prev, FEMergeNodeElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFEMergeNodeElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEMergeNodeElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEMergeNodeElement(
      FEMergeNodeElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEMergeNodeElement(
      FEMergeNodeElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VFEMorphologyElement<T extends FEMorphologyElement>
    extends VSvgElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEMorphologyElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VFEMorphologyElement<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFEMorphologyElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEMorphologyElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEMorphologyElement(
      FEMorphologyElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEMorphologyElement(
      FEMorphologyElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEOffsetElement extends VSvgElement<FEOffsetElement> {
  @override
  FEOffsetElement elementFactory() => new FEOffsetElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEOffsetElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEOffsetElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VFEOffsetElement prev, FEOffsetElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFEOffsetElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFEOffsetElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEOffsetElement(
      FEOffsetElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEOffsetElement(
      FEOffsetElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFEPointLightElement extends VSvgElement<FEPointLightElement> {
  @override
  FEPointLightElement elementFactory() => new FEPointLightElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FEPointLightElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEPointLightElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VFEPointLightElement prev, FEPointLightElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFEPointLightElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFEPointLightElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFEPointLightElement(
      FEPointLightElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFEPointLightElement(
      FEPointLightElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFESpecularLightingElement
    extends VSvgElement<FESpecularLightingElement> {
  @override
  FESpecularLightingElement elementFactory() => new FESpecularLightingElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FESpecularLightingElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFESpecularLightingElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VFESpecularLightingElement prev, FESpecularLightingElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFESpecularLightingElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFESpecularLightingElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFESpecularLightingElement(
      FESpecularLightingElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFESpecularLightingElement(
      FESpecularLightingElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFESpotLightElement extends VSvgElement<FESpotLightElement> {
  @override
  FESpotLightElement elementFactory() => new FESpotLightElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FESpotLightElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFESpotLightElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VFESpotLightElement prev, FESpotLightElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFESpotLightElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFESpotLightElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFESpotLightElement(
      FESpotLightElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFESpotLightElement(
      FESpotLightElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFETileElement extends VSvgElement<FETileElement> {
  @override
  FETileElement elementFactory() => new FETileElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FETileElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFETileElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VFETileElement prev, FETileElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryFETileElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFETileElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFETileElement(
      FETileElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFETileElement(
      FETileElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFETurbulenceElement extends VSvgElement<FETurbulenceElement> {
  @override
  FETurbulenceElement elementFactory() => new FETurbulenceElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FETurbulenceElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFETurbulenceElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VFETurbulenceElement prev, FETurbulenceElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryFETurbulenceElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeFETurbulenceElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFETurbulenceElement(
      FETurbulenceElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFETurbulenceElement(
      FETurbulenceElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VFilterElement extends VSvgElement<FilterElement> {
  @override
  FilterElement elementFactory() => new FilterElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(FilterElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFilterElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VFilterElement prev, FilterElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryFilterElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeFilterElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeFilterElement(
      FilterElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryFilterElement(
      FilterElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VForeignObjectElement extends VGraphicsElement<ForeignObjectElement> {
  @override
  ForeignObjectElement elementFactory() => new ForeignObjectElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(ForeignObjectElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeForeignObjectElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VForeignObjectElement prev, ForeignObjectElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryForeignObjectElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeForeignObjectElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeForeignObjectElement(
      ForeignObjectElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryForeignObjectElement(
      ForeignObjectElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VGElement extends VGraphicsElement<GElement> {
  @override
  GElement elementFactory() => new GElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(GElement ele) {
    _setValues.forEach((k, dynamic v) => _updateAttributeGElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VGElement prev, GElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryGElement(ele, k, v));
    _setValues.forEach((k, dynamic v) => _updateAttributeGElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeGElement(GElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryGElement(
      GElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VGeometryElement<T extends GeometryElement>
    extends VGraphicsElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeGeometryElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VGeometryElement<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryGeometryElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeGeometryElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeGeometryElement(
      GeometryElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryGeometryElement(
      GeometryElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VGraphicsElement<T extends GraphicsElement>
    extends VSvgElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeGraphicsElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VGraphicsElement<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryGraphicsElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeGraphicsElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeGraphicsElement(
      GraphicsElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryGraphicsElement(
      GraphicsElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VImageElement extends VGraphicsElement<ImageElement> {
  @override
  ImageElement elementFactory() => new ImageElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(ImageElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeImageElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VImageElement prev, ImageElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryImageElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeImageElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeImageElement(
      ImageElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryImageElement(
      ImageElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VLineElement extends VGeometryElement<LineElement> {
  @override
  LineElement elementFactory() => new LineElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(LineElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeLineElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VLineElement prev, LineElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryLineElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeLineElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeLineElement(LineElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryLineElement(
      LineElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VLinearGradientElement extends VSvgElement<LinearGradientElement> {
  @override
  LinearGradientElement elementFactory() => new LinearGradientElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(LinearGradientElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeLinearGradientElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VLinearGradientElement prev, LinearGradientElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryLinearGradientElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeLinearGradientElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeLinearGradientElement(
      LinearGradientElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryLinearGradientElement(
      LinearGradientElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VMarkerElement extends VSvgElement<MarkerElement> {
  @override
  MarkerElement elementFactory() => new MarkerElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(MarkerElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMarkerElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VMarkerElement prev, MarkerElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryMarkerElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMarkerElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMarkerElement(
      MarkerElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryMarkerElement(
      MarkerElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VMaskElement extends VSvgElement<MaskElement> {
  @override
  MaskElement elementFactory() => new MaskElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(MaskElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMaskElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VMaskElement prev, MaskElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryMaskElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMaskElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMaskElement(MaskElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryMaskElement(
      MaskElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VMetadataElement<T extends MetadataElement>
    extends VSvgElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMetadataElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VMetadataElement<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryMetadataElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeMetadataElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeMetadataElement(
      MetadataElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryMetadataElement(
      MetadataElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VPathElement extends VGeometryElement<PathElement> {
  @override
  PathElement elementFactory() => new PathElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(PathElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributePathElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VPathElement prev, PathElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryPathElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributePathElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributePathElement(PathElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryPathElement(
      PathElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VPatternElement extends VSvgElement<PatternElement> {
  @override
  PatternElement elementFactory() => new PatternElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(PatternElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributePatternElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VPatternElement prev, PatternElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryPatternElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributePatternElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributePatternElement(
      PatternElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryPatternElement(
      PatternElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VPolygonElement extends VGeometryElement<PolygonElement> {
  @override
  PolygonElement elementFactory() => new PolygonElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(PolygonElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributePolygonElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VPolygonElement prev, PolygonElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryPolygonElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributePolygonElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributePolygonElement(
      PolygonElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryPolygonElement(
      PolygonElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VPolylineElement extends VGeometryElement<PolylineElement> {
  @override
  PolylineElement elementFactory() => new PolylineElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(PolylineElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributePolylineElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VPolylineElement prev, PolylineElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryPolylineElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributePolylineElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributePolylineElement(
      PolylineElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryPolylineElement(
      PolylineElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VRadialGradientElement extends VSvgElement<RadialGradientElement> {
  @override
  RadialGradientElement elementFactory() => new RadialGradientElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(RadialGradientElement ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeRadialGradientElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      VRadialGradientElement prev, RadialGradientElement ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryRadialGradientElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeRadialGradientElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeRadialGradientElement(
      RadialGradientElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryRadialGradientElement(
      RadialGradientElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VRectElement extends VGeometryElement<RectElement> {
  @override
  RectElement elementFactory() => new RectElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(RectElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeRectElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VRectElement prev, RectElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryRectElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeRectElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeRectElement(RectElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryRectElement(
      RectElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VScriptElement extends VSvgElement<ScriptElement> {
  @override
  ScriptElement elementFactory() => new ScriptElement();

  var _setValues = <String, dynamic>{};

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  @override
  void applyAttributesToElement(ScriptElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeScriptElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VScriptElement prev, ScriptElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryScriptElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeScriptElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeScriptElement(
      ScriptElement ele, String key, dynamic value) {
    switch (key) {
      case 'type':
        ele.type = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryScriptElement(
      ScriptElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'type':
        ele.type = null;
        break;
    }
  }
}

class VSetElement extends VAnimationElement<SetElement> {
  @override
  SetElement elementFactory() => new SetElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(SetElement ele) {
    _setValues.forEach((k, dynamic v) => _updateAttributeSetElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VSetElement prev, SetElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessarySetElement(ele, k, v));
    _setValues.forEach((k, dynamic v) => _updateAttributeSetElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSetElement(SetElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessarySetElement(
      SetElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VStopElement extends VSvgElement<StopElement> {
  @override
  StopElement elementFactory() => new StopElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(StopElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeStopElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VStopElement prev, StopElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryStopElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeStopElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeStopElement(StopElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryStopElement(
      StopElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VStyleElement extends VSvgElement<StyleElement> {
  @override
  StyleElement elementFactory() => new StyleElement();

  var _setValues = <String, dynamic>{};

  bool get disabled => _setValues['disabled'] as bool;
  set disabled(bool v) {
    _setValues['disabled'] = v;
  }

  String get media => _setValues['media'] as String;
  set media(String v) {
    _setValues['media'] = v;
  }

  String get type => _setValues['type'] as String;
  set type(String v) {
    _setValues['type'] = v;
  }

  @override
  void applyAttributesToElement(StyleElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeStyleElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VStyleElement prev, StyleElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryStyleElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeStyleElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeStyleElement(
      StyleElement ele, String key, dynamic value) {
    switch (key) {
      case 'disabled':
        ele.disabled = value as bool;
        break;

      case 'media':
        ele.media = value as String;
        break;

      case 'type':
        ele.type = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessaryStyleElement(
      StyleElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'disabled':
        ele.disabled = null;
        break;

      case 'media':
        ele.media = null;
        break;

      case 'type':
        ele.type = null;
        break;
    }
  }
}

abstract class VSvgElement<T extends SvgElement> extends VElement<T> {
  var _setValues = <String, dynamic>{};

  String get innerHtml => _setValues['innerHtml'] as String;
  set innerHtml(String v) {
    _setValues['innerHtml'] = v;
  }

  @override
  void applyAttributesToElement(T ele) {
    _setValues.forEach((k, dynamic v) => _updateAttributeSvgElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VSvgElement<T> prev, T ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessarySvgElement(ele, k, v));
    _setValues.forEach((k, dynamic v) => _updateAttributeSvgElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSvgElement(SvgElement ele, String key, dynamic value) {
    switch (key) {
      case 'innerHtml':
        ele.innerHtml = value as String;
        break;
    }
  }

  void _removeAttributeIfNecessarySvgElement(
      SvgElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'innerHtml':
        ele.innerHtml = null;
        break;
    }
  }
}

class VSvgSvgElement extends VGraphicsElement<SvgSvgElement> {
  @override
  SvgSvgElement elementFactory() => new SvgSvgElement();

  var _setValues = <String, dynamic>{};

  num get currentScale => _setValues['currentScale'] as num;
  set currentScale(num v) {
    _setValues['currentScale'] = v;
  }

  int get zoomAndPan => _setValues['zoomAndPan'] as int;
  set zoomAndPan(int v) {
    _setValues['zoomAndPan'] = v;
  }

  @override
  void applyAttributesToElement(SvgSvgElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSvgSvgElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VSvgSvgElement prev, SvgSvgElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessarySvgSvgElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSvgSvgElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSvgSvgElement(
      SvgSvgElement ele, String key, dynamic value) {
    switch (key) {
      case 'currentScale':
        ele.currentScale = value as num;
        break;

      case 'zoomAndPan':
        ele.zoomAndPan = value as int;
        break;
    }
  }

  void _removeAttributeIfNecessarySvgSvgElement(
      SvgSvgElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'currentScale':
        ele.currentScale = null;
        break;

      case 'zoomAndPan':
        ele.zoomAndPan = null;
        break;
    }
  }
}

class VSwitchElement extends VGraphicsElement<SwitchElement> {
  @override
  SwitchElement elementFactory() => new SwitchElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(SwitchElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSwitchElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VSwitchElement prev, SwitchElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessarySwitchElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSwitchElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSwitchElement(
      SwitchElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessarySwitchElement(
      SwitchElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VSymbolElement extends VSvgElement<SymbolElement> {
  @override
  SymbolElement elementFactory() => new SymbolElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(SymbolElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSymbolElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VSymbolElement prev, SymbolElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessarySymbolElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeSymbolElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeSymbolElement(
      SymbolElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessarySymbolElement(
      SymbolElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VTSpanElement extends VTextPositioningElement<TSpanElement> {
  @override
  TSpanElement elementFactory() => new TSpanElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(TSpanElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTSpanElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VTSpanElement prev, TSpanElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryTSpanElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTSpanElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTSpanElement(
      TSpanElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryTSpanElement(
      TSpanElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VTextContentElement<T extends TextContentElement>
    extends VGraphicsElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeTextContentElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VTextContentElement<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTextContentElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeTextContentElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTextContentElement(
      TextContentElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryTextContentElement(
      TextContentElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VTextElement extends VTextPositioningElement<TextElement> {
  @override
  TextElement elementFactory() => new TextElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(TextElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTextElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VTextElement prev, TextElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryTextElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTextElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTextElement(TextElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryTextElement(
      TextElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VTextPathElement<T extends TextPathElement>
    extends VTextContentElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTextPathElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(covariant VTextPathElement<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTextPathElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTextPathElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTextPathElement(
      TextPathElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryTextPathElement(
      TextPathElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

abstract class VTextPositioningElement<T extends TextPositioningElement>
    extends VTextContentElement<T> {
  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(T ele) {
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeTextPositioningElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(
      covariant VTextPositioningElement<T> prev, T ele) {
    prev._setValues.forEach((k, dynamic v) =>
        _removeAttributeIfNecessaryTextPositioningElement(ele, k, v));
    _setValues.forEach(
        (k, dynamic v) => _updateAttributeTextPositioningElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTextPositioningElement(
      TextPositioningElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryTextPositioningElement(
      TextPositioningElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VTitleElement extends VSvgElement<TitleElement> {
  @override
  TitleElement elementFactory() => new TitleElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(TitleElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTitleElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VTitleElement prev, TitleElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryTitleElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeTitleElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeTitleElement(
      TitleElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryTitleElement(
      TitleElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VUseElement extends VGraphicsElement<UseElement> {
  @override
  UseElement elementFactory() => new UseElement();

  var _setValues = <String, dynamic>{};

  @override
  void applyAttributesToElement(UseElement ele) {
    _setValues.forEach((k, dynamic v) => _updateAttributeUseElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VUseElement prev, UseElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryUseElement(ele, k, v));
    _setValues.forEach((k, dynamic v) => _updateAttributeUseElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeUseElement(UseElement ele, String key, dynamic value) {
    switch (key) {
    }
  }

  void _removeAttributeIfNecessaryUseElement(
      UseElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
    }
  }
}

class VViewElement extends VSvgElement<ViewElement> {
  @override
  ViewElement elementFactory() => new ViewElement();

  var _setValues = <String, dynamic>{};

  int get zoomAndPan => _setValues['zoomAndPan'] as int;
  set zoomAndPan(int v) {
    _setValues['zoomAndPan'] = v;
  }

  @override
  void applyAttributesToElement(ViewElement ele) {
    _setValues
        .forEach((k, dynamic v) => _updateAttributeViewElement(ele, k, v));
    super.applyAttributesToElement(ele);
  }

  @override
  void updateElementAttributes(VViewElement prev, ViewElement ele) {
    prev._setValues.forEach(
        (k, dynamic v) => _removeAttributeIfNecessaryViewElement(ele, k, v));
    _setValues
        .forEach((k, dynamic v) => _updateAttributeViewElement(ele, k, v));
    prev._setValues = _setValues;
    super.updateElementAttributes(prev, ele);
  }

  void _updateAttributeViewElement(ViewElement ele, String key, dynamic value) {
    switch (key) {
      case 'zoomAndPan':
        ele.zoomAndPan = value as int;
        break;
    }
  }

  void _removeAttributeIfNecessaryViewElement(
      ViewElement ele, String key, dynamic value) {
    if (_setValues.containsKey(key)) return;
    switch (key) {
      case 'zoomAndPan':
        ele.zoomAndPan = null;
        break;
    }
  }
}
