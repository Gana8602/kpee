import 'package:android/screens/location.dart';
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
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen8()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xff4618A2),
            image: DecorationImage(
              image: AssetImage(
                "assets/white_pattern.png",
              ),
              opacity: 0.2,
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
                height: 50,
              ),
              Text(
                "OTP Verification",
                style: GoogleFonts.montserrat(
                    color: Color(0xffffe800),
                    fontWeight: FontWeight.w500,
                    fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter the OTP Sent to +91 900****09",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              OTPInput(),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Didn't Receive OTP?",
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "RESEND",
                    style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffe800)),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 288,
                  decoration: BoxDecoration(
                      color: Color(0xffffe800),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Center(
                    child: Text(
                      "VERIFY & CONTINUE",
                      style: GoogleFonts.montserrat(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
