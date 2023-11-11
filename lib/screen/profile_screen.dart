import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // image
          i >= 1 ? CircleAvatar(
            backgroundColor: Colors.lightBlue,
          ) : Text("finally")

          //
        ],
      ),
    );
  }
}
