import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(" Hello our champ",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),),
              SizedBox(height: 10,),
              Text(
                " Your Badge :     ",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Row(
                children: [
                  Expanded(child: Image.asset("assets/images/golden2.png")),
                  Column(
                    children: [
                      Text(
                        " Your Score :     ",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "852 ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ],
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int item) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  " Start Learning Now..:     ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange[900]),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  " A New Video Uploaded    ",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffF5E8C7)),
                                ),
                                SizedBox(height: 20,),
                                Icon(Icons.slow_motion_video,size: 40,color: Colors.red,)

                              ],
                            ),
                          ),
                          height: 150,
                          width: 90,
                          color: Color(0xff93B1A6),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
