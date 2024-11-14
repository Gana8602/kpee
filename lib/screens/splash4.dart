import 'package:flutter/material.dart';

import 'sign_up.dart';

class LogoScreen4 extends StatefulWidget {
  const LogoScreen4({super.key});

  @override
  State<LogoScreen4> createState() => _LogoScreen4State();
}

class _LogoScreen4State extends State<LogoScreen4> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoScreen5()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        // child:Center(
        //  child:Text("KPEE",style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold,color: Colors.purple),) ,),

        child: Column(
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
            ]),
      ),
    );
  }
}
