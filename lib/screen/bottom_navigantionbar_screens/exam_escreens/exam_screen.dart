import 'dart:async';

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
  //bool? AnswerSelected = false;
  //String? studentAnswer = "";
  Map<int, bool> answerSubmitted = {};
  Map<int, String> studentAnswer = {};

  List examQu = [
    {
      "title": "any quition we can use1",
     "option" : ["1" , "2"  ],
      "trueAnswer": "2"
    },
    {
      "title": "any quition we can use2",
      "option" : ["4" , "5" , "6" ],
      "trueAnswer": "6" ,
    },
    {
      "title": "any quition we can use3",
      "option" : ["7" , "8" , "9"  , "10"],
      "trueAnswer": "7"
    },
    {
      "title": "any quition we can use1",
     "option" : ["1" , "2"  ],
      "trueAnswer": "2"
    },
    {
      "title": "any quition we can use2",
      "option" : ["4" , "5" , "6" ],
      "trueAnswer": "6" ,
    },
    {
      "title": "any quition we can use3",
      "option" : ["7" , "8" , "9"  , "10"],
      "trueAnswer": "7"
    },
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
        title: Text(totalScore.toString()),
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
                                // if (studentAnswer == trueAnswer){
                                //   TotalScore = TotalScore + 1;
                                // }
                              });
                            },
                          );
                        }),
                    // RadioListTile<String>(
                    //   title: Text(examQu[item]["option"][0]),
                    //   value: "option",
                    //   groupValue: examQu[item]["option"][0],
                    //   onChanged: (String? value) {
                    //     setState(() {
                    //       examQu[item]["trueAnswer"] = value;
                    //       TotalScore = TotalScore + 1;
                    //     });
                    //   },
                    // )
                        // ElevatedButton(
                        //   onPressed: () {
                        //     if (answer1 == trueAnswer) {
                        //       setState(() {
                        //         TotalScore = TotalScore + 1;
                        //       });
                        //     } else {
                        //       print(
                        //           "00000000000000000000000000000000000000000000000");
                        //     }
                        //     print(TotalScore);
                        //   },
                        //   child: Text(answer1),
                        //   style: ButtonStyle(
                        //       backgroundColor:
                        //           MaterialStateProperty.all(buttonColor)),
                        // ),
                        // ElevatedButton(
                        //   onPressed: () {
                        //
                        //     if (answer2 == trueAnswer) {
                        //       setState(() {
                        //         TotalScore = TotalScore + 1;
                        //       });
                        //     }
                        //
                        //     if (TotalScore == TotalScore + 1){
                        //       TotalScore = TotalScore + 0;
                        //     }
                        //
                        //     else {
                        //       print(
                        //           "00000000000000000000000000000000000000000000000");
                        //     }
                        //     print(TotalScore);
                        //   },
                        //   child: Text(answer2),
                        //   style: ButtonStyle(
                        //       backgroundColor:
                        //           MaterialStateProperty.all(buttonColor)),
                        // ),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     if (answer3 == trueAnswer) {
                        //       setState(() {
                        //         TotalScore = TotalScore + 1;
                        //       });
                        //     } else {
                        //       print(
                        //           "00000000000000000000000000000000000000000000000");
                        //     }
                        //     print(TotalScore);
                        //   },
                        //   child: Text(answer3),
                        //   style: ButtonStyle(
                        //       backgroundColor:
                        //           MaterialStateProperty.all(buttonColor)),
                        // ),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     if (answer4 == trueAnswer) {
                        //       setState(() {
                        //         TotalScore = TotalScore + 1;
                        //       });
                        //     } else {
                        //       print(
                        //           "00000000000000000000000000000000000000000000000");
                        //     }
                        //
                        //     print(TotalScore);
                        //   },
                        //   child: Text(answer4),
                        //   style: ButtonStyle(
                        //       backgroundColor:
                        //           MaterialStateProperty.all(buttonColor)),
                        // ),
                      ],
                    ),
                  );
                }),
          ),
          ElevatedButton(onPressed: (){
             Timer(
              const Duration(seconds: 4),
                  () {
                setState(() {
                  finalTotalScore = totalScore ;
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
