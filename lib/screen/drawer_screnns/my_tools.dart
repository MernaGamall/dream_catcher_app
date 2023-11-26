import 'package:dream_catcher_app/screen/drawer_screnns/mindset_apps/note_app/note_first_screen.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/mindset_apps/reminder/reminder_first_screen.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/mindset_apps/stop_watch/stop_watch_screen.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/mindset_apps/toss/toss_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class MyToolsScreen extends StatelessWidget {
  const MyToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TossHomeScreen(
                    inputList: [],
                  ),
                ),
              );
            },
            child: Container(

                decoration: BoxDecoration(
                  color: Color(0xffFFE8C7),
                ),
                child: Column(
                  children: [
                    Container(
                        height: 150,
                        width: 150,
                        child: Icon(Icons.pending_actions_rounded,size: 80,)),
                    Text("Toss",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),],
                )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () async {
              await Hive.openBox("reminderBox");
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ReminderFirstPage(),
                ),
              );
            },
            child: Container(

                decoration: BoxDecoration(
                  color: Color(0xffFFE8C7),
                ),
                child: Column(
                  children: [
                    Container(
                        height: 150,
                        width: 150,
                        child: Icon(Icons.pending_actions_rounded,size: 80,)),
                    Text("Reminder",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),],
                )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: ()  {

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StopWatchScreen(),
                ),
              );
            },
            child: Container(

                decoration: BoxDecoration(
                  color: Color(0xffFFE8C7),
                ),
                child: Column(
                  children: [
                    Container(
                        height: 150,
                        width: 150,
                        child: Icon(Icons.pending_actions_rounded,size: 80,)),
                    Text("StopWatch",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),],
                )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () async {

              await Hive.openBox("boxName");
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => NoteHomeScreen(),
                ),
              );
            },
            child: Container(

                decoration: BoxDecoration(
                  color: Color(0xffFFE8C7),
                ),
                child: Column(
                  children: [
                    Container(
                        height: 150,
                        width: 150,
                        child: Icon(Icons.pending_actions_rounded,size: 80,)),
                    Text("Note",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),],
                )
            ),
          ),
        ),
      ],
      ),
    );
  }
}
