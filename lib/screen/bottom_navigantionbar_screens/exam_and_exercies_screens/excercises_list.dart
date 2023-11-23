import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/exam_and_exercies_screens/exam_screen.dart';
import 'package:flutter/material.dart';

class ExercisesList extends StatelessWidget {
  const ExercisesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Exercises"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
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
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/icons8-exam-64.png"),
                      Text(
                        "Exercises number ${item + 1}" , style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
