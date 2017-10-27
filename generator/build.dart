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

import 'templates.dart';
import 'parsing.dart';

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
  result.write('part of wui_builder;');

  for (final classElement in allTypes) {
    if (classElement.name == 'Element') {
      final setters = localSetters(classElement).where(
          (setter) => setter.name != 'children' && setter.name != 'nodes');
      final events = localEvents(classElement);

      result.write(vElement(setters, events));

      if (classElement.constructors.length > 0) {
        for (var constructor in classElement.constructors) {
          var constructorName = constructor.name;
          // Workaround: ignore the following constructors
          if (constructorName == '' ||
              constructorName == '_' ||
              constructorName == 'created' ||
              constructorName == 'html' ||
              constructorName == 'tag') continue;
          result.write(customFactoryElement(
            constructorName,
            classElement.name,
          ));
        }
      }
    } else if ((isElement(classElement) || isInput(classElement)) &&
        classElement.isPublic) {
      final setters = localSetters(classElement);

      // Workaround: VInputElementBase is an interface not an abstract class so
      // elements that implement VInputElementBase are treated as subclasses of VInputElementBase
      var superclass =
          isInput(classElement) && classElement.name != 'InputElement'
              ? classElement.interfaces.first.element.name
              : classElement.supertype.element.name;
      final vElementIsAbstract = !hasValidConstructor(classElement);

      if (vElementIsAbstract) {
        result.write(
            vElementAbstractSubclass(classElement.name, superclass, setters));
      } else {
        result.write(vElementSubclass(classElement.name, superclass, setters));
      }

      if (classElement.constructors.length > 0) {
        for (var constructor in classElement.constructors) {
          var constructorName = constructor.name;
          if (constructorName == '' ||
              constructorName == '_' ||
              constructorName == 'created') continue;
          result.write(customFactoryElement(
            constructorName,
            classElement.name,
          ));
        }
      }
    }
  }

  final formatter = new DartFormatter();
  final formatted = formatter.format(result.toString());
  new File('lib/src/velements.g.dart').writeAsStringSync(formatted);
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
