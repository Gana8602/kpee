import 'package:android/screens/contest.dart';
import 'package:android/screens/home.dart';
import 'package:android/screens/location.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoScreen11 extends StatefulWidget {
  const LogoScreen11({super.key});

  @override
  State<LogoScreen11> createState() => _LogoScreen11State();
}

class _LogoScreen11State extends State<LogoScreen11> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen12()));
    });
  }

  int currentPage = 0;
  List<Widget> pages = [LogoScreen9(), LogoScreen8()];

  void changePage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.amber,
      body: pages[currentPage],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: CurvedNavigationBar(
              buttonBackgroundColor: Colors.blue,
              backgroundColor: Colors.transparent,
              onTap: (value) {
                setState(() {
                  // currentPage = value;
                });
              },
              items: [
                SvgPicture.asset(
                  "assets/svg/Vector.svg",
                  color: Colors.black,
                ),
                SvgPicture.asset(
                  "assets/svg/token.svg",
                  color: Colors.black,
                ),
              ]),
        ),
      ),
    );
  }
}
