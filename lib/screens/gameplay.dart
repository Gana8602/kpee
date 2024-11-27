import 'package:android/screens/task.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen19 extends StatefulWidget {
  const LogoScreen19({super.key});

  @override
  State<LogoScreen19> createState() => _LogoScreen19State();
}

class _LogoScreen19State extends State<LogoScreen19> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      // TODO: implement initState
      super.initState();
      Future.delayed(Duration(seconds: 2), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LogoScreen20()));
      });
    }

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          color: Color(0xff4618a2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  children: [
                    // Back Button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Icon(
                        Icons.arrow_circle_left_outlined,
                        color: const Color(0xffffffff),
                        size: 30,
                      ),
                    ),

                    // Coin Balance
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffffe800),
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
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4618a2),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Spacer(),

                    // Basket Icon
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        "Treasure Hunt Contest",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffffe800)),
                      ),
                      Spacer(),
                      Container(
                        height: 20,
                        width: 20,
                        child: Image.asset(
                          "assets/quick.png",
                        ),
                      ),
                      Container(
                        height: 24,
                        width: 64,
                        child: Text(
                          "15min",
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffffe800)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 88,
                  width: 281,
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30), // No curve for the top-left
                      topRight:
                          Radius.circular(30), // No curve for the top-right
                      bottomLeft:
                          Radius.circular(10), // Rounded corners at the bottom
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 20,
                        decoration: BoxDecoration(
                            color: Color(0xffffe800),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/icon.png",
                                height: 8.25,
                                width: 10.08,
                                color: Color(0xff4618a2),
                              ),
                              Text(
                                "320",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xfff4618a2)),
                              ),
                              Spacer(),
                              Text(
                                "100+ winners",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff4618a2)),
                              ),
                              Spacer(),
                              Image.asset(
                                "assets/quick.png",
                                height: 10.1,
                                width: 12,
                              ),
                              Text(
                                "Quick",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff4618a2)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Price Pool",
                              style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 7,
                                  fontWeight: FontWeight.w800),
                            ),
                            Spacer(),
                            Text(
                              "Entry Fee",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 7,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Container(
                              height: 12,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffd9d9d9),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Text(
                                "₹30,000",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 10,
                              width: 28,
                              decoration: BoxDecoration(
                                  color: Color(0xffd9d9d9),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/timeleft.png"))),
                              child: Text(
                                "00m25s",
                                style: GoogleFonts.montserrat(
                                    fontSize: 7,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xffff3300)),
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 16,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xff41d163),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Text(
                                "₹ 100",
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 36,
                  width: 65,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/stars.png"))),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: 233,
                        width: 350,
                        child: Text(
                          "Rewards",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.mysteryQuest(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffffe800)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Transform.translate(
                  offset: Offset(0, -20), // Moves the container 20 pixels up
                  child: Container(
                    height: 206,
                    width: 850,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/PriceList.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/layer.png"))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
