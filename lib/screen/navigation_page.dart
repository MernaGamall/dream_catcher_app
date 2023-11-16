import 'package:dream_catcher_app/screen/authentication_screens/login_screen.dart';
import 'package:dream_catcher_app/screen/authentication_screens/register_screen.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/home_screen.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/video_screens/subjectQuestion_screen.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/video_screens/videos_screens.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/about_screen.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/profile/profile_screen.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/setting_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'drawer_screnns/mindset_apps/toss/toss_home_screen.dart';

class NavigationPage extends StatefulWidget {
   NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
   int index = 2;
   String AppBarTitle = "title of index 0";

List Pages = [SettingScreen() , ProfileScreen() , HomeScreen() , SubjectScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppBarTitle),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "شركة الروضه",
                  ),
                ],
              ),
            ),


            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.contact_phone_rounded),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "about".tr(),
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SettingScreen(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings_applications_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "setting".tr(),
                    style: TextStyle(
                      color:  Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TossHomeScreen(inputList: [],),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings_applications_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                   "toss",
                    style: TextStyle(
                      color:  Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: ()  {
                // // await _auth.signOut();
                //  Navigator.of(context).push(
                //    MaterialPageRoute(
                //      builder: (context) => StartScreen(),
                //    ),
                //  );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.login_outlined),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "logOut".tr(),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
                  AppBarTitle = "exam";
                });
              },
            ),
            SizedBox(width: 20,),
            IconButton(
              tooltip: 'Favorite',
              icon:   index == 1 ?
              Icon(Icons.note_alt_outlined) :
              Icon(Icons.note_sharp),

              onPressed: () {
                setState(() {
                  index = 1;
                  AppBarTitle = "profile";
                });
              },
            ),
          Expanded(child: SizedBox()),
            IconButton(
              tooltip: 'Favorite',
              icon:   index == 2 ?
              Icon(Icons.home) :
              Icon(Icons.note_sharp),

              onPressed: () {
                setState(() {
                  index = 2;
                  AppBarTitle = "Home";
                });
              },
            ),
            SizedBox(width: 20,),
            IconButton(
              tooltip: 'Favorite',
              icon:   index == 3 ?
              Icon(Icons.ondemand_video_outlined) :
              Icon(Icons.note_sharp),
              onPressed: () {
                setState(() {
                  index = 3;
                  AppBarTitle = "ChooseSubjectTitle".tr();
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

            showDialog<void>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text("كلمه او نصيحه تظهر للطالب من مجموعه عشوائيه"),

                );
              },
            );

        },
        child: Icon(Icons.add),
      ),

      body: Pages[index],
    );
  }
}
