import 'package:bookstoreapp/main.dart';
import 'package:flutter/material.dart';
import 'package:bookstoreapp/bookdetail.dart';

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
                InkWell(
                  child: Container(
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
                  onTap: () {
                    print(widget.images[index]);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(
                            text: widget.bookTitle[index],
                            imageIndex: widget.images[index]),
                      ),
                    );
                  },
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
