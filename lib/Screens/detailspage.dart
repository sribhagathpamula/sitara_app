import 'package:flutter/material.dart';

import '../CartFunction.dart';

class DetailPage extends StatefulWidget {
  var image;

  var name;

  var price;
  String discription;

  DetailPage(
      {required this.name,
      required this.image,
      required this.price,
      required this.discription});
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 0),
            child: Column(
              children: [
                Text(
                  " ${widget.name} ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                Text(
                  '  Rs. ${widget.price}.00',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 163, 57, 24),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        widget.discription,
        softWrap: true,
      ),
    );

    Widget buttonsection = Container(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        child: Text('Add To Cart'),
        onPressed: () {
          Map<String, dynamic> item = {
            "Itemname": widget.name,
            "ItemPrice": widget.price
          };
          AddTocart(item: item);
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: new Text(widget.name),
      ),
      body: Column(
        children: [
          Image.asset(
            widget.image,
            width: 500,
            height: 250,
            fit: BoxFit.fill,
          ),
          titleSection,
          textSection,
          Container(width: 150, child: buttonsection),
        ],
      ),
    );
  }
}
