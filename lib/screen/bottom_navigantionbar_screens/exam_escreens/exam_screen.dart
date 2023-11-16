import 'package:flutter/material.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  int TotalScore = 0;
  Color buttonColor = Colors.grey;
  bool? theAnswer;

  List examQu = [
    {
      "title": "any quition we can use1",
      "answer1": "1",
      "answer2": "2",
      "answer3": "3",
      "answer4": "4",
      "trueAnswre" : "answer2"
    },
    {
      "title": "any quition we can use2",
      "answer1": "5",
      "answer2": "6",
      "answer3": "7",
      "answer4": "8",
      "trueAnswre" : "answer1"
    },
    {
      "title": "any quition we can use3",
      "answer1": "19",
      "answer2": "21",
      "answer3": "352",
      "answer4": "45",

    "trueAnswre" : "answer4"
    },
    {
      "title": "any quition we can use4",
      "answer1": "154",
      "answer2": "256",
      "answer3": "38",
      "answer4": "48",
    "trueAnswre" : "answer1"
    },
    {
      "title": "any quition we can use5",
      "answer1": "15",
      "answer2": "2585",
      "answer3": "385",
      "answer4": "485",
      "trueAnswre" : "answer3"
    }
  ];

  void answer (){
    setState(() {
      buttonColor = Colors.green;
    });
if (theAnswer == true){
  TotalScore +1;
} if (theAnswer == false){
      TotalScore ;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TotalScore.toString()),
      ),
      body: ListView.builder(
          itemCount: examQu.length,
          itemBuilder: (BuildContext context, int item){
        return Container(
          child: Column(
            children: [
              Text(examQu[item]["title"]),

              ElevatedButton(
                onPressed: (){
                  answer();
              },
                child: Text(examQu[item]["answer1"]) ,
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttonColor)
              ),),
              ElevatedButton(
                onPressed: (){
                  answer();

              },
                child: Text(examQu[item]["answer2"]) ,
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttonColor)
              ),),
              ElevatedButton(
                onPressed: (){
                  answer();
              },
                child: Text(examQu[item]["answer3"]) ,
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttonColor)
              ),),
              ElevatedButton(
                onPressed: (){
                  answer();
              },
                child: Text(examQu[item]["answer4"]) ,
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttonColor)
              ),),

            ],
          ),
        );
      }),
    );
  }
}
