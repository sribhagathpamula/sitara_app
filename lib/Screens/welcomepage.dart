import 'package:sitara_app/Screens/home_screen.dart';
import 'package:sitara_app/Screens/sign_up_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                  child: Image.network(
                      "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg")),
            ),
          ),
          Expanded(
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Welcome To Sitara",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Column(
                  children: [
                    Text("Order Food From Ours Kitchen and "),
                    Text("Make Reservation In Real Time"),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Signuppage()));
                  },
                  child: Container(
                      height: 65,
                      width: 65,
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.orange, Colors.red],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(.3),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(0, 1))
                            ]),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
