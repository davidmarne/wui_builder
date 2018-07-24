import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/functional.dart';
import 'package:wui_builder/vhtml.dart';

import 'content.dart';
import 'hero.dart';
import 'todo.dart';

typedef void AddTodo(Todo todo);
typedef void UpdateTodo(int id);
typedef void PutAfter(int before, int after);

class ContainerProps {
  Iterable<Todo> todos;
  ContainerActions actions;
}

class ContainerActions {
  AddTodo addTodo;
  UpdateTodo updateTodo;
  PutAfter putAfter;
}

ContainerProps stateMapper(
  Null _,
  Iterable<Todo> state,
  ContainerActions setState,
) =>
    ContainerProps()
      ..todos = state
      ..actions = setState;

ContainerActions stateSetterFactory(
  SetState<Null, Iterable<Todo>> setState,
) =>
    ContainerActions()
      ..addTodo = ((todo) {
        setState((_, prev) => prev.toList()..add(todo));
      })
      ..updateTodo = ((id) {
        setState((_, prev) {
          final todo = prev.firstWhere((todo) => todo.id == id);
          todo.isComplete = !todo.isComplete;
          return prev;
        });
      })
      ..putAfter = ((before, after) {
        setState((_, prev) {
          final nextState = prev.toList();
          final afterTodo = nextState.firstWhere((t) => t.id == after);
          final beforeTodo = nextState.firstWhere((t) => t.id == before);
          nextState.removeWhere((t) => t.id == after);
          nextState.insert(nextState.indexOf(beforeTodo) + 1, afterTodo);
          return nextState;
        });
      });

FunctionalComponent<Null> container =
    withState<Null, Iterable<Todo>, ContainerActions, ContainerProps>(
  defaultState: [],
  mapper: stateMapper,
  stateSetterFactory: stateSetterFactory,
  updateKind: UpdateKind.syncronous,
)(_container);

VNode _container(ContainerProps props) => new VDivElement()
  ..children = [
    hero(new HeroProps()
      ..remaining = props.todos.where((t) => !t.isComplete).length),
    content(new ContentProps()
      ..todos = props.todos
      ..addTodo = props.actions.addTodo
      ..updateTodo = props.actions.updateTodo
      ..putAfter = props.actions.putAfter),
  ];
