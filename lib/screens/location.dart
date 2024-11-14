import 'package:flutter/material.dart';

class LogoScreen8 extends StatefulWidget {
  const LogoScreen8({super.key});

  @override
  State<LogoScreen8> createState() => _LogoScreen8State();
}

class _LogoScreen8State extends State<LogoScreen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("What is your location"),
            Text(
                "We need to know your location in order to suggest nearby services"),
            Container(
              height: 10,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.amber,
                    labelText: "Allow Location Access",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
