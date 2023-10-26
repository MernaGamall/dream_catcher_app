import 'package:dream_catcher_app/screen/about_page.dart';
import 'package:dream_catcher_app/screen/login_screen.dart';
import 'package:dream_catcher_app/screen/register_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'screen/setting_screen.dart';
import 'screen/splash_screen.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations',
       fallbackLocale: Locale('ar'),
        startLocale: Locale('ar'),
        child: MyApp(),),
  );

}
class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.fallbackLocale,
        home: SettingScreen()
    );
  }
}
