import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffE7DFD5),
      body: SafeArea(
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Your Phone Number ",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              validator: (String? value) {
                                if (value == "") {
                                  return "ادخل كلمة المرور الصحيحه";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "كلمة المرور",
                              ),
                            ),
                          ),
                          isObscure
                              ? IconButton(
                            onPressed: () {
                              setState(() {
                                isObscure = false;
                              });
                            },
                            icon: Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.blue,
                            ),
                          )
                              : IconButton(
                            onPressed: () {
                              setState(() {
                                isObscure = true;
                              });
                            },
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

