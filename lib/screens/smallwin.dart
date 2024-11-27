import 'package:android/screens/result.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen13 extends StatefulWidget {
  const LogoScreen13({super.key});

  @override
  State<LogoScreen13> createState() => _LogoScreen13State();
}

class _LogoScreen13State extends State<LogoScreen13> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen14()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xff4618a2),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Row
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Small win contest",
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffffffff),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Slot users",
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffffffff),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Image.asset(
                      'assets/icon.png',
                      height: 12,
                      width: 12,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "330",
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffffe800),
                      ),
                    ),
                  ],
                ),

                // Price Lot Row
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Price Lot:",
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffffffff),
                        ),
                      ),
                      Text(
                        "₹30,000",
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffffe800),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Strong signal",
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff34b964),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Image.asset(
                        "assets/cellular.png",
                        height: 12,
                        width: 12,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),

                // Star Image
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/star.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                // Thanks Text
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 4.0, left: 4.0),
                  child: Text(
                    "Thanks to contribution",
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),

                // Shaking Contest Text
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 4.0, left: 4.0),
                  child: Text(
                    "Shaking contest",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),

                // Winners Announced Text
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    "Winners Announced shortly",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.coiny(
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffffe800),
                    ),
                  ),
                ),

                // Mystery Box Text
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    "Win mystery box Use day spin",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.newRocker(
                      height: 0.9,
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),

                // Treasure and Light Effect
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 340,
                      width: 364,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/treasure.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      height: 333,
                      width: 373,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/lighteffect.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
