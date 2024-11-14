import 'package:android/screens/verify2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen7 extends StatefulWidget {
  const LogoScreen7({super.key});

  @override
  State<LogoScreen7> createState() => _LogoScreen7State();
}

class _LogoScreen7State extends State<LogoScreen7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xff4618A2),
            image: DecorationImage(
              image: AssetImage("img4.png"),
              fit: BoxFit.cover,
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img2.png",
                height: 177,
                width: 161,
              ),
              SizedBox(
                height: 150,
              ),
              Text(
                "OTP Verification",
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 24),
              ),
              OTPInput()
            ],
          ),
        ),
      ),
    );
  }
}
