import 'package:flutter/material.dart';
import 'package:sitara_app/Screens/home_screen.dart';
import 'package:sitara_app/Screens/home_screen.dart';
import 'package:sitara_app/Screens/home_screen.dart';

import '../Screens/home_screen.dart';

class ThankYouScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffFFD700), Color(0xffFF8C00)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/thank_you.png',
              width: 200,
            ),
            SizedBox(height: 50),
            Text(
              'Thank you for your order!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Your food is being prepared and will be delivered soon.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                // Navigate back to home screen
                Navigator.popUntil(context, MaterialPageRoute(
                     builder:  (context) => Sitara(
                
                          )) as RoutePredicate);
                // .(route) => Sitara);
              },
              child: Text(
                'Back to Home',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Color(0xffFF8C00),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
