import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        actions: [
          IconButton(
            onPressed: () => debugPrint("Profile Button Clicked"),
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: Center(
        child: Text('Today Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        child: Icon(Icons.add_rounded),
        onPressed: () => context.push("/create-task"),
      ),
    );
  }
}
