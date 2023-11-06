import 'package:dream_catcher_app/screen/authentication_screens/login_screen.dart';
import 'package:dream_catcher_app/screen/authentication_screens/register_screen.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/about_page.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/setting_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int index = 0;

List Badges = [SettingScreen() , AboutPage() , RegisterScreen() , LoginScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomAppBar(

        notchMargin: 7,
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight:  Radius.circular(50),
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            )
          ),
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))
          )
        ),
        child: Row(
          children: [
            SizedBox(width: 20,),
            IconButton(
              tooltip: 'Search',
              icon:
              index == 0 ?
              Icon(Icons.event_note) :
              Icon(Icons.note_sharp),
              onPressed: () {
                setState(() {
                  index = 0;
                });
              },
            ),
            SizedBox(width: 20,),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.note_alt_outlined),
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
            ),
          Expanded(child: SizedBox()),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.home),
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
            ),
            SizedBox(width: 20,),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.ondemand_video_outlined),
              onPressed: () {
                setState(() {
                  index = 3;
                });
              },
            ),
            SizedBox(width: 20,),
          ],
        )

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),

        ),
        onPressed: (){
        },
        child: Icon(Icons.add),
      ),

      body: Badges[index],
    );
  }
}
