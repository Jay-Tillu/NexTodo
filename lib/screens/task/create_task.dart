import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nextodo/constants/custom_colors.dart';
import 'package:nextodo/providers/todo_provider.dart';
import 'package:provider/provider.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});
  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Task',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.blueGrey.shade100,
          ),
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 30,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 30,
            ),
            child: TextField(
              controller: _controller,
              autofocus: true,
              decoration: InputDecoration(
                isDense: true,
                hintText: "Enter task",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: CustomColors.primaryColor,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: FilledButton.icon(
              onPressed: () {
                final todoTitle = _controller.text.trim();
                if (todoTitle.isNotEmpty) {
                  context.read<TodoProvider>().addTodo(todoTitle);
                  _controller.clear();
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
            ),
          ),
        ],
      ),
    );
  }
}
