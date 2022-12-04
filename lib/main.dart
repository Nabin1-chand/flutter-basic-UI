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
      title: "flutter demo",
      routes: {
        "/home": (context) => const MyWidget(),
        "/": (context) => LoginPage()
      },
    );
  }
}
