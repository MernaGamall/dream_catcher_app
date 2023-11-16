import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/exam_escreens/exam_screen.dart';
import 'package:flutter/material.dart';

class ExamList extends StatelessWidget {
  const ExamList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int item){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ExamScreen(),
                ),
              );
            },
            child: Container(
              child: Text(
                "exam number ${item + 1}" , style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        );
      }),
    );
  }
}
