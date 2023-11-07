import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/videos_screens.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SubjectScreen extends StatefulWidget {
  const SubjectScreen({super.key});

  @override
  State<SubjectScreen> createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  String? studentStage = "prep2".tr();
  String? studentLang = "Arabic".tr();

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
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => VideosScreen(),
                          ),
                        );
                      },
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
                  ),
                  studentLang == "Arabic".tr()?
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => VideosScreen(),
                          ),
                        );
                      },
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
                  ):
                 GestureDetector(
                   onTap: (){
                     Navigator.of(context).push(
                       MaterialPageRoute(
                         builder: (context) => VideosScreen(),
                       ),
                     );
                   },
                   child: Container(
                      decoration: BoxDecoration(
                        color: Colors.cyan
                      ),
                      child: Column(
                        children: [
                          Image.asset(""),
                          Text("Science"),],
                      )
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
