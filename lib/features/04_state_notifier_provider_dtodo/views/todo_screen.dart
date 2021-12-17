import 'package:flutter/material.dart';
import 'package:riverpod_getting_started/features/04_state_notifier_provider_dtodo/models/todo_model.dart';
import 'package:riverpod_getting_started/features/04_state_notifier_provider_dtodo/states/todo_state.dart';
import 'package:riverpod_getting_started/widgets/m_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final todoList = watch(todoListProvider);
    return MScaffold(
      body: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (BuildContext context, int index) {
              Todo todo = todoList[index];
              return ListTile(
                title: Text(todoList[index].title),
                leading: IconButton(
                  icon: Icon(Icons.edit),
                  // 3
                  onPressed: () {
                    todo.title = 'Updated Title';
                    context.read(todoListProvider.notifier).edit(todo);
                  },
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  // 3
                  onPressed: () =>
                      context.read(todoListProvider.notifier).remove(todo.id),
                ),
              );
            },
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => context.read(todoListProvider.notifier).add('New Item'),
      ),
    );
  }

}
