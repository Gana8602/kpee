import 'package:android/screens/contest1.dart';
import 'package:android/screens/smallwin.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen12 extends StatefulWidget {
  const LogoScreen12({super.key});

  @override
  State<LogoScreen12> createState() => _LogoScreen12State();
}

class _LogoScreen12State extends State<LogoScreen12> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen13()));
    });
  }

  List<String> images = [
    "assets/carousel1.png",
    "assets/carousel2.png",
    "assets/carousel3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    var actions = Actions;
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                width: 415,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/background.png",
                        ),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 415,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Positioned(
                              top: 51,
                              left: 35,
                              child: Image.asset(
                                "assets/kp_logo.png",
                                height: 30,
                                width: 30,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/kpee.png",
                              height: 19,
                              width: 64,
                            ),
                            Spacer(),
                            Positioned(
                              top: 52,
                              left: 311,
                              child: Image.asset(
                                "assets/basket.png",
                                height: 25,
                                width: 25,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.person_outline),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 415,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "HI, Nirmal",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "Let's Play",
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xff4618a2),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 35.0),
                            child: Container(
                              color: Color(0xff4618a2),
                              child: Container(
                                height: 20,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/coin.png",
                                      height: 12,
                                      width: 12,
                                    ),
                                    Text(
                                      "₹2500",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  height: 193,
                  width: 343,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.yellow.shade600,
                      image: DecorationImage(
                          image: AssetImage(
                        "assets/celebrate.png",
                      ))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Win everyday",
                              style: GoogleFonts.montez(
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "₹ 1000",
                              style: GoogleFonts.montserrat(
                                fontSize: 44,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                                height: 34,
                                width: 84,
                                decoration: BoxDecoration(
                                    color: Color(0xff4618a2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    "Play Now",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Spacer(
                          flex: 10,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all(
                                  color: Color(0xff4618a2), width: 5)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Next Spin",
                                style: GoogleFonts.montserrat(
                                  color: Color(0xff4618a2),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "5h 23m",
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Image.asset(
                                "assets/fortune-wheel 1.png",
                                height: 25,
                                width: 25,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  child: CarouselSlider.builder(
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        height: MediaQuery.of(context).size.height,
                        width: 320,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      );
                    },
                    itemCount: images.length,
                    options: CarouselOptions(
                        height: 400,
                        aspectRatio: 9 / 16,
                        enlargeCenterPage: true),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
