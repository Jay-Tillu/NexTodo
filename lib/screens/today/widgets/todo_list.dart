import 'package:flutter/material.dart';
import 'package:nextodo/providers/todo_provider.dart';
import 'package:nextodo/screens/today/widgets/todo_item.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(builder: (context, todoProvider, child) {
      return ListView.builder(
        itemCount: todoProvider.todos.length,
        itemBuilder: (context, index) {
          final todo = todoProvider.todos[index];
          return TodoItem(todo: todo);
        },
      );
    });
  }
}
