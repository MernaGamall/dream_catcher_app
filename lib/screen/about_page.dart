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
      backgroundColor: Color(0xffF8DA5B),
      appBar: AppBar(
        backgroundColor: Color(0xff247291),
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
//introduce
//links(facebook-youtube-telegramlink)
// telegram (لينك الجروب حسب مرحلة الطالب)
