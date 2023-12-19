// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:proj/main.dart';

void main() {
  runApp(firstpage());
}

class firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basics'),
          actions: [
            Builder(
              builder: (context) {
                return IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    icon: Icon(Icons.exit_to_app));
              }
            )
          ],
        ),
        body: MyCard(),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.mark_chat_read),
            title: Text('Susan lee'),
            subtitle: Text('This is the body of the card.'),
          ),
          ListTile(
              leading: Icon(Icons.account_box_rounded),
              title: Text('sara'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: Icon(Icons.abc),
              title: Text('Micky Pearson'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: Icon(Icons.account_balance_wallet_outlined),
              title: Text('Mr andreson'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: Icon(Icons.accessible_forward),
              title: Text('Tommy'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: Icon(Icons.accessibility_outlined),
              title: Text('Dave'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: Icon(Icons.add_reaction_sharp),
              title: Text('helen'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: Icon(Icons.safety_check),
              title: Text('Snake Eye'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: Icon(Icons.backpack),
              title: Text('Karon'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: Icon(Icons.ads_click),
              title: Text('Dillan'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: Icon(Icons.oil_barrel),
              title: Text('Oly'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: Icon(Icons.one_k),
              title: Text('Famous'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: Icon(Icons.signal_wifi_0_bar),
              title: Text('Wifiy'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: Icon(Icons.gamepad),
              title: Text('James Bond'),
              subtitle: Text('This is the body of the card.')),
        ],
      ),
    );
  }
}
