import 'dart:html';

import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/components.dart';

import 'todo.dart';

typedef void AddTodoT(Todo todo);

class AddTodoProps {
  AddTodoT addTodo;
}

class AddTodo extends PComponent<AddTodoProps> {
  AddTodo(AddTodoProps props) : super(props);

  @override
  VNode render() => new VDivElement()
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
                    ..onKeyUp = _onKeyUp
                    ..placeholder = 'U kno u got stuff to do',
                ],
            ],
        ],
    ];

  void _onKeyUp(KeyboardEvent e) {
    if (e.keyCode == KeyCode.ENTER) {
      props.addTodo(new Todo()
        ..id = new DateTime.now().millisecondsSinceEpoch
        ..text = (e.target as TextInputElement).value
        ..isComplete = false);
    }
  }
}
