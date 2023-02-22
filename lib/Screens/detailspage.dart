import 'package:flutter/material.dart';

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
                    color: Colors.deepOrangeAccent,
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
        // '\n \n मिसळ पाव कडधान्यांची रस्सा असलेली उसळ, पोहे, त्यावर भेळ व फरसाण फरसाण घालून पावासोबत खाल्ला जात असलेला पदार्थ. हा पदार्थ तसा आधुनिक पाककृती आहे. परंतु मसालेदार चव व सहजतेने उपलब्धता यामुळे प्रसिद्ध आहे. यात कोल्हापूरी मिसळ, पुणेरी मिसळ,नाशिक मिसळ, दही मिसळ,नादखुळा मिसळ,गुजराती मिसळ,फराळी मिसळ इत्यादी प्रकारही केले जातात.',
        softWrap: true,
      ),
    );

    Widget buttonsection = Container(
      padding: const EdgeInsets.all(5),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.red,
        child: Text('Add To Cart'),
        onPressed: () {},
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: new Text(widget.name),
      ),
      body: ListView(
        children: [
          Image.asset(
            widget.image,
            width: 500,
            height: 250,
            fit: BoxFit.fill,
          ),
          titleSection,
          textSection,
          buttonsection,
        ],
      ),
    );
  }

  RaisedButton(
      {required Color textColor,
      required MaterialColor color,
      required Text child,
      required Null Function() onPressed}) {}
}
