import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:dream_catcher_app/main.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/mindset_apps/reminder/my_reminder_list.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class NotificationController {
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    await Hive.openBox("reminderBox");
    MyApp.navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (_) => const MyReminderList(),
      ),
    );
  }
}