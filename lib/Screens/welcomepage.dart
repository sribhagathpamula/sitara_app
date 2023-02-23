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
                      "https://i.pinimg.com/736x/db/6c/1e/db6c1ea48d8fa43f73d3bdab38f9cc8e.jpg")),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(32),
            decoration: const BoxDecoration(
              image: NetworkImage(
                'https://www.itl.cat/pngfile/big/321-3215719_star.jpg')),

            ),
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
                    Text("A IVAGRAHB MEMORY")
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
