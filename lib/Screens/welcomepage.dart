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
                Container(
                  height: 45,
                  width: 300,
                  color: Colors.green,
                  child: ElevatedButton(
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Signuppage()));
                    },
                    child: Text(
                      "Login Page",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  width: 300,
                  color: Colors.red,
                  child: ElevatedButton(
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => HomePage()));
                      //signup screen
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }

  RaisedButton(
      {required MaterialColor color,
      required RoundedRectangleBorder shape,
      required Null Function() onPressed,
      required Text child}) {}
}
