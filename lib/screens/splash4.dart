import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sign_up.dart';

class LogoScreen4 extends StatefulWidget {
  const LogoScreen4({super.key});

  @override
  State<LogoScreen4> createState() => _LogoScreen4State();
}

class _LogoScreen4State extends State<LogoScreen4> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState(); // Initialize the animation controller

    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen5()));
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 3,
                      color: const Color.fromARGB(255, 2, 16, 41),
                    )),
                height: 120,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/image1.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Image.asset(
                      "assets/kpee.png",
                      fit: BoxFit.cover,
                      height: 30,
                      width: 100,
                    ),
                  ],
                ),
              ),
              Text(
                "Every Moves Money",
                style: GoogleFonts.reggaeOne(
                    color: Color(0xff4618a2),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ]),
      ),
    );
  }
}
