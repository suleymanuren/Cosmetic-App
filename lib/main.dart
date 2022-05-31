import 'package:flutter/material.dart';
import 'package:kozmetik/DetailPage.dart';
import 'package:kozmetik/LoginPage.dart';
import 'package:kozmetik/splash.dart';
import 'package:kozmetik/widgetlar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: GirisSayfasi(),
      home: SplashScreen(),
    );
  }
}


