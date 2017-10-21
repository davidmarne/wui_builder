import 'dart:html';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder_todos/todos.dart';

void main() {
  final component = container(null);
  render(component, querySelector('#container'));
}
