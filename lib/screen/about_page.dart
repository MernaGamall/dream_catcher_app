import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffF8DA5B),
      appBar: AppBar(
        title: Text("about".tr()),
        backgroundColor: Color(0xff247291),
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
                  "شركة الروضه للادوات الكهربائيه و جميع أنواع الكبلات و المفاتيح الاوتوماتيك و اللوحات و خراطيم البلاستيك  تواصل معتا عبر الأتي : ",
                  // style: GoogleFonts.alexandria(
                  //   fontSize: 18,
                  // ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {
                    //  AboutFunction().facebookURL();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.facebook_rounded),
                        SizedBox(width: 7),
                        Text("شركة الروضه للأدوات الكهربيه"),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {
                      //AboutFunction().locationFunction();
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                        ),
                        SizedBox(width: 7),
                        Text("شارع مصر اسيوط البطيء - البدرشين - الجيزه"),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                        //  AboutFunction().whatsUrl("01002095050");
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                             // child: Image.asset("image/whats.PNG"),
                            ),
                            SizedBox(width: 7),
                            Text("01002095050"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                        //  AboutFunction().whatsUrl("01157891602");
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                             // child: Image.asset("image/whats.PNG"),
                            ),
                            SizedBox(width: 7),
                            Text("01157891602"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                         // AboutFunction().PhoneUrl("01110955595");
                        },
                        child: Row(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(width: 7),
                            Text("01110955595"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                        //  AboutFunction().PhoneUrl("01142323655");
                        },
                        child: Row(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(width: 7),
                            Text("01142323655"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    //   Scaffold(
    //   backgroundColor: Color(0xffF8DA5B),
    //   appBar: AppBar(
    //     backgroundColor: Color(0xff247291),
    //     title: Text("Profile"),
    //   ),
    //   body: SafeArea(
    //     child: Center(
    //       child: Column(
    //         children: [
    //           // logo
    //
    //
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
//introduce
//links(facebook-youtube-telegramlink)
// telegram (لينك الجروب حسب مرحلة الطالب)
