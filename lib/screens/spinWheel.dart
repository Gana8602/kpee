import 'package:android/screens/treasure.dart';
import 'package:flutter/material.dart';

class LogoScreen17 extends StatefulWidget {
  const LogoScreen17({super.key});

  @override
  State<LogoScreen17> createState() => _LogoScreen17State();
}

class _LogoScreen17State extends State<LogoScreen17> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen18()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/garden.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay image (fortune.png)
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                height: 200,
                width: 349,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/fortune.png"),
                  ),
                ),
              ),
            ),
          ),
          // Centered polygen image
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/polygen.png"),
                ),
              ),
            ),
          ),
          // Wheel and spin button
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 650, // Adjust height for the wheel image
                  width: 916, // Adjust width for the wheel image
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/wheel.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Add spacing
                Container(
                  height: 101,
                  width: 270,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/spin.png"),
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
