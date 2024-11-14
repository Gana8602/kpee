import 'package:android/screens/splash4.dart';
import 'package:flutter/material.dart';
class LogoScreen3 extends StatefulWidget {
  const LogoScreen3({super.key});

  @override
  State<LogoScreen3> createState() => _LogoScreen3State();
}

class _LogoScreen3State extends State<LogoScreen3> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen4()));
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
              "assets/image1.png",
              height: 50,
              width: 50,
            ),
          ],
        )),
      ),
    );
  }
}
