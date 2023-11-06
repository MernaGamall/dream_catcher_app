import 'package:dream_catcher_app/screen/authentication_screens/login_screen.dart';
import 'package:dream_catcher_app/screen/authentication_screens/register_screen.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/about_page.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/setting_screen.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
   NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
   int index = 0;
   String AppBarTitle = "title of index 0";

List Badges = [SettingScreen() , AboutPage() , RegisterScreen() , LoginScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppBarTitle),
      ),
      endDrawer: Drawer(
        shadowColor: Colors.deepOrangeAccent,
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
                  Icon(Icons.add),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "About Us",
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
                  Icon(Icons.contact_phone_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Setting",
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
                    "تسجيل الخروج",
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
                  AppBarTitle = "title of index 0";
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
                  AppBarTitle = "title of index 1";
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
                  AppBarTitle = "title of index 2";
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
                  AppBarTitle = "title of index 3";
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
