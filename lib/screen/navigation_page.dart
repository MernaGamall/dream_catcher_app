import 'package:dart_random_choice/dart_random_choice.dart';
import 'package:dream_catcher_app/screen/authentication_screens/login_screen.dart';
import 'package:dream_catcher_app/screen/authentication_screens/register_screen.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/exam_and_exercies_screens/choose_one.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/exam_and_exercies_screens/choose_subject.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/home_screen.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/video_screens/subjectQuestion_screen.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/video_screens/videos_screens.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/about_screen.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/profile/profile_screen.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/mindset_apps/note_app/note_first_screen.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/setting_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'drawer_screnns/mindset_apps/stop_watch/stop_watch_screen.dart';
import 'drawer_screnns/mindset_apps/toss/toss_home_screen.dart';

class NavigationPage extends StatefulWidget {
  NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int index = 2;
  String? AppBarTitle = "Dream Catcher";
  String? Badge = "Badges" ;
  int? Score = 0;

  List Pages = [
    ChooseOneScreen(),
    ProfileScreen(),
    HomeScreen(),
    SubjectScreen()
  ];

  List<String> quotes = [
    "“في البداية يتجاهلونك , ثم يسخرون منك , ثم يحاربونك , ثم تنتصر”",
    " “خذ بالأسباب و كأنها كل شيء و توكل علي كأنها ليست بشيء” ",
    "  اهتم بأن تحصل على ما تحبه، و الا ستكون مجبراً على ان تقبل ما تحصل عليه",
    "  انطلق باتجاه القمر ، و حتى ان فشلت فانك ستستقر بين النجوم",
    "  اذا لم نجد طريق النجاح فعلينا ان نبتكره ",
    " تذكر دائماً .. ليس مهماً كم من الساعات تذاكر ، و لكن الاهم هو كيف تذاكر",
    "  الأشخاص الناجحون يفعلون ما يرفض غير الناجحين فعله، هذا أمر غير سهل إطلاقا",
    " إنك لا تخسر حقاً إلا إذا توقفت عن المحاولة",
    "التعليم ليس أستعداداً للحياة، إنه الحياة ذاتها",
    "الفشل هو أن تستسلم، أما النجاح فهو تحويل هذا الفشل إلى نجاح",
    " النجاح يأتي لك بنجاح آخر، فلا تتوقف عن تحقيق الأهداف والنجاحات",
    " اعمل على تنظيم حياتك وضع القواعد لها، فكل شخص منظم ناجح",
    "الشيء الذي تؤجله للغد لن يكتمل، فأبدأ منذ الآن في عملك",
    "قبل البحث عن النجاح لتحقيق أهدافك، تجول داخل نفسك وأجعلها أقوى",
    "من لا يتحمل مشقة العلم بعض الوقت، يصيبه العناء طيلة العمر",
    "التسليح بالعلم أقوى من التزين بأغلى الجواهر",
    " إذا تعلمت من الفشل فأنت لم تفشل أبداً",
  ];
  List<String> Badges = [
    " assets/images/diamond1.png",
    "assets/images/golden2.png ",
    "assets/images/silver.png ",
    "assets/images/broze1.png "
  ];
  // if (Score => 90) {
  //   Badge == Badges[0];
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppBarTitle!),
      ),
      endDrawer: Row(
        children: [
          Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
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
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TossHomeScreen(
                          inputList: [],
                        ),
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
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => StopWatchScreen(),
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
                        "StopWatch",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () async {

                    await Hive.openBox("boxName");
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => NoteHomeScreen(),
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
                        "note",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
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
          SizedBox(
            width: 20,
          ),
          Icon(Icons.mode_night_outlined)
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          notchMargin: 7,
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          shape: AutomaticNotchedShape(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)))),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              IconButton(
                tooltip: 'Search',
                icon: index == 0
                    ? Icon(Icons.event_note)
                    : Icon(Icons.note_sharp),
                onPressed: () {
                  setState(() {
                    index = 0;
                    AppBarTitle = "Exam and Exercises";
                  });
                },
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                tooltip: 'Favorite',
                icon: index == 1
                    ? Icon(Icons.note_alt_outlined)
                    : Icon(Icons.note_sharp),
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
                icon: index == 2 ? Icon(Icons.home) : Icon(Icons.note_sharp),
                onPressed: () {
                  setState(() {
                    index = 2;
                    AppBarTitle = "DreamCatcher";
                  });
                },
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                tooltip: 'Favorite',
                icon: index == 3
                    ? Icon(Icons.ondemand_video_outlined)
                    : Icon(Icons.note_sharp),
                onPressed: () {
                  setState(() {
                    index = 3;
                    AppBarTitle = "ChooseSubjectTitle".tr();
                  });
                },
              ),
              SizedBox(
                width: 20,
              ),
            ],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        onPressed: () {
          showDialog<void>(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(
                  randomChoice(quotes),
                ),
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


// int calcNo (requird int x ,requird int y ,requird int z) {

// return x + y / z
// }


// calcNo (x : 2 , z : 5 , y : 3);






















