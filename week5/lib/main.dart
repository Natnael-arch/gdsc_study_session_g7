// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


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
          leading: Icon(Icons.menu),
          title: Text('Basics'),
          actions: [
            
            Builder(
              builder: (context) {
                return IconButton(
                    onPressed: () {
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
            leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img2.jpg'),
          ),
        ),
            title: Text('Susan lee'),
            subtitle: Text('This is the body of the card.'),
          ),
          ListTile(
              leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img3.jpg'),
          ),
        ),
              title: Text('sara'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img4.jpg'),
          ),
        ),
              title: Text('Micky Pearson'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img5.jpg'),
          ),
        ),
              title: Text('Mr andreson'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img6.jpg'),
          ),
        ),
              title: Text('Tommy'),
              subtitle: Text('This is the body of the card.')),

          ListTile(
              leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img7.jpg'),
          ),
        ),
              title: Text('Dave'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img8.jpg'),
          ),
        ),
              title: Text('helen'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img9.jpg'),
          ),
        ),
              title: Text('Snake Eye'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img13.jpg'),
          ),
        ),
              title: Text('Karon'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img2.jpg'),
          ),
        ),
              title: Text('Dillan'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img3.jpg'),
          ),
        ),
              title: Text('Oly'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img4.jpg'),
          ),
        ),
              title: Text('Famous'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img5.jpg'),
          ),
        ),
              title: Text('Wifiy'),
              subtitle: Text('This is the body of the card.')),
          ListTile(
              leading: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: AssetImage('assets/images/img6.jpg'),
          ),
        ),
              title: Text('James Bond'),
              subtitle: Text('This is the body of the card.')),
        ],
      ),
    );
  }
}