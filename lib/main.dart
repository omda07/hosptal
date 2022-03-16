import 'package:flutter/material.dart';
import 'package:hospital/style/lightTheme.dart';
import 'package:hospital/views/screens/login_screen.dart';
import 'package:hospital/views/screens/splash_screen.dart';

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
      title: 'Hospital',
      theme: lightTheme(context),
      home:  SplashScreen(),
    );
  }
}

