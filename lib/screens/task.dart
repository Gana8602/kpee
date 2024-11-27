import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class LogoScreen20 extends StatefulWidget {
  const LogoScreen20({super.key});

  @override
  State<LogoScreen20> createState() => _LogoScreen20State();
}

class _LogoScreen20State extends State<LogoScreen20> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: screenWidth,
              // Set width for the container
              height: 826,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/taskpg.png"))),

              child: Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/"))),
                  )
                ],
              ),
              // Set height for the container
            ),
          ],
        ),
      ),
    );
  }
}
