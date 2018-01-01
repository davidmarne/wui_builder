import 'package:analyzer/dart/element/element.dart';

bool hasValidConstructor(ClassElement e) =>
    e.name != 'HtmlElement' && // Workaround: generate HtmlElement as abstract
    e.name != 'AnimationElement' &&
    e.constructors.any((c) => c.name == '' && c.isFactory);
bool isElement(ClassElement e) =>
    e.allSupertypes.any((s) => s.name == 'Element');
bool isInput(ClassElement e) =>
    e.name == 'InputElementBase' ||
    e.allSupertypes.any((s) => s.name == 'InputElementBase');

Iterable<Setter> localSetters(ClassElement e) => e.accessors
    .where(
      (accessor) =>
          accessor.isSetter &&
          accessor.isPublic &&
          !accessor.name.contains('children') &&
          !accessor.name.contains('attributes'),
    )
    .map((accessor) => new Setter(
          accessor.name.substring(0, accessor.name.length - 1),
          accessor.parameters.first.type.toString(),
          accessor.documentationComment,
        ));

Iterable<VEvent> localEvents(ClassElement e) => e.accessors
    .where(
      (accessor) =>
          accessor.isGetter &&
          accessor.isPublic &&
          accessor.returnType.toString().startsWith('ElementStream'),
    )
    .map((accessor) => new VEvent(
          accessor.name,
          accessor.returnType
              .toString()
              .replaceFirst('ElementStream', 'EventHandler'),
          accessor.documentationComment,
        ));

class VEvent {
  final String name;
  final String type;
  final String comment;
  VEvent(this.name, this.type, this.comment);
}

class Setter {
  final String name;
  final String type;
  final String comment;
  Setter(this.name, this.type, this.comment);
}
