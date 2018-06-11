import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/vhtml.dart';

import 'test_util/testbed.dart';

void main() {
  group('iterable children test -', () {
    DivElement host;

    setUp(() {
      setUpTestbed();
      host = new DivElement();
    });

    test('renders', () {
      final node = new VIterable([
        new VText('goodbye'),
        new Vdiv()..text = 'cruel',
        new VText('world')
      ]);
      render(node, host);

      expect(host.innerHtml, 'goodbye<div>cruel</div>world');
      expect(node.ref.text, 'goodbye');
    });

    test('renders with vifs respected', () {
      final node = new VIterable([
        new VText('goodbye')..vif = false,
        new Vdiv()..text = 'cruel',
        new VText('world')
      ]);
      render(node, host);

      expect(host.innerHtml, '<div>cruel</div>world');
      expect(node.ref.text, 'cruel');
    });

    test('renders with nested VIterable', () {
      final node = new VIterable([
        new VText('goodbye'),
        new VIterable([
          new VText('cru'),
          new VText('el'),
        ]),
        new VText('world'),
      ]);
      render(node, host);

      expect(host.innerHtml, 'goodbyecruelworld');
      expect(node.ref.text, 'goodbye');
    });

    test('renders with nested VIterable and vifs', () {
      final node = new VIterable([
        new VText('goodbye')..vif = false,
        new VIterable([
          new VText('cru'),
          new VText('el')..vif = false,
        ]),
        new VText('world'),
      ]);
      render(node, host);

      expect(host.innerHtml, 'cruworld');
      expect(node.ref.text, 'cru');
    });

    test('get deep', () {
      final node = new VIterable([
        new VText('go'),
        new VText('od'),
        new VIterable([
          new VText('bye'),
          new VIterable([
            new VText('cru'),
            new Vdiv()..text = 'el',
          ]),
        ]),
        new VText('world'),
      ]);
      render(node, host);

      expect(host.innerHtml, 'goodbyecru<div>el</div>world');
      expect(node.ref.text, 'go');
    });

    test('get deep with vifs', () {
      final node = new VIterable([
        new VText('go')..vif = false,
        new VText('od'),
        new VIterable([
          new VText('bye'),
          new VIterable([
            new VText('cru'),
            new Vdiv()
              ..text = 'el'
              ..vif = false,
          ]),
        ]),
        new VText('world'),
      ]);
      render(node, host);

      expect(host.innerHtml, 'odbyecruworld');
      expect(node.ref.text, 'od');
    });
  });
}
