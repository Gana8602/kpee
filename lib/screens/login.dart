import 'package:android/screens/sign_up.dart';
import 'package:android/screens/verify.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen6 extends StatefulWidget {
  const LogoScreen6({super.key});

  @override
  State<LogoScreen6> createState() => _LogoScreen6State();
}

class _LogoScreen6State extends State<LogoScreen6> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen7()));
    });
  }

  TextEditingController phone = TextEditingController();

  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

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
            SizedBox(
              height: 50,
            ),
            Text(
              "Enter your mobile number",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Color(0xffffd500),
              ),
            ),
            Text(
              "We will send you the 4 digit verification code",
              style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 48,
                width: 271,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: TextField(
                  controller: phone,
                  decoration: InputDecoration(
                      prefixText: "+91",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                if (phone.text.isNotEmpty) {
                  if (phone.text.length < 10 || phone.text.length > 10) {
                    _showMessage("Please enter valid number");
                  } else {}
                } else {
                  _showMessage("Mobile number is required");
                }
              },
              child: Container(
                height: 50,
                width: 273,
                decoration: BoxDecoration(
                  color: Color(0xFFffd800),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    "GENERATE OTP",
                    style: GoogleFonts.montserrat(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Dont have an account? ",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogoScreen5()),
                    );
                  },
                  child: Text("Signup",
                      style: GoogleFonts.montserrat(
                          color: Color(0xffffe800),
                          fontWeight: FontWeight.w500,
                          fontSize: 15)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
