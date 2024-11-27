import 'package:android/screens/spinWheel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen16 extends StatefulWidget {
  const LogoScreen16({super.key});

  @override
  State<LogoScreen16> createState() => _LogoScreen16State();
}

class _LogoScreen16State extends State<LogoScreen16> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen17()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xffffe800), // Background color
          child: Column(
            children: [
              // Top Bar Row
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Back Button Icon
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Icon(
                        Icons.arrow_circle_left_outlined,
                        color: const Color(0xff4618a2),
                        size: 30,
                      ),
                    ),

                    // Coin Balance Container
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
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
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Spacer(), // Spacer to push remaining icons to the right

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
              Container(
                  child: Center(
                child: Text(
                  "Hi, Nirmal",
                  style: TextStyle(
                      fontFamily: "Elan ITF",
                      fontSize: 64,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4618a2)),
                ),
              )),
              Container(
                height: 43,
                width: 87,
                child: Text(
                  "Sorry",
                  style: TextStyle(
                      fontFamily: "Elan ITF",
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      color: Color(0xfff24a20)),
                ),
              ),
              Container(
                height: 29,
                width: 300,
                child: Text(
                  "You Lost Your Lucky Draw",
                  style: TextStyle(
                      fontFamily: "Elan ITF",
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 222,
                width: 352,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/looser.png"))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 200,
                    width: 304,
                    child: Column(
                      children: [
                        Text(
                          "Don't wait ",
                          style: TextStyle(
                              fontFamily: "Elan ITF",
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfffffffff)),
                        ),
                        Text(
                          "Play Again ",
                          style: TextStyle(
                              fontFamily: "Elan ITF",
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffffe800)),
                        ),
                        Text(
                          "Win More ",
                          style: TextStyle(
                              fontFamily: "Elan ITF",
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfffffffff)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 284,
                width: 284,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/play.png"))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
