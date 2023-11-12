import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile"),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img_1.png"),
                    radius: 60,
                  ),
                  Text(
                    "name",
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.badge_outlined,
                          size: 50,
                        ),
                        Text(
                          "My Badge",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.score,
                          size: 50,
                        ),
                        Text(
                          "Score",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.quiz_outlined,
                          size: 50,
                        ),
                        Text(
                          "My Quiz",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ],
                ),
              ),
             SizedBox(height: 30,),
             Column(
             mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("Name :     "),
                 Text("phone :     "),
                 Text("email :     "),
                 Text("stage :     "),
               ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
