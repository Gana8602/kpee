import 'package:android/screens/winners.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen14 extends StatefulWidget {
  const LogoScreen14({super.key});

  @override
  State<LogoScreen14> createState() => _LogoScreen14State();
}

class _LogoScreen14State extends State<LogoScreen14> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen15()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xff4618a2), // Background color
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            // Confetti Image
            Positioned(
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/ribbon.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        "Winners",
                        style: GoogleFonts.newRocker(
                          fontSize: 36, // Adjust font size
                          fontWeight: FontWeight.w400, // Make it bold
                          color: const Color(0xFFFFE800), // Yellow text
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Ribbon Image
            Positioned(
              top: MediaQuery.of(context).size.height * 0.3, // Adjust as needed
              child: Container(
                height: 411,
                width: 411,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/confetti.png"),
                    fit: BoxFit.contain, // Ensures proper scaling
                  ),
                ),
              ),
            ),
            // Gold Coins Image
            Positioned(
              bottom: 0,
              child: Container(
                height: 412,
                width: 412,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/goldcoins.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Container(
              height: 900.77,
              width: 300.73,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Group.png"),
                      fit: BoxFit.contain)),
            )
          ],
        ),
      ),
    );
  }
}
