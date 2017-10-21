// import 'dart:async';
import 'dart:io';
import 'package:dart_style/dart_style.dart';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/file_system/file_system.dart' hide File;
import 'package:analyzer/file_system/physical_file_system.dart';
import 'package:analyzer/src/dart/sdk/sdk.dart';
import 'package:analyzer/src/generated/engine.dart';
import 'package:analyzer/src/generated/sdk.dart' show DartSdk;
import 'package:analyzer/src/generated/source.dart';
import 'package:analyzer/src/generated/source_io.dart';
import 'package:analyzer/src/source/source_resource.dart';

void main(List<String> args) {
  if (args.length != 1) {
    print('Usage: build.dart <path_to_sdk>');
    exit(1);
  }

  final sdkRoot = args[0];
  final htmlPath = '$sdkRoot/lib/html/dart2js/html_dart2js.dart';
  final svgPath = '$sdkRoot/lib/svg/dart2js/svg_dart2js.dart';

  final htmlLib = _resolveLibrary(sdkRoot, htmlPath);
  final htmlTypes = htmlLib.element.library.definingCompilationUnit.types;
  final svgLib = _resolveLibrary(sdkRoot, svgPath);
  final svgTypes = svgLib.element.library.definingCompilationUnit.types;
  final allTypes = htmlTypes.toList();

  ///..addAll(svgTypes);
  print('${htmlTypes.length} ${svgTypes.length} ${allTypes.length}');
  final result = new StringBuffer();
  result.write('part of built_ui;');

  for (final classElement in allTypes) {
    if (classElement.name == 'HtmlElement') {
      result.write(
          'abstract class VHtmlElement<T extends HtmlElement> extends VElement<T> {}');
    } else if (classElement.name == 'Element') {
      final localSetters = _localSetters(classElement).where(
          (setter) => setter.name != 'children' && setter.name != 'nodes');
      final localEvents = _localEvents(classElement);

      result.write('''abstract class VElement<E extends Element> extends VNode {
        Map<String, StreamSubscription> _subs = new Map<String, StreamSubscription>();
        bool shouldUpdateSubs = false;
        Iterable<VNode> _children;
        Iterable<VNode> get children => _children;
        void set children(Iterable<VNode> c) {
          _children = c.toList();
        }

        StyleBuilder styleBuilder;

        String _text;
        bool _textSet = false;
        String get text => _text;
        void set text(String v) {
          _text = v;
          _textSet = true;
        }''');

      localSetters.forEach(
        (setter) => result.write('''
          ${setter.type} _${setter.name};
          bool _${setter.name}Set = false;

          ${setter.type} get ${setter.name} => _${setter.name};
          void set ${setter.name}(${setter.type} v) {
             _${setter.name} = v;
             _${setter.name}Set = true;
          }'''),
      );

      localEvents.forEach(
        (event) => result.write('''
          StreamSubscription _${event.name}Sub;
          bool _${event.name}Set = false;
          ${event.type} _${event.name};
          ${event.type} get ${event.name} => _${event.name};
          void set ${event.name}(${event.type} v) {
             _${event.name} = v;
             _${event.name}Set = true;
          }'''),
      );

      result.write('''
        void dispose() {
          // TODO: fix
          for (var sub in _subs.values) {
            sub.cancel();
          }
        }

        E _elementFactory();

        void _applyAttributesToElement(E ele) {
          if (_textSet) {
            final first = ele.firstChild;
            if (first != null && first == ele.lastChild && first.nodeType == Node.TEXT_NODE) {
              first.text = text;
            } else {
              ele.text = text;
            }
          }
          if (styleBuilder != null) styleBuilder(ele.style);''');

      localSetters.forEach(
        (setter) => result.write(
            'if (_${setter.name}Set) ele.${setter.name} = ${setter.name};'),
      );

      result.write('''}
        void _applyEventListenersToElement(Element ele) {''');
      localEvents.forEach(
        (event) => result.write('''if (_${event.name}Set) {
            _${event.name}Sub = ele.${event.name}.listen(${event.name});
        }'''),
      );

      result.write('''}
        void _updateEventListenersToElement(VElement oldVElement, Element ele) {
          ''');
      localEvents.forEach(
        (event) => result.write('''
        if (_${event.name}Set) {
          if (!oldVElement._${event.name}Set) {
            _${event.name}Sub = ele.${event.name}.listen(${event.name});
          } else if (oldVElement.${event.name} != ${event.name}) {
            oldVElement._${event.name}Sub.cancel();
            _${event.name}Sub = ele.${event.name}.listen(${event.name});
          } else {
            _${event.name}Sub = oldVElement._${event.name}Sub;
          }
        } else if (oldVElement._${event.name}Set) {
          oldVElement._${event.name}Sub.cancel();
        }'''),
      );

      result.write('}}');

      if (classElement.constructors.length > 0) {
        for (var constructor in classElement.constructors) {
          var constructorName = constructor.name;
          if (constructorName == '' ||
              constructorName == '_' ||
              constructorName == 'created' ||
              constructorName == 'html' ||
              constructorName == 'tag') continue;
          result.write('''class V${constructorName} extends VElement<Element> {
            @override
            ${classElement.name} _elementFactory() => new ${classElement.name}.${constructorName}();
          }''');
        }
      }
    } else if ((_isElement(classElement) || _isInput(classElement)) &&
        classElement.isPublic &&
        classElement.name != 'InputElement') {
      final localSetters = _localSetters(classElement);
      final superclass = _isInput(classElement)
          ? classElement.interfaces.first.element.name
          : classElement.supertype.element.name;
      final vElementIsAbstract = !_hasValidConstructor(classElement);

      if (vElementIsAbstract) {
        result.write('abstract ');
      }

      var genericType = classElement.name;
      result.write('class V${classElement.name}');
      if (vElementIsAbstract) {
        result.write('<T extends $genericType>');
        genericType = 'T';
      }

      if (superclass != null && superclass != 'Object') {
        result.write(' extends V${superclass}<$genericType>');
      }

      result.write('{');
      localSetters.forEach(
        (setter) => result.write('''
          ${setter.type} _${setter.name};
          bool _${setter.name}Set = false;
          ${setter.type} get ${setter.name} => _${setter.name};
          void set ${setter.name}(${setter.type} v) {
             _${setter.name} = v;
             _${setter.name}Set = true;
          }'''),
      );

      if (!vElementIsAbstract) {
        result.write('\n@override\n');
        result.write(
            '${classElement.name} _elementFactory() => new ${classElement.name}();');
      }

      result.write('\n@override\n');
      result.write('void _applyAttributesToElement(${genericType} ele) {');
      result.write('super._applyAttributesToElement(ele);');
      localSetters.forEach(
        (setter) => result.write(
            'if (_${setter.name}Set) ele.${setter.name} = ${setter.name};'),
      );
      result.write('}');

      result.write('}\n');

      if (classElement.constructors.length > 0) {
        for (var constructor in classElement.constructors) {
          var constructorName = constructor.name;
          if (constructorName == '' ||
              constructorName == '_' ||
              constructorName == 'created') continue;
          result.write(
              'class V${constructorName} extends V${classElement.name} {');
          result.write(
              '${classElement.name} _elementFactory() => new ${classElement.name}.${constructorName}();');
          result.write('}\n');
        }
      }
    }
  }

  final formatter = new DartFormatter();
  final formatted = formatter.format(result.toString());
  new File('lib/src/velements.g.dart').writeAsStringSync(formatted);
}

