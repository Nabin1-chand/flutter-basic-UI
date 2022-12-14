import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 2));
      Navigator.pushNamed(context, "/home");
      setState(() {
        changeButton = false;
      });
    }
  }

  late FocusNode myFocusNode;
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset("images/login_image.png",
                  height: 150, fit: BoxFit.cover),
              // new feauter add in login form
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 18.0, horizontal: 40.0),
                child: Column(
                  children: [
                    TextFormField(
                      focusNode: myFocusNode,
                      decoration: InputDecoration(
                        hintText: "Enter your name",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter your name";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      // focusNode: myFocusNode,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        labelText: "password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your password";
                        } else if (value.length < 6) {
                          return "Password more than 6 character";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(50),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: Container(
                          width: 150,
                          height: 50,
                          child: Center(
                            child: changeButton
                                ? CircularProgressIndicator()
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
