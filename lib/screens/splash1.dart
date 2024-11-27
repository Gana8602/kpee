import 'dart:math';

import 'package:android/screens/sign_up.dart';
import 'package:android/screens/splash2.dart';
import 'package:android/screens/splash4.dart';
import 'package:flutter/material.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  int i = 0;
  List<String> image = [
    "assets/image1.png",
    "assets/img3.png",
    "assets/image1.png"
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    change();
  }

  Future<void> change() async {
    for (int count = 0; count < 3; count++) {
      await Future.delayed(Duration(seconds: 2));
      setState(() {
        i = (i + 1) % image.length; // Loops through the image list
      });
      print("Index: $i and image: ${image[i]}");
    }
    setState(() {
      i = 3;
    });
    if (i == 3) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LogoScreen5()));
    }
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
        child: Center(
            child: i == 3
                ? Column(
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
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/image1.png",
                                height: 50,
                                width: 50,
                              ),
                              Text(
                                "KPEE",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                        Text("Every Moves Money"),
                      ])
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: i == 1 ? 156 : 50,
                        width: i == 1 ? 156 : 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: i == 1
                                ? null
                                : Border.all(
                                    color: Color(
                                      0xff4618a2,
                                    ),
                                    width: 1),
                            image:
                                DecorationImage(image: AssetImage(image[i]))),
                      ),
                    ],
                  )),
      ),
    );
  }
}
