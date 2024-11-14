import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen6 extends StatefulWidget {
  const LogoScreen6({super.key});

  @override
  State<LogoScreen6> createState() => _LogoScreen6State();
}

class _LogoScreen6State extends State<LogoScreen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff4618A2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img2.png",
              height: 177,
              width: 161,
            ),
            Text(
              "Enter your mobile number",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xffffd500),
              ),
            ),
            Text(
              "We will send you the 4 digit verification code",
              style:
                  GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixText: "+91",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xFFffd500),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Color(0xFFffd800),
                    labelText: "GENERATE OTP",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Text(
              "Dont have an account ,Sign Up",
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
