import 'package:flutter/material.dart';
import 'package:nextodo/constants/custom_colors.dart';

class CreateTaskTextfield extends StatelessWidget {
  const CreateTaskTextfield({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
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
    );
  }
}
