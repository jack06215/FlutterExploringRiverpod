import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practices/todo.dart';

final appNameProvider = Provider<String>((ref) => "Exploring Riverpod");
final stringProvider = Provider<String>((ref) => "Jack Cho");
final intProvider = Provider<int>((ref) => 20);
final doubleProvider = Provider<double>((ref) => 3.1415926);
final listProvider = Provider<List<String>>((ref) {
  return [
    "Flutter",
    "Dart",
    "Firebase",
    "JavaScript",
    "Nodejs",
    "Python",
    "PostgreSQL"
  ];
});

enum TodoListFilter { all, active, completed }
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
