import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/components.dart';

import 'addTodo.dart';
import 'todos.dart';
import 'todo.dart';

typedef void AddTodoT(Todo todo);
typedef void UpdateTodo(int id);
typedef void PutAfter(int before, int after);

class ContentProps {
  Iterable<Todo> todos;
  AddTodoT addTodo;
  UpdateTodo updateTodo;
  PutAfter putAfter;
}

class Content extends PComponent<ContentProps> {
  Content(ContentProps props) : super(props);

  @override
  VNode render() => new VDivElement()
    ..className = 'container'
    ..children = [
      new Vnav()
        ..className = 'panel'
        ..children = ([]
          ..add(
            new AddTodo(new AddTodoProps()..addTodo = props.addTodo),
          )
          ..addAll(
            props.todos.map(
              (t) => new Todos(new TodoProps()
                ..todo = t
                ..updateTodo = props.updateTodo
                ..putAfter = props.putAfter),
            ),
          ))
    ];
}
