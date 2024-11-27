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
          color: Color(0xffffe800),
          image: DecorationImage(
              image: AssetImage("assets/yellow_screen.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.2), BlendMode.lighten)),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xff4618a2), width: 1),
                  image:
                      DecorationImage(image: AssetImage("assets/image1.png"))),
            )
          ],
        )),
      ),
    );
  }
}
