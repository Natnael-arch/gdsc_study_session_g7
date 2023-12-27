// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class HorizontalScroll extends StatefulWidget {
  const HorizontalScroll(
      {super.key, required this.bookTitle, required this.images});
  final List bookTitle;
  final List images;

  @override
  State<HorizontalScroll> createState() => _HorizontalScrollState();
}

class _HorizontalScrollState extends State<HorizontalScroll> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 150,
              decoration: const BoxDecoration(),
              child: Column(children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            widget.images[index],
                          ),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 4.0,
                            offset: const Offset(0, 10)),
                      ]),
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  widget.bookTitle[index],
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ]),
            ),
          );
        });
  }
}


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List text = ['Health', 'Science', 'History', 'Technology', 'Philosophy'];
  List<Icon> icons = const [
    Icon(Icons.medical_information_sharp),
    Icon(Icons.science),
    Icon(Icons.history_edu),
    Icon(Icons.satellite_alt),
    Icon(Icons.book)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: StyledButton(name: text[index], icon: icons[index]),
        );
      },
    );
  }
}

class StyledButton extends StatelessWidget {
  const StyledButton({super.key, required this.name, required this.icon});
  final String name;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.only(left: 10, right: 20),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.grey[200]),
      child: Row(children: [
        icon,
        const SizedBox(width: 10),
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
          ),
        )
      ]),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'GDSC BOOKSTORE',
            style: TextStyle(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: const Icon(
            Icons.sort,
            size: 30,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Looking for . . .',
                            hintStyle: const TextStyle(fontSize: 17),
                            suffixIcon: const Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.black,
                            ),
                            filled: true,
                            border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0, right: 15, top: 10),
                  padding: EdgeInsets.only(left: 15.0, right: 15, top: 10),
                  width: 300,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Today a reader, ',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Tomorrow a leader',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.bookmark,
                            color: Colors.white,
                            size: 30,
                          ),
                          Icon(
                            Icons.share,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 20),
                const Text(
                  'Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 60,
                  child: Categories(),
                ),

                // Recommend1ation
                const SizedBox(height: 10),
                const Text(
                  'Recommended',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                
                SizedBox(
                  height: 100,
                  child: ListView(
                    children: [HorizontalScroll(
                      bookTitle: [
                        'Papillion Based On true Stroy',
                        'Yabede Kassa Novel',
                        'Rich Dad Poor Dad Ro. T',
                        'Piyasa muhamud Ga Tebking',
                        'Born a crime by Trevor Noha'
                      ],
                      images: [
                        'assets/images/cover1.webp',
                        'assets/images/cover2.webp',
                        'assets/images/cover3.webp',
                        'assets/images/cover4.webp',
                        'assets/images/cover5.webp'
                      ],
                    ),],
                  ),
                ),

                // New
                const SizedBox(height: 20),
                const Text(
                  'New',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 100,
                  child: HorizontalScroll(
                    bookTitle: [
                      'The Psychology of Money',
                      'Thinking, Fast and Slow',
                      'Immortal India',
                      'The Chronicles Of Narnia',
                      'J.R.R. TOLKIEN',
                      'The Subtle Art of Not Giving a F*ck'
                    ],
                    images: [
                      'assets/images/New1.webp',
                      'assets/images/New2.webp',
                      'assets/images/New3.webp',
                      'assets/images/New4.webp',
                      'assets/images/New5.webp',
                      'assets/images/New6.webp',
                    ],
                  ),
                ),

                // Trending
                const SizedBox(height: 20),
                const Text(
                  'Trending',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 100,
                  child: HorizontalScroll(
                    bookTitle: [
                      'Mere Christianity',
                      'Company Of One',
                      'Milk and Honey',
                      'Matt Ridly',
                    ],
                    images: [
                      'assets/images/trending1.webp',
                      'assets/images/trending2.webp',
                      'assets/images/trending3.webp',
                      'assets/images/trending4.webp',
                    ],
                  ),
                ),
                ],
            ),
          ),
        ),

        
        bottomNavigationBar: BottomNavigationBar(
          
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book_outlined,
                color: Colors.black,
              ),
              label: 'Books',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                color: Colors.black,
              ),
              label: 'BookMark',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'Person',
            ),
            
          ],
         
        )
      ),
    );
  }
}
