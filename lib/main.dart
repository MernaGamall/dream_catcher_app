
import 'package:dream_catcher_app/screen/navigation_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'screen/bottom_navigantionbar_screens/subjectQuestion_screen.dart';
import 'screen/bottom_navigantionbar_screens/videos_screens.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations',
      // fallbackLocale: Locale('en'),
        startLocale: Locale('en'),
        child: MyApp(),),
  );

}
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF8DA5B),
        appBarTheme: AppBarTheme(
          color: Color(0xff247291),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xff247291),),
          )
        )
      ),
        darkTheme:  ThemeData(
            scaffoldBackgroundColor: Colors.black38,
            appBarTheme: AppBarTheme(
              color: Color(0xff787A91),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff787A91),),
                )
            )
        ),
        themeMode: _themeMode,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: NavigationPage()
    );
  }

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}
