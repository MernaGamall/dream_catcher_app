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
      // backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("profile"),
      // ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/img_1.png"),
                        radius: 60,
                      ),
                      Text(
                        "Name...",
                        style: TextStyle(fontSize: 35),
                      ),
                    ],
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
                          color: Colors.yellow,
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
                          Icons.numbers_outlined,
                          size: 50,
                          color: Colors.red,
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
                          color: Colors.blue,
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
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 color: Colors.teal,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       TextButton(onPressed: (){}, child: Text("edit")),
                       Row(
                         children: [
                           Text("Name :"  , style: TextStyle(fontSize: 20,color: Colors.red ),),
                           Text(" Merna Gamal "  , style: TextStyle(fontSize: 20,color: Colors.black87 ),),
                         ],
                       ),
                       SizedBox(height: 10,),
                       Row(
                         children: [
                           Text("phone :  ", style: TextStyle(fontSize: 20,color: Colors.red ),),
                           Text(" 01156922122   ", style: TextStyle(fontSize: 20,color: Colors.black87 ),),
                         ],
                       ),
                       SizedBox(height: 10,),
                       Row(
                         children: [
                           Text("email : ", style: TextStyle(fontSize: 20,color: Colors.red ),),
                           Text(" gamalmerna549@gmai.com ", style: TextStyle(fontSize: 20,color: Colors.black87 ),),
                         ],
                       ),

                       SizedBox(height: 10,),
                       Row(
                         children: [
                           Text("stage : ", style: TextStyle(fontSize: 20,color: Colors.red ),),
                           Text("3Prep  ", style: TextStyle(fontSize: 20,color: Colors.black87 ),),
                         ],
                       ),
                     ],
                   ),
                 ),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
