import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
   SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffE7DFD5),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Text(" Dream Catcher "),
            SizedBox(height: 30,),
            Text(" أمسك حلمك"),
          ],
        ),
      ),
      ),
    );
  }
}
