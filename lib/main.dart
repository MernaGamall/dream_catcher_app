import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/exam_and_exercies_screens/exam_screen.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/profile/profile_screen.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/mindset_apps/note_app/model_class.dart';
import 'package:dream_catcher_app/screen/drawer_screnns/mindset_apps/reminder/reminder_model_class.dart';
import 'package:dream_catcher_app/screen/navigation_page.dart';
import 'package:dream_catcher_app/screen/bottom_navigantionbar_screens/profile/profile_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'screen/bottom_navigantionbar_screens/video_screens/subjectQuestion_screen.dart';
import 'screen/bottom_navigantionbar_screens/video_screens/videos_screens.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main() async {

  AwesomeNotifications().initialize(
    "",
    [
      NotificationChannel(
          channelKey: 'reminder key',
          channelName: 'reminder name',
          channelDescription: 'description'),
    ],
  );

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(ModelClassAdapter());
  Hive.registerAdapter(ReminderModelClassAdapter());
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations',
       fallbackLocale: Locale('en'),
        startLocale: Locale('en'),
        child: MyApp(),),
  );

}
class MyApp extends StatefulWidget {
  MyApp({super.key});
  static final GlobalKey<NavigatorState> navigatorKey =
  GlobalKey<NavigatorState>();

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
      //  scaffoldBackgroundColor: Color(0xffFFE8C7),
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
        navigatorKey: MyApp.navigatorKey,
       // locale: context.locale,
        home: NavigationPage()
    );
  }

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}
