import 'dart:async';

import 'package:flutter/material.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  int TotalScore = 0;
  int finalTotalScore = 0;
  Color buttonColor = Colors.grey;
  bool? theAnswer;

  List examQu = [
    {
      "title": "any quition we can use1",
      "answer1": "1",
      "answer2": "2",
      "answer3": "3",
      "answer4": "4",
      "trueAnswer": "2"
    },
    {
      "title": "any quition we can use2",
      "answer1": "5",
      "answer2": "6",
      "answer3": "7",
      "answer4": "8",
      "trueAnswer": "5"
    },
    {
      "title": "any quition we can use3",
      "answer1": "19",
      "answer2": "21",
      "answer3": "352",
      "answer4": "45",
      "trueAnswer": "45"
    },
    {
      "title": "any quition we can use4",
      "answer1": "154",
      "answer2": "256",
      "answer3": "38",
      "answer4": "48",
      "trueAnswer": "154"
    },
    {
      "title": "any quition we can use5",
      "answer1": "15",
      "answer2": "2585",
      "answer3": "385",
      "answer4": "485",
      "trueAnswer": "385"
    }
  ];

//   void answer (){
//     setState(() {
//       buttonColor = Colors.green;
//     });
// if (theAnswer == true){
//   TotalScore +1;
// } if (theAnswer == false){
//       TotalScore ;
//     }
//
//   }
  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TotalScore.toString()),
      ),
      body: Column(

        children: [
          Expanded(
            child: ListView.builder(
              // [ 0 , 1 , 2 ]
              // print nameoflist[2]["title"]
                itemCount: examQu.length,
                itemBuilder: (BuildContext context, int item) {
                  String title = examQu[item]["title"];
                  String answer1 = examQu[item]["answer1"];
                  String answer2 = examQu[item]["answer2"];
                  String answer3 = examQu[item]["answer3"];
                  String answer4 = examQu[item]["answer4"];
                  String trueAnswer = examQu[item]["trueAnswer"];

                  return Container(
                    child: Column(
                      children: [
                        Text(title),
                        ElevatedButton(
                          onPressed: () {
                            if (answer1 == trueAnswer) {
                              setState(() {
                                TotalScore = TotalScore + 1;
                              });
                            } else {
                              print(
                                  "00000000000000000000000000000000000000000000000");
                            }
                            print(TotalScore);
                          },
                          child: Text(answer1),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(buttonColor)),
                        ),
                        ElevatedButton(
                          onPressed: () {

                            if (answer2 == trueAnswer) {
                              setState(() {
                                TotalScore = TotalScore + 1;
                              });
                            }

                            if (TotalScore == TotalScore + 1){
                              TotalScore = TotalScore + 0;
                            }

                            else {
                              print(
                                  "00000000000000000000000000000000000000000000000");
                            }
                            print(TotalScore);
                          },
                          child: Text(answer2),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(buttonColor)),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (answer3 == trueAnswer) {
                              setState(() {
                                TotalScore = TotalScore + 1;
                              });
                            } else {
                              print(
                                  "00000000000000000000000000000000000000000000000");
                            }
                            print(TotalScore);
                          },
                          child: Text(answer3),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(buttonColor)),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (answer4 == trueAnswer) {
                              setState(() {
                                TotalScore = TotalScore + 1;
                              });
                            } else {
                              print(
                                  "00000000000000000000000000000000000000000000000");
                            }

                            print(TotalScore);
                          },
                          child: Text(answer4),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(buttonColor)),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          ElevatedButton(onPressed: (){
            var timer = Timer(
              const Duration(seconds: 4),
                  () {
                setState(() {
                  finalTotalScore = TotalScore ;
                });
              },
            );

          }, child: Text("Done"))
        ],
      ),
    );
  }
}

// يختار الاجابه مره واحده لو غيرها يمسح الدرجه
