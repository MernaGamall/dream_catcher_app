import 'package:dream_catcher_app/control/url_functions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  String? studentStage = "prep2".tr();
  String? studentLang = "Arabic".tr();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("about".tr()),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               // Image.asset("image/logo.PNG"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
                Text(
                    "information".tr()
                  // style: GoogleFonts.alexandria(
                  //   fontSize: 18,
                  // ),
                ),

                // face book
                Container(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {
                      AboutFunction().facebookURL();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.facebook_rounded),
                        SizedBox(width: 7),
                        Text("AppName".tr()),
                      ],
                    ),
                  ),
                ),

                // youtube
                Container(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {
                      AboutFunction().youtubeUrl();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.play_arrow_sharp),
                        SizedBox(width: 7),
                        Text("AppName".tr()),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {
                      if(studentStage == "prep1".tr()){
                        AboutFunction().TelegramGroup("https://t.me/+Z0HjV9wVnsQ5MzQ0");
                      }else if (studentStage == "prep2".tr()){
                        AboutFunction().TelegramGroup("https://t.me/+EkFEmo79PN04OWZk");
                      }else if (studentStage == "prep3".tr()){
                        AboutFunction().TelegramGroup("https://t.me/+bvqgx4Y3EXwxZDM0");
                      }
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.telegram,
                        ),
                        SizedBox(width: 7),
                        Text("جروب التليجرام"),
                      ],
                    ),
                  ),
                ),

                // studentLang == "Arabic".tr() ?
                //
                // Container(
                //   height: 50,
                //   width: 350,
                //   child: ElevatedButton(
                //     onPressed: () {
                //       if(studentStage == "prep1".tr()){
                //
                //       }else if (studentStage == "prep2".tr()){
                //
                //       }else if (studentStage == "prep3".tr()){
                //
                //       }
                //       //AboutFunction().locationFunction();
                //     },
                //     child: Row(
                //       children: [
                //         Icon(
                //           Icons.telegram,
                //         ),
                //         SizedBox(width: 7),
                //         Text("علوم"),
                //       ],
                //     ),
                //   ),
                // ) :
                // Container(
                //   height: 50,
                //   width: 350,
                //   child: ElevatedButton(
                //     onPressed: () {
                //       if(studentStage == "prep1".tr()){
                //
                //       }else if (studentStage == "prep2".tr()){
                //
                //       }else if (studentStage == "prep3".tr()){
                //
                //       }
                //       //AboutFunction().locationFunction();
                //     },
                //     child: Row(
                //       children: [
                //         Icon(
                //           Icons.telegram,
                //         ),
                //         SizedBox(width: 7),
                //         Text("Science"),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//introduce
//links(facebook-youtube-telegramlink)
// telegram (لينك الجروب حسب مرحلة الطالب)
