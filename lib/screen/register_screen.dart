import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:image_picker/image_picker.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // final _auth = FirebaseAuth.instance;
  // bool _saving = false;
  late String email;
  late String password;
  late String LangOrArabic;
  bool isObscure = true;
  File? image;
  final imagePicker = ImagePicker();
  String? imageUrl;
  bool _switchValue = false;
  bool _switchValue2 = false;
  List<String> stages = ["prep1".tr(), "prep2".tr(), "prep3".tr()];
  String? studentStage;

  void takePhoto() async {
    var camPhoto = await imagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      image = File(camPhoto!.path);
    });

    //  emit(ChoosePhoto(image: image));

    // var nameImage = basename(camPhoto.path);
    //
    // var refStorage = FirebaseStorage.instance.ref("$nameImage");
    //
    // var myfer = refStorage.putFile(image!);
    //
    // await myfer.whenComplete(() async {
    //   var url = await refStorage.getDownloadURL();
    //   imageUrl = url;
    // });
    //
    // emit(ImageURLDone(URL: imageUrl));
  }

  void choosePhoto() async {
    var galleryPhoto = await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      image = File(galleryPhoto!.path);
    });

    // emit(ChoosePhoto(image: image));
    //
    // var nameImage = basename(galleryPhoto.path);
    //
    // var refStorage = FirebaseStorage.instance.ref("$nameImage");
    //
    // var myfer = refStorage.putFile(image!);
    //
    // await myfer.whenComplete(() async {
    //   var url = await refStorage.getDownloadURL();
    //   imageUrl = url;
    // });
    // emit(ImageURLDone(URL: imageUrl));
  }
  // bool internet = true;
  // @override
  // void initState() {
  //   getCurrentUser();
  //   super.initState();
  //   Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
  //     if (result == ConnectivityResult.none) {
  //       setState(() {
  //         internet = false;
  //       });
  //     } else {
  //       setState(() {
  //         internet = true;
  //       });
  //     }
  //   });
  // }

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // if (internet == false) {
    //   return NoInternetScreen();
    // }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6F4E37),
        title: Text(
          "AppName".tr(),
        ),
      ),
      body: Scrollbar(
        // scrollbarOrientation: ScrollbarOrientation.right,
        interactive: true,
        radius: Radius.circular(50),
          //radius: Radius.elliptical(10, 100),
       // radius: Radius.zero,
        thumbVisibility : true,
        //trackVisibility: true,
        thickness: 10,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: formKey,
                child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // first name
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 350,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(
                            validator: (String? value) {
                              if (value == "" || value!.contains("@ / .com")) {
                                return " من فضلك أدخل الحساب و يجب ان يحتوي علي @ / com. ";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              email = value;
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "FirstName".tr(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // last name
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 350,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(
                            validator: (String? value) {
                              if (value == "" || value!.contains("@ / .com")) {
                                return " من فضلك أدخل الحساب و يجب ان يحتوي علي @ / com. ";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              email = value;
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "LastName".tr(),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // phone no.
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 350,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(
                            validator: (String? value) {
                              if (value == "" || value!.contains("@ / .com")) {
                                return " من فضلك أدخل الحساب و يجب ان يحتوي علي @ / com. ";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              email = value;
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "PhoneNO".tr(),
                            ),
                          ),
                        ),
                      ),
                    ),

                   // SizedBox(
                   //    height: 25,
                   //  ),

                    // student stage
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                        child:
                        DropdownMenu<String>(
                          menuStyle: MenuStyle(

                          ),
                          hintText: "stage".tr(),
                          // helperText: "stage".tr(),
                          width: MediaQuery.of(context).size.width * 0.92,
                         // initialSelection: "stage".tr(),
                          onSelected: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              studentStage = value!;
                            });
                          },
                          dropdownMenuEntries: stages.map<DropdownMenuEntry<String>>((String value) {
                            return DropdownMenuEntry<String>(
                                value: value,
                                label: value
                            );
                          }).toList(),
                        )
                        // DropdownButton<String>(
                        //
                        //  // focusNode: FocusNode(),
                        //  // enableFeedback: true,
                        // //  autofocus: true,
                        //   hint: Text("stage".tr()),
                        //   underline: Container(),
                        //   borderRadius: BorderRadius.all(Radius.circular(15)),
                        //   value: studentStage,
                        //   onChanged: (String? newValue) {
                        //     setState(() {
                        //       studentStage = newValue!;
                        //     });
                        //   },
                        //   isExpanded: true,
                        //   items: stages.map((String value) {
                        //     return DropdownMenuItem<String>(
                        //       value: value,
                        //       child: Center(
                        //         child: Text(
                        //           value,
                        //         ),
                        //       ),
                        //     );
                        //   }).toList(),
                        // ),
                      ),
                    ),

                    //arabic or language
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("language".tr()),
                          CupertinoSwitch(
                            value: _switchValue,
                            onChanged: (value) {
                              setState(() {
                                _switchValue = value;
                                _switchValue2 = false;
                                LangOrArabic = "لغات";
                              });
                            },
                          ),
                          Text("Arabic".tr()),
                          CupertinoSwitch(
                            value: _switchValue2,
                            onChanged: (value) {
                              setState(() {
                                _switchValue2 = value;
                                _switchValue = false;
                                LangOrArabic = "عربي";
                              });
                            },
                          ),
                        ],
                      ),
                    ),

                    // password
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
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
                                    if (value == "" ||
                                        value!.contains("0123456789") ||
                                        value.length < 6) {
                                      return "  كلمة المرور يجب ان تحتوي علي رقم ولا تقل عن 6 حروف ";
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: isObscure,
                                  onChanged: (value) {
                                    password = value;
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password".tr(),
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
                    ),

                    // image
                    image == null
                        ? GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (builder) {
                                    return uplodeImage();
                                  });
                            },
                            child: CircleAvatar(
                            //  minRadius: 5,
                             // backgroundImage: AssetImage("assets/images/ss.jpg" , ) ,
                              child: Icon(Icons.add_reaction , size: 50, color: Colors.white,),
                              // Column(
                              //   mainAxisAlignment: MainAxisAlignment.end,
                              //   children: [
                              //     Text(
                              //       "photo".tr(),
                              //       style:
                              //           TextStyle(color: Colors.black, fontSize: 20),
                              //     ),
                              //   ],
                              // ),
                             radius: 70,
                              backgroundColor:  Color(0xffAAAFBA),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (builder) {
                                    return uplodeImage();
                                  });
                            },
                            child: CircleAvatar(
                              backgroundImage: FileImage(image!),
                              radius: 100,
                              backgroundColor: Colors.lightBlue,
                            ),
                          ),

                    // create account button
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color(0xffAAAFBA),
                            ),
                          ),
                          onPressed: () async {
                            // if (formKey.currentState!.validate()) {
                            //   await validation_done(context);
                            // } else {
                            //   ScaffoldMessenger.of(context).showSnackBar(
                            //     SnackBar(
                            //       backgroundColor: Colors.grey[600],
                            //       content: Text("يجب ملء البيانات"),
                            //     ),
                            //   );
                            // }
                          },
                          child: Text(
                            "NewAccount".tr(),
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Don't have account button
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => SignInScreen(),
                          //   ),
                          // );
                        },
                        child: Text("HaveAccount".tr()),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container uplodeImage() {
    return Container(
      height: 100,
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  takePhoto();
                },
                child: Icon(
                  Icons.camera_enhance,
                ),
              ),
              Text("Camera".tr())
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  choosePhoto();
                },
                child: Icon(
                  Icons.filter,
                ),
              ),
              Text("Gallery".tr()),
            ],
          )
        ],
      ),
    );
  }

  // Future<void> validation_done(BuildContext context) async {
  //   final isExistingUser = await checkUserExists(email);
  //   if (isExistingUser) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         backgroundColor: Colors.blueAccent,
  //         content: Text("الحساب موجود بالفعل"),
  //       ),
  //     );
  //   } else {
  //     await add_new_user(context);
  //   }
  // }

  // Future<void> add_new_user(BuildContext context) async {
  //   setState(() {
  //     _saving = true;
  //   });
  //   try {
  //     await _auth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(
  //         builder: (context) => HomeScreen(),
  //       ),
  //     );
  //     setState(() {
  //       _saving = false;
  //     });
  //   } catch (e) {
  //     print("the problem $e");
  //   }
  // }
}
