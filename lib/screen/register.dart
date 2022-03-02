// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_print, empty_catches, unused_catch_clause, avoid_unnecessary_containers
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work3/models/profile.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(email: '', password: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  get e => null;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: firebase,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(title: Text('error')),
            body: Center(child: Text("${snapshot.error}")),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(30),
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios_new),
                            iconSize: 30,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 90,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: Text(
                              "Register",
                              style: GoogleFonts.karla(
                                  textStyle: TextStyle(fontSize: 50)),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "E-mail",
                            style: TextStyle(fontSize: 20),
                          ),
                          TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'กรุณากรอก Email ด้วย'),
                              EmailValidator(
                                  errorText: 'รูปแบบ Email ไม่ถูกต้อง ')
                            ]),
                            keyboardType: TextInputType.emailAddress,
                            onSaved: (String? email) {
                              profile.email = email!;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Password",
                            style: TextStyle(fontSize: 20),
                          ),
                          TextFormField(
                            validator: (str) {
                              if (str!.isEmpty) {
                                return "กรุณาใส่รหัสผ่าน";
                              }
                              if (double.parse(str) <= 6) {
                                return "กรุณาใช้รหัสผ่านมากกว่า 6 ตัวขึ้นไป";
                              }
                              return null;
                            },
                            obscureText: true,
                            onSaved: (String? password) {
                              profile.password = password!;
                            },
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              child: Text("register"),
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState?.save();
                                  try {
                                    await FirebaseAuth.instance
                                        .createUserWithEmailAndPassword(
                                            email: profile.email,
                                            password: profile.password);
                                    Fluttertoast.showToast(
                                        msg: "สร้างบัญชีเรียบร้อยแล้ว",
                                        gravity: ToastGravity.CENTER);
                                    formKey.currentState?.reset();
                                  } on FirebaseAuthException catch (e) {
                                    String message;
                                    if (e.code == 'email-already-in-use') {
                                      message =
                                          "มีอีเมลนี้เคยใช้แล้ว กรุณาใช้ อีเมล อื่น";
                                      Fluttertoast.showToast(
                                          msg: message,
                                          gravity: ToastGravity.CENTER);
                                    }
                                  }
                                }
                              },
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            ),
          );
        }
        return Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
