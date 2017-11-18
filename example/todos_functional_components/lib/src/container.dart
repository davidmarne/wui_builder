import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/functional.dart';
import 'package:wui_builder/vhtml.dart';

import 'todo.dart';
import 'hero.dart';
import 'content.dart';

typedef void AddTodo(Todo todo);
typedef void UpdateTodo(int id);
typedef void PutAfter(int before, int after);

class ContainerProps {
  Iterable<Todo> todos;
  AddTodo addTodo;
  UpdateTodo updateTodo;
  PutAfter putAfter;
}

ContainerProps stateMapper(
  Null _,
  Iterable<Todo> state,
  SetState<Null, Iterable<Todo>> setState,
) =>
    new ContainerProps()
      ..todos = state
      ..addTodo = ((Todo todo) {
        setState((_, prev) => prev.toList()..add(todo));
      })
      ..updateTodo = ((int id) {
        setState((_, prev) {
          var todo = prev.firstWhere((todo) => todo.id == id);
          todo.isComplete = !todo.isComplete;
          return prev;
        });
      })
      ..putAfter = ((int before, int after) {
        setState((_, prev) {
          var nextState = prev.toList();
          var afterTodo = nextState.firstWhere((t) => t.id == after);
          var beforeTodo = nextState.firstWhere((t) => t.id == before);
          nextState.removeWhere((t) => t.id == after);
          nextState.insert(nextState.indexOf(beforeTodo) + 1, afterTodo);
          return nextState;
        });
      });

FunctionalComponent<Null> container =
    withState<Null, Iterable<Todo>, ContainerProps>([], stateMapper)(
        _container);

VNode _container(ContainerProps props) => new VDivElement()
  ..children = [
    hero(new HeroProps()
      ..remaining = props.todos.where((t) => !t.isComplete).length),
    content(new ContentProps()
      ..todos = props.todos
      ..addTodo = props.addTodo
      ..updateTodo = props.updateTodo
      ..putAfter = props.putAfter),
  ];
