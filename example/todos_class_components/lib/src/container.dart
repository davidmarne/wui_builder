import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/vhtml.dart';

import 'todo.dart';
import 'hero.dart';
import 'content.dart';

class Container extends Component<Null, List<Todo>> {
  Container(Null props) : super(props);

  @override
  List<Todo> getInitialState() => [];

  @override
  VNode render() => new VDivElement()
    ..children = [
      new Hero(new HeroProps()
        ..remaining = state.where((t) => !t.isComplete).length),
      new Content(new ContentProps()
        ..todos = state
        ..addTodo = _addTodo
        ..updateTodo = _updateTodo
        ..putAfter = _putAfter),
    ];

  void _addTodo(Todo todo) {
    update((_, prev) => prev.toList()..add(todo));
  }

  void _updateTodo(int id) {
    update((_, prev) {
      var todo = prev.firstWhere((todo) => todo.id == id);
      todo.isComplete = !todo.isComplete;
      return prev;
    });
  }

  void _putAfter(int before, int after) {
    update((_, prev) {
      var nextState = prev.toList();
      var afterTodo = nextState.firstWhere((t) => t.id == after);
      var beforeTodo = nextState.firstWhere((t) => t.id == before);
      nextState.removeWhere((t) => t.id == after);
      nextState.insert(nextState.indexOf(beforeTodo) + 1, afterTodo);
      return nextState;
    });
  }
}
