import 'dart:async';

import 'package:flutter/material.dart';

class Question {
  final String title;
  final List<String> options;
  String? selectedAnswer;
  final String correctAnswer;

  Question({
    required this.title,
    required this.options,
    required this.correctAnswer,
  });
}

class CHATGPTExamScreen extends StatefulWidget {
  const CHATGPTExamScreen({Key? key}) : super(key: key);

  @override
  State<CHATGPTExamScreen> createState() => _CHATGPTExamScreenState();
}

class _CHATGPTExamScreenState extends State<CHATGPTExamScreen> {
  List<Question> examQuestions = [
    Question(
      title: "Any question we can use1",
      options: ["1", "2", "3", "4"],
      correctAnswer: "2",
    ),
    Question(
      title: "Any question we can use2",
      options: ["5", "6", "7", "8"],
      correctAnswer: "5",
    ),
    Question(
      title: "Any question we can use3",
      options: ["19", "21", "352", "45"],
      correctAnswer: "45",
    ),
    Question(
      title: "Any question we can use4",
      options: ["154", "256", "38", "48"],
      correctAnswer: "154",
    ),
    Question(
      title: "Any question we can use5",
      options: ["15", "2585", "385", "485"],
      correctAnswer: "385",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: ListView.builder(
        itemCount: examQuestions.length,
        itemBuilder: (BuildContext context, int index) {
          return buildQuestionCard(index);
        },
      ),
    );
  }

  Widget buildQuestionCard(int index) {
    Question question = examQuestions[index];
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(question.title),
          ),
          ...question.options.map((option) {
            return RadioListTile<String>(
              title: Text(option),
              value: option,
              groupValue: question.selectedAnswer,
              onChanged: (String? value) {
                setState(() {
                  question.selectedAnswer = value;
                  print(option);
                });
              },
            );
          }),
        ],
      ),
    );
  }
}
