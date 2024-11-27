import 'package:android/screens/looser.dart';
import 'package:flutter/material.dart';

class LogoScreen15 extends StatefulWidget {
  const LogoScreen15({super.key});

  @override
  State<LogoScreen15> createState() => _LogoScreen15State();
}

class _LogoScreen15State extends State<LogoScreen15> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen16()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Container with Image
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff4618a2),
              image: const DecorationImage(
                image: AssetImage("assets/congrats.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main Content Container
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff4618a2),
                image: DecorationImage(
                  image: const AssetImage("assets/papers.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.1),
                    BlendMode.lighten,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text with Custom Font
                  Text(
                    'Nirmal',
                    style: const TextStyle(
                      fontFamily: 'Elan', // Matches pubspec.yaml font family
                      fontSize: 96,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  // Model Image
                  Container(
                    height: 395.93,
                    width: 314,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/model.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Centered Text
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "Your amount will be credited within 15 minutes to your wallet.",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily:
                            "ElanITF", // Matches pubspec.yaml font family
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFFFFE1E1),
                      ),
                    ),
                  ),
                  // Wing Image
                  Container(
                    height: 155,
                    width: 155,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/wing.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
