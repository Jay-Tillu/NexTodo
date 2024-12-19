import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nextodo/constants/custom_colors.dart';
import 'package:nextodo/providers/todo_provider.dart';
import 'package:provider/provider.dart';
import 'package:vibration/vibration.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  // Method to trigger vibration
  void _vibrate() async {
    bool? hasVibrator = await Vibration.hasVibrator();

    if (hasVibrator == true) {
      Vibration.vibrate(duration: 100);
    } else {
      debugPrint("No Vibrator Found on this Device");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Today's Tasks",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Consumer<TodoProvider>(
        builder: (context, todoProvider, child) {
          return ListView.builder(
            itemCount: todoProvider.todos.length,
            itemBuilder: (context, index) {
              final todo = todoProvider.todos[index];
              return Dismissible(
                key: Key(todo.id),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  context.read<TodoProvider>().deleteTodo(todo.id);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${todo.title} deleted')),
                  );
                },
                background: Container(
                  color: Colors.red.shade600,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.delete_rounded,
                    color: Colors.white,
                  ),
                ),
                child: CheckboxListTile(
                  dense: true,
                  value: todo.isCompleted,
                  enableFeedback: true,
                  side: BorderSide(
                    width: 1,
                    color: Colors.green.shade600,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  onChanged: (value) {
                    todoProvider.toggleTodo(todo.id);
                    if (value == true) {
                      _vibrate();
                    }
                  },
                  title: Text(
                    todo.title,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  checkboxShape: CircleBorder(),
                  checkboxScaleFactor: 1.1,
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.primaryColor,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
        child: Icon(Icons.add_rounded),
        onPressed: () => context.push("/create-task"),
      ),
    );
  }
}
