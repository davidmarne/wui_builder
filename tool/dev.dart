library tool.dev;

import 'dart:async';
import 'package:dart_dev/dart_dev.dart' show dev, config;

Future<Null> main(List<String> args) async {
  const directories = const <String>[
    'lib/',
    'lib/src/',
    'test/unit/',
  ];

  config.format..lineLength = 80;

  config.analyze
    ..strong = true
    ..fatalWarnings = false
    ..entryPoints = directories;

  config.test
    ..concurrency = 1
    ..platforms = ['chrome']
    ..unitTests = [
      'test/unit/',
    ];

  config.coverage
    ..html = false
    ..pubServe = true
    ..reportOn = ['lib/'];

  await dev(args);
}
