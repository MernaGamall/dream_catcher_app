import 'package:flutter/material.dart';

class SubjectScreen extends StatefulWidget {
  const SubjectScreen({super.key});

  @override
  State<SubjectScreen> createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:   SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text(":قوائم التشغيل  المتاحه",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.cyan
                      ),
                      child: Column(
                        children: [
                          Image.asset(""),
                          Text("علوم"),],
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.cyan
                      ),
                      child: Column(
                        children: [
                          Image.asset(""),
                          Text("دراسات أجنماعيه"),],
                      )
                    ),
                  ),
                 /* Container(
                    decoration: BoxDecoration(
                      color: Colors.cyan
                    ),
                    child: Column(
                      children: [
                        Image.asset(""),
                        Text("Science"),],
                    )
             ),*/
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
