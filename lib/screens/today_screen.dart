import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nextodo/constants/custom_colors.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Today's Tasks",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Today Screen'),
          ),
        ],
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
