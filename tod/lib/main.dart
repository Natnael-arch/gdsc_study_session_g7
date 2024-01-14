// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tod/pages/firstpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: 390,
          height: 844,
          color: Color.fromRGBO(238, 111, 87, 1),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 483,
                  height: 483,
                  padding:
                      EdgeInsets.only(top: 98, left: 33, bottom: 0, right: 0),
                  child: Image(
                    image: AssetImage(
                        "assets/images/stick-man-painting-on-canvas.png"),
                  ),
                ),
                SizedBox(
                  width: 256,
                  height: 50,
                  child: FittedBox(
                    child: Builder(
                      builder: (context) {
                        return ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Firstpage()),);
                          },
                          child: Text("Get Started",),
                        );
                      }
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}