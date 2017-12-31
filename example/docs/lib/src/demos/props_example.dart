import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// PropsExampleProps is a class that is passed to the
// PropsExample component on instantiation. Props provide
// components with any data they need to render. In this
// case it contains a message to render into a div
class PropsExampleProps {
  String message;
}

// Hello world is a component that simply renders
// the message property from its props object into a div
class PropsExample extends PComponent<PropsExampleProps> {
  PropsExample(PropsExampleProps props) : super(props);

  @override
  VNode render() => new VDivElement()..text = props.message;
}
