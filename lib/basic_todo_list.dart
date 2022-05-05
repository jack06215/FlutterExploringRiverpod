import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod_practices/todo.dart';

enum TodoListFilter { all, active, completed }
/// Creates a [TodoListFilter] that perform todos based on status
final todoListFilter = StateProvider((ref) => TodoListFilter.all);

/// Creates a [TodoList] and initialise it with pre-defined values.
///
/// We are using [StateNotifierProvider] here as a `List<Todo>` is a complex
/// object, with advanced business logic like how to edit a todo.
final todoListProvider = StateNotifierProvider<TodoList, List<Todo>>((red) {
  return TodoList(const [
    Todo(id: '1', description: 'hi'),
    Todo(id: '2', description: 'hello'),
    Todo(id: '3', description: 'bonjour'),
  ]);
});

/// The number of uncompleted todos
///
/// By using [Provider], this value is cached, making it performant.\
/// Even multiple widgets try to read the number of uncompleted todos,
/// the value will be computed only once (until the todo-list changes).
///
/// This will also optimise unneeded rebuilds if the todo-list changes, but the
/// number of uncompleted todos doesn't (such as when editing a todo).
final uncompletedTodosCount = Provider<int>((ref) {
  return ref.watch(todoListProvider).where((todo) => !todo.completed).length;
});

/// The same goes here
final filteredTodos = Provider<List<Todo>>(
  (ref) {
    final filter = ref.watch(todoListFilter);
    final todos = ref.watch(todoListProvider);

    switch (filter) {
      case TodoListFilter.completed:
        return todos.where((todo) => todo.completed).toList();
      case TodoListFilter.active:
        return todos.where((todo) => !todo.completed).toList();
      case TodoListFilter.all:
        return todos;
    }
  },
);