bool _hasValidConstructor(ClassElement e) =>
    e.constructors.any((c) => c.name == '' && c.isFactory);
bool _isElement(ClassElement e) =>
    e.allSupertypes.any((s) => s.name == 'Element');
bool _isInput(ClassElement e) =>
    e.name == 'InputElementBase' ||
    e.allSupertypes.any((s) => s.name == 'InputElementBase');

Iterable<Setter> _localSetters(ClassElement e) => e.accessors
    .where(
      (accessor) => accessor.isSetter && accessor.isPublic,
    )
    .map((accessor) => new Setter(
          accessor.name.substring(0, accessor.name.length - 1),
          accessor.parameters.first.type.toString(),
          '',
        ));

Iterable<VEvent> _localEvents(ClassElement e) => e.accessors
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
          '',
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

// resolves the ast structure
CompilationUnit _resolveLibrary(String sdkRoot, String libPath) {
  PhysicalResourceProvider resourceProvider = PhysicalResourceProvider.INSTANCE;
  DartSdk sdk = new FolderBasedDartSdk(
      resourceProvider, resourceProvider.getFolder(sdkRoot));

  var resolvers = [
    new DartUriResolver(sdk),
    new ResourceUriResolver(resourceProvider)
  ];

  AnalysisContext context = AnalysisEngine.instance.createAnalysisContext()
    ..sourceFactory = new SourceFactory(resolvers);

  Source source = new FileSource(resourceProvider.getFile(libPath));
  ChangeSet changeSet = new ChangeSet()..addedSource(source);
  context.applyChanges(changeSet);
  LibraryElement libElement = context.computeLibraryElement(source);

  return context.resolveCompilationUnit(source, libElement);
}
