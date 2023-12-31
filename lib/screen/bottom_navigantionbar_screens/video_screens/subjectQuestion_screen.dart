import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/video_screens/videos_screens.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SubjectScreen extends StatefulWidget {
  const SubjectScreen({super.key});

  @override
  State<SubjectScreen> createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  String? studentStage = "prep2".tr();
  String? studentLang = "Arabic".tr();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "playList".tr(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => VideosScreen(),
                          ),
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffFFE8C7),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                child: Image.asset("assets/images/img_1.jpg"),
                              ),
                              Text(
                                " العلوم",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                  ),
                  studentLang == "Arabic".tr()
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => VideosScreen(),
                                ),
                              );
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffFFE8C7),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 150,
                                      child: Image.asset(
                                          "assets/images/img_2.png"),
                                    ),
                                    Text(
                                      "الدراسات الأجتماعيه ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => VideosScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(color: Colors.cyan),
                            child: Column(
                              children: [
                                Image.asset("assets/images/img_2.png"),
                                Text("Science"),
                              ],
                            ),
                          ),
                        ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
