import 'package:flutter/material.dart';

class PendingScreen extends StatelessWidget {
  const PendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Pending Tasks",
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
        child: Text('Pending Screen'),
      ),
    );
  }
}
