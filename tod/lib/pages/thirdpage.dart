// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Thirdpage extends StatelessWidget {
  const Thirdpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Task detail",
            style: TextStyle(color: Colors.red[300]),
          )),
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.red[300],
          ),
          // ignore: prefer_const_literals_to_create_immutables,
          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 41, right: 16, bottom: 16, top: 0),
              child: Container(
                width: 309,
                height: 309,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/shopping-list.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 0, right: 0,bottom: 0),
              child: Text(
                "Title",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your title",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
Padding(
              padding: const EdgeInsets.only(left: 20, top: 0, right: 0,bottom: 0),
              child: Text(
                "Description",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your Description",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 0, right: 0,bottom: 0),
              child: Text(
                "Deadline",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your Date",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
