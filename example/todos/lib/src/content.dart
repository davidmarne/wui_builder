import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/vhtml.dart';

import 'addTodo.dart';
import 'todos.dart';
import 'todo.dart';

class ContentProps {
  Iterable<Todo> todos;
  AddTodo addTodo;
  UpdateTodo updateTodo;
  PutAfter putAfter;
}

VNode content(ContentProps props) => new VDivElement()
  ..className = 'container'
  ..children = [
    new Vnav()
      ..className = 'panel'
      ..children = ([]
        ..add(
          addTodo(new AddTodoProps()..addTodo = props.addTodo),
        )
        ..addAll(
          props.todos.map(
            (t) => todo(new TodoProps()
              ..todo = t
              ..updateTodo = props.updateTodo
              ..putAfter = props.putAfter),
          ),
        ))
  ];
