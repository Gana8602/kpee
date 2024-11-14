import 'package:android/screens/login.dart';
import 'package:android/screens/sign_up.dart';
import 'package:android/screens/splash1.dart';
import 'package:android/screens/splash2.dart';
import 'package:android/screens/splash3.dart';
import 'package:android/screens/splash4.dart';
import 'package:android/screens/verify.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LogoScreen7(),
    );
  }
}
