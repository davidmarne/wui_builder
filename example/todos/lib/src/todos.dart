import 'dart:html';
import 'package:wui_builder/wui_builder.dart';

import 'todo.dart';

typedef void UpdateTodo(int id);
typedef void PutAfter(int before, int after);

class TodoProps {
  Todo todo;
  UpdateTodo updateTodo;
  PutAfter putAfter;
}

VNode todo(TodoProps props) => new Va()
  ..draggable = true
  ..onDragStart = ((e) => _onDrag(e, props.todo))
  ..onDragOver = _onDragOver
  ..onDrop = ((e) => _onDrop(e, props.todo, props.putAfter))
  ..onClick = ((e) => props.updateTodo(props.todo.id))
  ..className = 'panel-block ${props.todo.isComplete ? "is-active" : ""}'
  ..children = [
    new VLabelElement()
      ..className = 'checkbox'
      ..children = [
        new VCheckboxInputElement()..checked = props.todo.isComplete,
      ],
    new VSpanElement()
      ..text = ' ' + props.todo.text
      ..styleBuilder = ((style) => _styleBuilder(style, props.todo.isComplete)),
  ];

void _styleBuilder(CssStyleDeclaration style, bool isComplete) {
  style.textDecoration = isComplete ? 'line-through' : '';
}

void _onDrag(MouseEvent e, Todo todo) {
  e.dataTransfer.setData('todo-id', '${todo.id}');
}

void _onDragOver(MouseEvent e) {
  e.preventDefault();
  e.dataTransfer.dropEffect = 'move';
}

void _onDrop(MouseEvent e, Todo todo, PutAfter putAfter) {
  final todoId = e.dataTransfer.getData('todo-id');
  putAfter(todo.id, int.parse(todoId));
}
