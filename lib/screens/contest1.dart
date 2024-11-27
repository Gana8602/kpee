import 'package:android/screens/home.dart';
import 'package:android/screens/main_home.dart';
import 'package:android/screens/splash1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen10 extends StatefulWidget {
  const LogoScreen10({super.key});

  @override
  State<LogoScreen10> createState() => _LogoScreen10State();
}

class _LogoScreen10State extends State<LogoScreen10> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen12()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // Screen dimensions for responsiveness
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            color: Color(0xffffe800),
            image: DecorationImage(
              image: AssetImage("assets/coins.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.2),
                BlendMode.lighten,
              ),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section
                _buildHeader(),

                // Title Section
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: _buildTitle(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the header row with icons and coin balance
  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Back Button Icon
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(
            Icons.arrow_circle_left_outlined,
            color: Color(0xff4618a2),
            size: 30,
          ),
        ),

        // Coin Balance Container
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Color(0xff4618a2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/coin.png",
                  height: 16,
                  width: 16,
                ),
                SizedBox(width: 4),
                Text(
                  "₹2500",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Spacer to push remaining icons to the right
        Spacer(),

        // Basket Icon
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/basket.png"),
              ),
            ),
          ),
        ),

        // Profile Icon
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xffec0e52),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/person.png"),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Builds the title section with welcome text
  Widget _buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Small win contest",
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff4618a2),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 88,
            width: 281,
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), // No curve for the top-left
                topRight: Radius.circular(30), // No curve for the top-right
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
                      color: Color(0xff4618a2),
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
                        ),
                        Text(
                          "320",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
                        ),
                        Spacer(),
                        Text(
                          "100+ winners",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
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
                              color: Color(0xffffe800)),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage("assets/timeleft.png"))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
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
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Pricelist: 1 to 150 members -",
                        style: GoogleFonts.montserrat(
                            fontSize: 7,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff4618a2)),
                      ),
                      Text(
                        "₹200",
                        style: GoogleFonts.roboto(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4618a2),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            height: 88,
            width: 281,
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), // No curve for the top-left
                topRight: Radius.circular(30), // No curve for the top-right
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
                      color: Color(0xff4618a2),
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
                        ),
                        Text(
                          "320",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
                        ),
                        Spacer(),
                        Text(
                          "100+ winners",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
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
                              color: Color(0xffffe800)),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹60,000",
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage("assets/timeleft.png"))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹ 200",
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Pricelist: 1 to 150 members -",
                        style: GoogleFonts.montserrat(
                            fontSize: 7,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff4618a2)),
                      ),
                      Text(
                        "₹400",
                        style: GoogleFonts.roboto(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4618a2),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            height: 88,
            width: 281,
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), // No curve for the top-left
                topRight: Radius.circular(30), // No curve for the top-right
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
                      color: Color(0xff4618a2),
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
                        ),
                        Text(
                          "320",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
                        ),
                        Spacer(),
                        Text(
                          "100+ winners",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
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
                              color: Color(0xffffe800)),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹90,000",
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage("assets/timeleft.png"))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹ 300",
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Pricelist: 1 to 150 members -",
                        style: GoogleFonts.montserrat(
                            fontSize: 7,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff4618a2)),
                      ),
                      Text(
                        "₹600",
                        style: GoogleFonts.roboto(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4618a2),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Boost win contest",
          style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff4618a2)),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 88,
            width: 281,
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), // No curve for the top-left
                topRight: Radius.circular(30), // No curve for the top-right
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
                      color: Color(0xff4618a2),
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
                        ),
                        Text(
                          "250",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
                        ),
                        Spacer(),
                        Text(
                          "100+ winners",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
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
                              color: Color(0xffffe800)),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹35,000",
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage("assets/timeleft.png"))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹ 150",
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Pricelist: 1 to 70 members -",
                        style: GoogleFonts.montserrat(
                            fontSize: 7,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff4618a2)),
                      ),
                      Text(
                        "₹500",
                        style: GoogleFonts.roboto(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4618a2),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 88,
            width: 281,
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), // No curve for the top-left
                topRight: Radius.circular(30), // No curve for the top-right
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
                      color: Color(0xff4618a2),
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
                        ),
                        Text(
                          "250",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
                        ),
                        Spacer(),
                        Text(
                          "100+ winners",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
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
                              color: Color(0xffffe800)),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹70,000",
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage("assets/timeleft.png"))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹ 300",
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Pricelist: 1 to 70 members -",
                        style: GoogleFonts.montserrat(
                            fontSize: 7,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff4618a2)),
                      ),
                      Text(
                        "₹1000",
                        style: GoogleFonts.roboto(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4618a2),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 88,
            width: 281,
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), // No curve for the top-left
                topRight: Radius.circular(30), // No curve for the top-right
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
                      color: Color(0xff4618a2),
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
                        ),
                        Text(
                          "250",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
                        ),
                        Spacer(),
                        Text(
                          "100+ winners",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
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
                              color: Color(0xffffe800)),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹1,05,000",
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage("assets/timeleft.png"))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹ 450",
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Pricelist: 1 to 70 members -",
                        style: GoogleFonts.montserrat(
                            fontSize: 7,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff4618a2)),
                      ),
                      Text(
                        "₹1500",
                        style: GoogleFonts.roboto(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4618a2),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Super win contest",
          style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff4618a2)),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 88,
            width: 281,
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), // No curve for the top-left
                topRight: Radius.circular(30), // No curve for the top-right
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
                      color: Color(0xff4618a2),
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
                        ),
                        Text(
                          "180",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
                        ),
                        Spacer(),
                        Text(
                          "100+ winners",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
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
                              color: Color(0xffffe800)),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹50,000",
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage("assets/timeleft.png"))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹ 300",
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Pricelist: 1 to 40 members -",
                        style: GoogleFonts.montserrat(
                            fontSize: 7,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff4618a2)),
                      ),
                      Text(
                        "₹1250",
                        style: GoogleFonts.roboto(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4618a2),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 88,
            width: 281,
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), // No curve for the top-left
                topRight: Radius.circular(30), // No curve for the top-right
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
                      color: Color(0xff4618a2),
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
                        ),
                        Text(
                          "180",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
                        ),
                        Spacer(),
                        Text(
                          "100+ winners",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
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
                              color: Color(0xffffe800)),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹80,000",
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage("assets/timeleft.png"))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹ 500",
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Pricelist: 1 to 40 members -",
                        style: GoogleFonts.montserrat(
                            fontSize: 7,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff4618a2)),
                      ),
                      Text(
                        "₹2000",
                        style: GoogleFonts.roboto(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4618a2),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 88,
            width: 281,
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), // No curve for the top-left
                topRight: Radius.circular(30), // No curve for the top-right
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
                      color: Color(0xff4618a2),
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
                        ),
                        Text(
                          "180",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
                        ),
                        Spacer(),
                        Text(
                          "100+ winners",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
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
                              color: Color(0xffffe800)),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹1,10,000",
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage("assets/timeleft.png"))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹ 700",
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Pricelist: 1 to 40 members -",
                        style: GoogleFonts.montserrat(
                            fontSize: 7,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff4618a2)),
                      ),
                      Text(
                        "₹270",
                        style: GoogleFonts.roboto(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4618a2),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Mega win contest",
          style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff4618a2)),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 88,
            width: 281,
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), // No curve for the top-left
                topRight: Radius.circular(30), // No curve for the top-right
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
                      color: Color(0xff4618a2),
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
                        ),
                        Text(
                          "120",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
                        ),
                        Spacer(),
                        Text(
                          "100+ winners",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
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
                              color: Color(0xffffe800)),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹55,000",
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage("assets/timeleft.png"))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "₹ 2700",
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Pricelist:",
                        style: GoogleFonts.montserrat(
                            fontSize: 7,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff4618a2)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 88,
            width: 281,
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), // No curve for the top-left
                topRight: Radius.circular(30), // No curve for the top-right
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
                      color: Color(0xff4618a2),
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
                        ),
                        Text(
                          "320",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
                        ),
                        Spacer(),
                        Text(
                          "100+ winners",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
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
                              color: Color(0xffffe800)),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage("assets/timeleft.png"))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
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
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Pricelist: 1 to 150 members -",
                        style: GoogleFonts.montserrat(
                            fontSize: 7,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff4618a2)),
                      ),
                      Text(
                        "₹200",
                        style: GoogleFonts.roboto(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4618a2),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 88,
            width: 281,
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), // No curve for the top-left
                topRight: Radius.circular(30), // No curve for the top-right
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
                      color: Color(0xff4618a2),
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
                        ),
                        Text(
                          "320",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
                        ),
                        Spacer(),
                        Text(
                          "100+ winners",
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffe800)),
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
                              color: Color(0xffffe800)),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage("assets/timeleft.png"))),
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
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
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Pricelist: 1 to 150 members -",
                        style: GoogleFonts.montserrat(
                            fontSize: 7,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff4618a2)),
                      ),
                      Text(
                        "₹200",
                        style: GoogleFonts.roboto(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4618a2),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
