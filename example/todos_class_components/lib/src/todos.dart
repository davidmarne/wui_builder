import 'dart:html';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/components.dart';

import 'todo.dart';

typedef void UpdateTodo(int id);
typedef void PutAfter(int before, int after);

class TodoProps {
  Todo todo;
  UpdateTodo updateTodo;
  PutAfter putAfter;
}

class Todos extends PComponent<TodoProps> {
  Todos(TodoProps props) : super(props);

  @override
  VNode render() => new Va()
    ..draggable = true
    ..onDragStart = _onDrag
    ..onDragOver = _onDragOver
    ..onDrop = _onDrop
    ..onClick = _onClick
    ..className = 'panel-block ${props.todo.isComplete ? "is-active" : ""}'
    ..children = [
      new VLabelElement()
        ..className = 'checkbox'
        ..children = [
          new VCheckboxInputElement()..checked = props.todo.isComplete,
        ],
      new VSpanElement()
        ..text = ' ${props.todo.text}'
        ..styleBuilder = (new StyleBuilder()
          ..textDecoration = props.todo.isComplete ? 'line-through' : ''),
    ];

  void _onDrag(MouseEvent e) {
    e.dataTransfer.setData('todo-id', '${props.todo.id}');
  }

  void _onDragOver(MouseEvent e) {
    e.preventDefault();
    e.dataTransfer.dropEffect = 'move';
  }

  void _onDrop(MouseEvent e) {
    final todoId = e.dataTransfer.getData('todo-id');
    props.putAfter(props.todo.id, int.parse(todoId));
  }

  void _onClick(MouseEvent e) {
    props.updateTodo(props.todo.id);
  }
}
