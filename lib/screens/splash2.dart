import 'package:android/screens/splash3.dart';
import 'package:flutter/material.dart';

class LogoScreen2 extends StatefulWidget {
  const LogoScreen2({super.key});

  @override
  State<LogoScreen2> createState() => _LogoScreen2State();
}

class _LogoScreen2State extends State<LogoScreen2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen3()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/img3.png",
              height: 156,
              width: 156,
            ),
          ],
        )),
      ),
    );
  }
}
