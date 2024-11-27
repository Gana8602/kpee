import 'package:android/screens/gameplay.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen18 extends StatefulWidget {
  const LogoScreen18({super.key});

  @override
  State<LogoScreen18> createState() => _LogoScreen18State();
}

class _LogoScreen18State extends State<LogoScreen18> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen19()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/tresurebg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Centered Column
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Treasure Hunt Text
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Treasure Hunt",
                    style: GoogleFonts.eater(
                      fontSize: 48, // Reduced font size for better fit
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                // Map Image
                Expanded(
                  flex: 9,
                  child: Container(
                    height: 412,
                    width: 412,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/map.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                // Play Button
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 290,
                    width: 290,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/play1.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                // Box Image
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 118,
                    width: 199,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/box.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
