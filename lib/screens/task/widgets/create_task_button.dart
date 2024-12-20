import 'package:flutter/material.dart';
import 'package:nextodo/providers/todo_provider.dart';
import 'package:provider/provider.dart';

class CreateTaskButton extends StatelessWidget {
  const CreateTaskButton({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: () {
        final todoTitle = controller.text.trim();
        if (todoTitle.isNotEmpty) {
          context.read<TodoProvider>().addTodo(todoTitle);
          controller.clear();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Please enter a todo")),
          );
        }
      },
      icon: const Icon(Icons.add_rounded),
      label: const Text(
        'Create Task',
        style: TextStyle(fontSize: 15),
      ),
      iconAlignment: IconAlignment.start,
      style: FilledButton.styleFrom(
        backgroundColor: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 127,
          vertical: 12,
        ),
      ),
    );
  }
}
