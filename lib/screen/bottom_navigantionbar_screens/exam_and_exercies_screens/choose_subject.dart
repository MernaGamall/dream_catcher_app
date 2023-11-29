import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/exam_and_exercies_screens/exam_list.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/exam_and_exercies_screens/excercises_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ChooseSubjectScreen extends StatefulWidget {
  ChooseSubjectScreen({super.key, required this.yourChoose});
  String yourChoose = "";
  @override
  State<ChooseSubjectScreen> createState() => _ChooseSubjectScreenState();
}

class _ChooseSubjectScreenState extends State<ChooseSubjectScreen> {
  String? studentStage = "prep2".tr();
  String? studentLang = "Arabic".tr();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.yourChoose),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "ChooseSubject".tr(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.red,
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
                            builder: (context) =>
                                widget.yourChoose == "Exams".tr()
                                    ? ExamList()
                                    : ExercisesList(),
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
                                "assets/images/img_1.jpg",
                              ),
                            ),
                            Text(
                              " العلوم",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  studentLang == "Arabic".tr()
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      widget.yourChoose == "Exams"
                                          ? ExamList()
                                          : ExercisesList(),
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
                                        "assets/images/img_2.png",
                                      ),
                                    ),
                                    Text(
                                      "الدراسات الأجتماعيه ",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    widget.yourChoose == "Exams"
                                        ? ExamList()
                                        : ExercisesList(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(color: Colors.cyan),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/img_1.jpg",
                                ),
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
