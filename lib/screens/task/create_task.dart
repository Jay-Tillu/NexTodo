import 'package:flutter/material.dart';
import 'package:nextodo/screens/task/widgets/create_task_appbar.dart';
import 'package:nextodo/screens/task/widgets/create_task_button.dart';
import 'package:nextodo/screens/task/widgets/create_task_textfield.dart';

class CreateTask extends StatelessWidget {
  CreateTask({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CreateTaskAppbar(),
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
            child: CreateTaskTextfield(controller: _controller),
          ),
          Center(
            child: CreateTaskButton(controller: _controller),
          ),
        ],
      ),
    );
  }
}
