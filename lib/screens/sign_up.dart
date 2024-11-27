import 'package:android/screens/login.dart';
import 'package:android/service/register_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'splash1.dart';

class LogoScreen5 extends StatefulWidget {
  const LogoScreen5({super.key});

  @override
  State<LogoScreen5> createState() => _LogoScreen5State();
}

class _LogoScreen5State extends State<LogoScreen5> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen6()));
    });
  }

  final TextEditingController Namecontroller = TextEditingController();
  final TextEditingController Emailcontroller = TextEditingController();
  final TextEditingController Phonecontroller = TextEditingController();
  final TextEditingController Refferalcodecontroller = TextEditingController();
  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0xff4618A2),
              image: DecorationImage(
                image: AssetImage("assets/img4.png"),
                opacity: 0.2,
                fit: BoxFit.cover,
              )),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img2.png",
                  height: 177,
                  width: 155,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment(-0.5, 0.5),
                  child: Text(
                    "Create Account",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color(
                          0xFFffd500,
                        )),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  alignment: Alignment(-0.4, 0.5),
                  child: Text(
                    "Fill your information below",
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 48,
                    width: 288,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      controller: Namecontroller,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: "Name",
                          labelStyle: TextStyle(
                              color: Color(0xff4618a2),
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 48,
                    width: 288,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      controller: Emailcontroller,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: "Email",
                          labelStyle: TextStyle(
                              color: Color(0xff4618a2),
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 48,
                    width: 288,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      controller: Phonecontroller,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: "Phone",
                          labelStyle: TextStyle(
                              color: Color(0xff4618a2),
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 48,
                    width: 288,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      controller: Refferalcodecontroller,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: "Refferal code",
                          labelStyle: TextStyle(
                              color: Color(0xff4618a2),
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      if (Namecontroller.text.isEmpty) {
                        _showMessage('Name is required');
                      } else if (Phonecontroller.text.isEmpty) {
                        _showMessage('Phone Number is required');
                      } else if (Phonecontroller.text.length < 10 ||
                          Phonecontroller.text.length > 10) {
                        _showMessage(
                            'Please enter a valid 10-digit phone number');
                      } else if (Emailcontroller.text.isEmpty) {
                        _showMessage('Email is required');
                      } else if (!Emailcontroller.text.contains('@') ||
                          !Emailcontroller.text.contains('.')) {
                        _showMessage('Please enter a valid email');
                      } else if (Refferalcodecontroller.text.isNotEmpty &&
                          Refferalcodecontroller.text.length < 4) {
                        _showMessage(
                            'Referral code must be at least 6 characters long');
                      } else {
                        RegisterService().registerUser(
                            name: Namecontroller.text,
                            email: Emailcontroller.text,
                            phone: Phonecontroller.text,
                            code: Refferalcodecontroller.text);
                        // If all validations pass, navigate to the next screen
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => LogoScreen6(),
                        //   ),
                        // );
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 288,
                      decoration: BoxDecoration(
                          color: Color(0xFFffD800),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          "Signup",
                          style: GoogleFonts.montserrat(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Already have a account ?  ",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogoScreen6()),
                        );
                      },
                      child: Text("Sign In",
                          style: GoogleFonts.montserrat(
                              color: Color(0xffffe800),
                              fontWeight: FontWeight.w500,
                              fontSize: 15)),
                    )
                  ],
                ),
              ])),
    );
  }
}
