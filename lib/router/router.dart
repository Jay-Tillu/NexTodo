import 'package:go_router/go_router.dart';
import 'package:nextodo/screens/create_task.dart';
import 'package:nextodo/screens/home_screen.dart';
import 'package:nextodo/screens/login_screen.dart';

final GoRouter _router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: '/create-task',
      builder: (context, state) {
        return const CreateTask();
      },
    ),
  ],
);

GoRouter get router => _router;
