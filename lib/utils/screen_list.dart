import 'package:flutter/material.dart';
import 'package:nextodo/screens/pending/pending_screen.dart';
import 'package:nextodo/screens/today/today_screen.dart';

List<Widget> screenList() {
  return [
    const TodayScreen(),
    const PendingScreen(),
  ];
}
