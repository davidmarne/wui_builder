import 'dart:io';
import 'package:dart_style/dart_style.dart';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/file_system/file_system.dart' hide File;
import 'package:analyzer/file_system/physical_file_system.dart';
import 'package:analyzer/src/dart/sdk/sdk.dart';
import 'package:analyzer/src/generated/engine.dart';
import 'package:analyzer/src/generated/source.dart';
import 'package:analyzer/src/generated/source_io.dart';
import 'package:analyzer/src/source/source_resource.dart';

import 'parsing.dart';
import 'templates.dart';

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

  final lintIgnores = '''\n
    // ignore_for_file: annotate_overrides
    // ignore_for_file: overridden_fields\n
  ''';

  ///..addAll(svgTypes);
  print('${htmlTypes.length} ${svgTypes.length} ${allTypes.length}');
  final result = new StringBuffer()
    ..write("import 'dart:html';")
    ..write("import 'package:meta/meta.dart';")
    ..write("import 'wui_builder.dart' show VElement;")
    ..write(lintIgnores);

  for (final classElement in htmlTypes) {
    if (classElement.name == 'Element') {
      final vEleResult = new StringBuffer()
        ..write("part of velement;")
        ..write(lintIgnores);

      final setters = localSetters(classElement).where(
          (setter) => setter.name != 'children' && setter.name != 'nodes');
      final events = localEvents(classElement);

      vEleResult.write(vElement(setters, events));

      if (classElement.constructors.isNotEmpty) {
        for (var constructor in classElement.constructors) {
          final constructorName = constructor.name;
          // Workaround: ignore the following constructors
          if (constructorName == '' ||
              constructorName == '_' ||
              constructorName == 'created' ||
              constructorName == 'html' ||
              constructorName == 'tag') continue;
          result.write(customFactoryElement(
            constructorName,
            classElement.name,
            'html',
          ));
        }
      }

      final formatter = new DartFormatter();
      final formatted = formatter.format(vEleResult.toString());
      new File('lib/src/wui_builder/velement/velement.dart')
          .writeAsStringSync(formatted);
    } else if ((isElement(classElement) || isInput(classElement)) &&
        classElement.isPublic) {
      final setters = localSetters(classElement);

      // Workaround: VInputElementBase is an interface not an abstract class so
      // elements that implement VInputElementBase are treated as subclasses of VInputElementBase
      final superclass =
          isInput(classElement) && classElement.name != 'InputElement'
              ? classElement.interfaces.first.element.name
              : classElement.supertype.element.name;
      final vElementIsAbstract = !hasValidConstructor(classElement);

      if (vElementIsAbstract) {
        result.write(vElementAbstractSubclass(
            classElement.name, superclass, setters, 'html'));
      } else {
        result.write(
            vElementSubclass(classElement.name, superclass, setters, 'html'));
      }

      if (classElement.constructors.isNotEmpty) {
        for (var constructor in classElement.constructors) {
          final constructorName = constructor.name;
          if (constructorName == '' ||
              constructorName == '_' ||
              constructorName == 'created' ||
              constructorName == 'tag' ||
              constructorName == 'svg') continue;
          result.write(customFactoryElement(
            constructorName,
            classElement.name,
            'html',
          ));
        }
      }
    }
  }

  final formatter = new DartFormatter();
  final formatted = formatter.format(result.toString());
  new File('lib/vhtml.dart').writeAsStringSync(formatted);

  result
    ..clear()
    ..write("import 'dart:svg';")
    ..write("import 'package:meta/meta.dart';")
    ..write("import 'wui_builder.dart' show VElement;")
    ..write(lintIgnores);

  for (final classElement in svgTypes) {
    if (isElement(classElement) && classElement.isPublic) {
      final setters = localSetters(classElement);

      // Workaround: VInputElementBase is an interface not an abstract class so
      // elements that implement VInputElementBase are treated as subclasses of VInputElementBase
      var superclass = classElement.supertype.element.name;
      if (classElement.supertype.element.isPrivate) superclass = 'SvgElement';

      final vElementIsAbstract = !hasValidConstructor(classElement);

      if (vElementIsAbstract) {
        result.write(vElementAbstractSubclass(
            classElement.name, superclass, setters, 'svg'));
      } else {
        result.write(
            vElementSubclass(classElement.name, superclass, setters, 'svg'));
      }

      if (classElement.constructors.isNotEmpty) {
        for (final constructor in classElement.constructors) {
          final constructorName = constructor.name;
          if (constructorName == '' ||
              constructorName == '_' ||
              constructorName == 'created' ||
              constructorName == 'tag' ||
              constructorName == 'svg') continue;
          result.write(customFactoryElement(
            constructorName,
            classElement.name,
            'svg',
          ));
        }
      }
    }
  }

  final svgFormatted = formatter.format(result.toString());
  new File('lib/vsvg.dart').writeAsStringSync(svgFormatted);
}

// resolves the ast structure
CompilationUnit _resolveLibrary(String sdkRoot, String libPath) {
  final resourceProvider = PhysicalResourceProvider.INSTANCE;
  final sdk = new FolderBasedDartSdk(
      resourceProvider, resourceProvider.getFolder(sdkRoot));

  final resolvers = [
    new DartUriResolver(sdk),
    new ResourceUriResolver(resourceProvider)
  ];

  final context = AnalysisEngine.instance.createAnalysisContext()
    ..sourceFactory = new SourceFactory(resolvers);

  final source = new FileSource(resourceProvider.getFile(libPath));
  final changeSet = new ChangeSet()..addedSource(source);
  context.applyChanges(changeSet);
  final libElement = context.computeLibraryElement(source);

  return context.resolveCompilationUnit(source, libElement);
}
