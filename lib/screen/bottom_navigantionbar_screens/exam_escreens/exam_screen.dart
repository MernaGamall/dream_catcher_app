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
          itemCount: 20,
          itemBuilder: (BuildContext context, int item){
        return Container(
          child: Column(
            children: [
              Text("السؤال رقم $item"),

              ElevatedButton(
                onPressed: (){
                  answer();
              },
                child: Text("answers") ,
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttonColor)
              ),),
              ElevatedButton(
                onPressed: (){
                  answer();
              },
                child: Text("answers") ,
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttonColor)
              ),),
              ElevatedButton(
                onPressed: (){
                  answer();
              },
                child: Text("answers") ,
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttonColor)
              ),),
              ElevatedButton(
                onPressed: (){
                  answer();
              },
                child: Text("answers") ,
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
