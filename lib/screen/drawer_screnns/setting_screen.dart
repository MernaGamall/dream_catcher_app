import 'package:dream_catcher_app/main.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.settings),
            SizedBox(
              width: 5,
            ),
            Text("setting".tr()),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ButtonStyle(
                        // backgroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                    clipBehavior: Clip.hardEdge,
                    onPressed: () {
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ChangeColor()));
                      if (context.locale == Locale('ar')) {
                        context.setLocale(Locale('en'));
                      } else {
                        context.setLocale(Locale('ar'));
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.g_translate_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Lang".tr(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
              // Container(
              //     width: MediaQuery.of(context).size.width,
              //     child: ElevatedButton(
              //       onPressed: () =>
              //           MyApp.of(context).changeTheme(ThemeMode.light),
              //       child: Icon(Icons.add_a_photo_outlined),
              //     )),


              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () =>
                      MyApp.of(context).changeTheme(ThemeMode.light),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.light_mode),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Light".tr()),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () =>
                      MyApp.of(context).changeTheme(ThemeMode.dark),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.dark_mode_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text("dark".tr()),
                    ],
                  ),
                ),
              ),

              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   child: ElevatedButton(
              //       onPressed: () =>
              //           MyApp.of(context).changeTheme(ThemeMode.dark),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Icon(Icons.dark_mode_outlined),
              //           SizedBox(
              //             width: 5,
              //           ),
              //           Text("dark".tr()),
              //         ],
              //       )),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
