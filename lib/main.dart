import 'package:first_app/pages/cart_page.dart';
import 'package:first_app/pages/home_detail.dart';
import 'package:first_app/pages/homepage.dart';
import 'package:first_app/pages/login_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter demo",
      routes: {
        "/home": (context) => MyWidget(),
        "/": (context) => LoginPage(),
        "/cartpage": (context) => CartPage(),
        // "/detail": (context) => HomeDetail(),
      },
    );
  }
}
