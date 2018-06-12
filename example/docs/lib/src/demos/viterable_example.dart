import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// VIterable can be used to return a list of VNodes
// from a render function
class VIterableExample extends NComponent {
  @override
  VNode render() => VIterable([
        Vdiv()..text = 'a',
        Vdiv()..text = 'b',
        Vdiv()..text = 'c',
        Vdiv()..text = 'd',
      ]);
}
