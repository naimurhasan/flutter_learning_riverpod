import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_getting_started/features/04_state_notifier_provider_dtodo/models/todo_model.dart';


final todoListProvider = StateNotifierProvider<TodoList, List<Todo>>((ref) {
  return TodoList();
});


// 2
class TodoList extends StateNotifier<List<Todo>> {
  // 3
  TodoList([List<Todo>? todos]) : super(todos ?? []);

  // 4
  void add(String title) {
    state = [...state, new Todo(id: state.length + 1, title: title)];
  }

  // 4
  void toggle(num id) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(
            id: todo.id,
            completed: !todo.completed,
            title: todo.title,
          )
        else
          todo,
    ];
  }

  // 4
  void edit(Todo updatedTodo) {
    state = [
      for (final todo in state)
        if (todo.id == updatedTodo.id)
          Todo(
            id: todo.id,
            completed: todo.completed,
            title: updatedTodo.title,
          )
        else
          todo,
    ];
  }

  // 4
  void remove(num id) {
    state = state.where((todo) => todo.id != id).toList();
  }
}