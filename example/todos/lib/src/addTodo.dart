import 'dart:html';
import 'package:wui_builder/wui_builder.dart';
import 'todo.dart';

typedef void AddTodo(Todo todo);

class AddTodoProps {
  AddTodo addTodo;
}

VNode addTodo(AddTodoProps props) => new VDivElement()
  ..className = 'panel-block'
  ..children = [
    new VParagraphElement()
      ..className = 'control'
      ..children = [
        new VDivElement()
          ..className = 'field'
          ..children = [
            new VLabelElement()
              ..className = 'label'
              ..text = 'Add a todo',
            new VDivElement()
              ..className = 'control'
              ..children = [
                new VTextInputElement()
                  ..className = 'input'
                  ..onKeyUp = ((e) => _onKeyUp(e, props.addTodo))
                  ..placeholder = 'U kno u got stuff to do',
              ],
          ],
      ],
  ];

_onKeyUp(KeyboardEvent e, AddTodo addTodo) {
  if (e.keyCode == KeyCode.ENTER) {
    addTodo(new Todo()
      ..id = new DateTime.now().millisecondsSinceEpoch
      ..text = (e.target as TextInputElement).value
      ..isComplete = false);
  }
}
