import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  int totalScore = 0;
  int finalTotalScore = 0;
  Color buttonColor = Colors.grey;
  bool? theAnswer;
  Map<int, bool> answerSubmitted = {};
  Map<int, String> studentAnswer = {};

  List examQu = [
    {
      "title": "any quition we can use1",
      "option": ["1", "2"],
      "trueAnswer": "2"
    },
    {
      "title": "any quition we can use2",
      "option": ["4", "5", "6"],
      "trueAnswer": "6",
    },
    {
      "title": "any quition we can use3",
      "option": ["7", "8", "9", "10"],
      "trueAnswer": "7"
    },
    {
      "title": "any quition we can use1",
      "option": ["1", "2"],
      "trueAnswer": "2"
    },
    {
      "title": "any quition we can use2",
      "option": ["4", "5", "6"],
      "trueAnswer": "6",
    },
    {
      "title": "any quition we can use3",
      "option": ["7", "8", "9", "10"],
      "trueAnswer": "7"
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(totalScore.toString()),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: examQu.length,
                itemBuilder: (BuildContext context, int item) {
                  String title = examQu[item]["title"];
                  List<String> answer = examQu[item]["option"];

                  String trueAnswer = examQu[item]["trueAnswer"];

                  return Card(
                    child: Column(
                      children: [
                        Text(title),
                        ...answer.map((option) {
                          return RadioListTile<String>(
                            title: Text(option),
                            value: option,
                            groupValue: studentAnswer[item],
                            onChanged: (String? value) {
                              setState(() {
                                studentAnswer[item] = value!;
                                if (studentAnswer[item] == trueAnswer &&
                                    answerSubmitted[item] != true) {
                                  totalScore += 1;
                                  answerSubmitted[item] = true;
                                }
                                if (studentAnswer[item] != trueAnswer &&
                                    answerSubmitted[item] == true) {
                                  totalScore -= 1;
                                  answerSubmitted[item] = false;
                                }
                              });
                            },
                          );
                        }),
                      ],
                    ),
                  );
                }),
          ),
          ElevatedButton(
            onPressed: () {
              Timer(
                const Duration(seconds: 4),
                () {
                  setState(() {
                    finalTotalScore = totalScore;
                  });
                },
              );
            },
            child: Text(
              "submit".tr(),
            ),
          )
        ],
      ),
    );
  }
}
