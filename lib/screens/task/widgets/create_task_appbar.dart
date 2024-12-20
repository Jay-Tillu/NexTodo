import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateTaskAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CreateTaskAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Create Task',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        style: IconButton.styleFrom(backgroundColor: Colors.blueGrey.shade100),
        onPressed: () => context.pop(),
        icon: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
