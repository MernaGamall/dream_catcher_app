import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffB0D9B1),
      appBar: AppBar(
        backgroundColor: Color(0xff618264),
        title: Text("Profile"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
