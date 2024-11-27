import 'package:android/screens/contest.dart';
import 'package:android/screens/contest1.dart';
import 'package:android/screens/gameplay.dart';
import 'package:android/screens/home.dart';
import 'package:android/screens/location.dart';
import 'package:android/screens/login.dart';
import 'package:android/screens/looser.dart';
import 'package:android/screens/main_home.dart';
import 'package:android/screens/result.dart';
import 'package:android/screens/sign_up.dart';
import 'package:android/screens/smallwin.dart';
import 'package:android/screens/spinWheel.dart';
import 'package:android/screens/splash1.dart';
import 'package:android/screens/splash2.dart';
import 'package:android/screens/splash3.dart';
import 'package:android/screens/splash4.dart';
import 'package:android/screens/task.dart';
import 'package:android/screens/treasure.dart';
import 'package:android/screens/verify.dart';
import 'package:android/screens/winners.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LogoScreen9(),
    );
  }
}
