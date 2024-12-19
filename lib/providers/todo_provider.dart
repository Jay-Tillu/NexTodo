import 'package:flutter/material.dart';
import 'package:nextodo/models/todo.dart';

class TodoProvider extends ChangeNotifier {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  // Method to add a Todo
  void addTodo(String todoTitle) {
    _todos.add(Todo(title: todoTitle));
    notifyListeners();
  }

  // Method to delete a Todo
  void deleteTodo(String id) {
    _todos.removeWhere((todo) => todo.id == id);
    notifyListeners();
  }

  // Method to toggle a Todo
  void toggleTodo(String id) {
    final todo = _todos.firstWhere((todo) => todo.id == id);
    todo.isCompleted = !todo.isCompleted;
    notifyListeners();
  }
}
