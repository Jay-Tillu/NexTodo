// File: router_config.dart
// Description: Contains router configuration of the app
// Author: Jay Tillu
// Date: 28-Nov-2024
// License: GPL-3.0
//
// Dependencies:
// - `package:go_router/go_router.dart` for Firebase initialization
// - `package:cloud_firestore/cloud_firestore.dart` for Firestore database operations
//
// This file defines the main navigation structure of the app, including routes and
// navigation-related utility functions.

import 'package:go_router/go_router.dart';
import 'package:nextodo/screens/home_screen.dart';


final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
