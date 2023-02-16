import 'package:flutter/material.dart';

class Befo extends StatefulWidget {
  const Befo({super.key});

  @override
  State<Befo> createState() => _BefoState();
}

class _BefoState extends State<Befo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            child: Center(
                child: Image.network(
                    "https://cdn.britannica.com/44/11344-050-9456729E/Che-Guevara.jpg")),
          ),
        ),
        Expanded(
            child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
              Text(
                "Welcome To SITARA EXCULSIVE",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ]))),
      ],
    ));
  }
}
