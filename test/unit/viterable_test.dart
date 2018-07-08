import 'dart:html';

import 'package:test/test.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/vhtml.dart';

import 'test_util/iterable_test_component.dart';
import 'test_util/testbed.dart';

void main() {
  group('iterable children test -', () {
    DivElement host;

    setUp(() {
      setUpTestbed();
      host = DivElement();
    });

    test('renders', () {
      final node =
          VIterable([VText('goodbye'), Vdiv()..text = 'cruel', VText('world')]);
      render(node, host);

      expect(host.innerHtml, 'goodbye<div>cruel</div>world');
      expect(node.ref.text, 'goodbye');
    });

    test('renders with vifs respected', () {
      final node = VIterable([
        VText('goodbye')..vif = false,
        Vdiv()..text = 'cruel',
        VText('world')
      ]);
      render(node, host);

      expect(host.innerHtml, '<div>cruel</div>world');
      expect(node.ref.text, 'cruel');
    });

    test('renders with nested VIterable', () {
      final node = VIterable([
        VText('goodbye'),
        VIterable([
          VText('cru'),
          VText('el'),
        ]),
        VText('world'),
      ]);
      render(node, host);

      expect(host.innerHtml, 'goodbyecruelworld');
      expect(node.ref.text, 'goodbye');
    });

    test('renders with nested VIterable and vifs', () {
      final node = VIterable([
        VText('goodbye')..vif = false,
        VIterable([
          VText('cru'),
          VText('el')..vif = false,
        ]),
        VText('world'),
      ]);
      render(node, host);

      expect(host.innerHtml, 'cruworld');
      expect(node.ref.text, 'cru');
    });

    test('get deep', () {
      final node = VIterable([
        VText('go'),
        VText('od'),
        VIterable([
          VText('bye'),
          VIterable([
            VText('cru'),
            Vdiv()..text = 'el',
          ]),
        ]),
        VText('world'),
      ]);
      render(node, host);

      expect(host.innerHtml, 'goodbyecru<div>el</div>world');
      expect(node.ref.text, 'go');
    });

    test('get deep with vifs', () {
      final node = VIterable([
        VText('go')..vif = false,
        VText('od'),
        VIterable([
          VText('bye'),
          VIterable([
            VText('cru'),
            Vdiv()
              ..text = 'el'
              ..vif = false,
          ]),
        ]),
        VText('world'),
      ]);
      render(node, host);

      expect(host.innerHtml, 'odbyecruworld');
      expect(node.ref.text, 'od');
    });

    test('add/remove/shuffle items', () {
      final component = IterableTestComponent([
        VText('go'),
        VText('od'),
      ]);

      render(component, host);

      // add node
      expect(host.innerHtml, 'good');
      component.setChildren([
        VText('go'),
        VText('od'),
        VText('bye'),
      ]);
      expect(host.innerHtml, 'goodbye');

      // swap nodes
      component.setChildren([
        VText('od'),
        VText('go'),
        VText('bye'),
      ]);
      expect(host.innerHtml, 'odgobye');

      // remove node
      component.setChildren([
        VText('go'),
      ]);
      expect(host.innerHtml, 'go');
    });

    test('add/remove/shuffle nested lists', () {
      final component = IterableTestComponent([
        VIterable([
          VText('g'),
          VText('o'),
        ]),
        VIterable([
          VText('o'),
          VText('d'),
        ]),
      ]);

      render(component, host);

      // add node
      expect(host.innerHtml, 'good');
      component.setChildren([
        VIterable([
          VText('g'),
          VText('o'),
        ]),
        VIterable([
          VText('o'),
          VText('d'),
        ]),
        VIterable([
          VText('by'),
          VText('e'),
        ]),
      ]);
      expect(host.innerHtml, 'goodbye');

      // swap nodes
      component.setChildren([
        VIterable([
          VText('o'),
          VText('d'),
        ]),
        VIterable([
          VText('g'),
          VText('o'),
        ]),
        VIterable([
          VText('by'),
          VText('e'),
        ]),
      ]);
      expect(host.innerHtml, 'odgobye');

      // remove node
      component.setChildren([
        VIterable([
          VText('g'),
          VText('o'),
        ]),
      ]);
      expect(host.innerHtml, 'go');
    });

    test('add/remove/shuffle items keyed', () {
      final component = IterableTestComponent([
        VText('go', key: 'go'),
        VText('od', key: 'od'),
      ]);

      render(component, host);

      // add node
      expect(host.innerHtml, 'good');
      component.setChildren([
        VText('go', key: 'go'),
        VText('od', key: 'od'),
        VText('bye', key: 'bye'),
      ]);
      expect(host.innerHtml, 'goodbye');

      // swap nodes
      component.setChildren([
        VText('od', key: 'od'),
        VText('go', key: 'go'),
        VText('bye', key: 'bye'),
      ]);
      expect(host.innerHtml, 'odgobye');

      // remove node
      component.setChildren([
        VText('go', key: 'go'),
      ]);
      expect(host.innerHtml, 'go');
    });

    test('add/remove/shuffle nested lists keyed', () {
      final component = IterableTestComponent([
        VIterable([
          VText('g'),
          VText('o'),
        ], key: 'go'),
        VIterable([
          VText('o'),
          VText('d'),
        ], key: 'od'),
      ]);

      render(component, host);

      // add node
      expect(host.innerHtml, 'good');
      component.setChildren([
        VIterable([
          VText('g'),
          VText('o'),
        ], key: 'go'),
        VIterable([
          VText('o'),
          VText('d'),
        ], key: 'od'),
        VIterable([
          VText('by'),
          VText('e'),
        ], key: 'bye'),
      ]);
      expect(host.innerHtml, 'goodbye');

      // swap nodes
      component.setChildren([
        VIterable([
          VText('o'),
          VText('d'),
        ], key: 'od'),
        VIterable([
          VText('g'),
          VText('o'),
        ], key: 'go'),
        VIterable([
          VText('by'),
          VText('e'),
        ], key: 'bye'),
      ]);
      expect(host.innerHtml, 'odgobye');

      // remove node
      component.setChildren([
        VIterable([
          VText('g'),
          VText('o'),
        ], key: 'go'),
      ]);
      expect(host.innerHtml, 'go');
    });
  });
}
