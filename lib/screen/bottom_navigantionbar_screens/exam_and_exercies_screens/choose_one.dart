import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/exam_and_exercies_screens/choose_subject.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/exam_and_exercies_screens/exam_list.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/video_screens/videos_screens.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ChooseOneScreen extends StatefulWidget {
  const ChooseOneScreen({super.key});

  @override
  State<ChooseOneScreen> createState() => _ChooseOneScreenState();
}

class _ChooseOneScreenState extends State<ChooseOneScreen> {
  String? studentStage = "prep2".tr();
  String? studentLang = "Arabic".tr();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "timeFor".tr(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.red),
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
                            builder: (context) => ChooseSubjectScreen(
                              yourChoose: "Exams".tr(),
                            ),
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
                                  child: Icon(
                                    Icons.pending_actions_rounded,
                                    size: 80,
                                  )),
                              Text(
                                "Exams".tr(),
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                  ),

                       Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ChooseSubjectScreen(
                                    yourChoose: "Exercises".tr(),
                                  ),
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
                                      child: Icon(
                                        Icons.receipt_long_rounded,
                                        size: 80,
                                      ),
                                    ),
                                    Text("Exercises".tr(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )),
                          ),
                        )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
