import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen9 extends StatefulWidget {
  const LogoScreen9({super.key});

  @override
  State<LogoScreen9> createState() => _LogoScreen9State();
}

class _LogoScreen9State extends State<LogoScreen9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container for the background image and content
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width, // Full width
                decoration: BoxDecoration(
                  color: const Color(0xffffd500), // Background color
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  image: const DecorationImage(
                    image: AssetImage("assets/joystick.png"),
                    fit: BoxFit.cover, // Cover the container
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top Row with Icons
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Back Icon
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Icon(
                              Icons.arrow_circle_left_outlined,
                              color: const Color(0xff4618a2),
                              size: 30,
                            ),
                          ),
                          // Coin Container
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xff4618a2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/coin.png",
                                  height: 16,
                                  width: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "₹2500",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          // Basket Icon
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/basket.png"),
                                ),
                              ),
                            ),
                          ),
                          // Profile Icon
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                color: Color(0xffec0e52),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage("assets/person.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Contest Image
                    const SizedBox(height: 5),
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.65,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/contest.png"),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(56.0),
                          child: Center(
                            child: Row(
                              children: [
                                Container(
                                  height: 47,
                                  width: 47,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/singlecoin.png"))),
                                ),
                                Container(
                                  height: 88,
                                  width: 70,
                                  child: Text(
                                    "10",
                                    style: GoogleFonts.aldrich(
                                        fontSize: 64,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xfffffffff)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Women and Rectangle Images stacked together
                    Stack(
                      children: [
                        Row(
                          children: [
                            // Women Image placed on the left side of the rectangle
                            Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/women.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            // Rectangle Image containing the women image
                            Center(
                              child: Container(
                                height: 440,
                                width: 330,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/rectangle.png"),
                                      fit: BoxFit.cover),
                                ),
                                child: Stack(
                                  children: [
                                    // Additional images stacked inside the rectangle
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                        height: 46.46,
                                        width: 217,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/NumRow1.png"),
                                                fit: BoxFit.contain)),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Positioned(
                                      top: 50,
                                      left: 0,
                                      child: Container(
                                        height: 46.46,
                                        width: 217,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/NumRow2.png"),
                                                fit: BoxFit.contain)),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Positioned(
                                      top: 100,
                                      left: 0,
                                      child: Container(
                                        height: 46.46,
                                        width: 217,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/NumRow3.png"),
                                                fit: BoxFit.contain)),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Positioned(
                                      top: 150,
                                      left: 0,
                                      child: Container(
                                        height: 46.46,
                                        width: 217,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/NumRow4.png"),
                                                fit: BoxFit.contain)),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Positioned(
                                      top: 200,
                                      left: 0,
                                      child: Container(
                                        height: 46.46,
                                        width: 217,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/NumRow5.png"),
                                                fit: BoxFit.contain)),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Positioned(
                                      top: 250,
                                      left: 0,
                                      child: Container(
                                        height: 46.46,
                                        width: 217,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/NumRow6.png"),
                                                fit: BoxFit.contain)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        height: 75.44,
                        width: 206.05,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/enter.png"))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
