

import 'package:dream_catcher_app/about_page.dart';
import 'package:flutter/material.dart';

void main() {}
class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AboutPage()
      // _user.currentUser == null ? StartScreen() : HomeScreen()
    );
  }
}
