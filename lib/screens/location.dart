import 'package:android/screens/contest.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen8 extends StatefulWidget {
  const LogoScreen8({super.key});

  @override
  State<LogoScreen8> createState() => _LogoScreen8State();
}

class _LogoScreen8State extends State<LogoScreen8> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen9()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xff4618a2),
            image: DecorationImage(
                image: AssetImage("assets/img4.png"),
                fit: BoxFit.cover,
                opacity: 0.2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(125)),
                  image: DecorationImage(
                      image: AssetImage("assets/location.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 90,
              width: MediaQuery.of(context).size.width / 1.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "What is your location?",
                    style: GoogleFonts.montserrat(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffffe800)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "We need to know your location in order to suggest nearby services",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 288,
              decoration: BoxDecoration(
                  color: Color(0xffffe800),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(
                child: Text(
                  "Allow Location Access",
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4618a2)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
