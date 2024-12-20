import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nextodo/constants/custom_colors.dart';
import 'package:nextodo/screens/today/widgets/today_appbar.dart';
import 'package:nextodo/screens/today/widgets/todo_list.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TodayAppbar(appbarTitle: "Today's Tasks"),
      body: TodoList(),
      floatingActionButton: fab(context),
    );
  }

  FloatingActionButton fab(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: CustomColors.primaryColor,
      foregroundColor: Colors.black,
      shape: CircleBorder(),
      child: Icon(Icons.add_rounded),
      onPressed: () => context.push("/create-task"),
    );
  }
}
