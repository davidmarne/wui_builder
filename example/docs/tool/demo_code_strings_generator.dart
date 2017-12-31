import 'dart:async';
import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart';
import 'package:yaml/yaml.dart';

// must be run from root of home_page
Future<Null> main() async {
  final result = new StringBuffer();

  final dir = new Directory('lib/src/demos');
  final contents = dir.listSync();
  result.write('\n// ignore_for_file: constant_identifier_names\n');

  final pubspecFile = new File('pubspec.yaml');
  final dynamic pubspecYaml = loadYaml(pubspecFile.readAsStringSync());
  final version = pubspecYaml['version'] as String;
  result.write('\nconst version = \'$version\';\n\n');

  for (final file in contents) {
    if (file is File) {
      final fileName = basename(file.path).replaceFirst('.dart', '');
      final fileContent = await file.readAsString();
      result.write('const $fileName = r\'\'\'\n$fileContent\n\'\'\';\n\n');
    }
  }

  final formatter = new DartFormatter();
  final formatted = formatter.format(result.toString());
  final output = new File('lib/src/demo_code_strings/demo_code_strings.dart');
  output.writeAsStringSync(formatted);
}
