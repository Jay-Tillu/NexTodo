import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              print("On Profile Clicked");
            },
            icon: const Icon(
              Icons.account_circle_outlined,
            ),
          )
        ],
        title: const Text(
          'Today',
        ),
      ),
    );
  }
}
