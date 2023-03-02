import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sitara_app/Screens/home_screen.dart';
import 'package:sitara_app/Screens/orderspage.dart';
import 'package:sitara_app/Screens/privacypage.dart';
import 'package:sitara_app/Screens/settings_screen.dart';
import 'package:sitara_app/Screens/sign_up_page.dart';
import 'package:sitara_app/Screens/termspage.dart';
import 'package:sitara_app/Screens/welcomepage.dart';
import 'package:sitara_app/main.dart';
import 'package:sitara_app/main.dart';
import 'package:sitara_app/main.dart';

import 'package:sitara_app/page/all.dart';

import 'package:sitara_app/page/breakfast.dart';
import 'package:sitara_app/page/Dinner.dart';
import 'package:sitara_app/page/refreshments.dart';
import 'package:flutter/material.dart';

// import 'main.dart';
// import 'main.dart';
// import 'main.dart';
// import 'main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'Sitara';

  @override
  Widget build(BuildContext context) {
    // Obtain shared preferences.

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        home: SplashScreen());
    // home: HomePage());
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

void loginState(BuildContext context) async {
  final prefs = await SharedPreferences.getInstance();
  final bool? UserLogedin = await prefs.getBool('UserLogedin') ?? false;
  UserLogedin!
      ? Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => Sitara()))
      : Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => WelcomePage()));
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      loginState(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ;
    return Container(
        child: Center(
            child: Image.asset(
      'assets/20230227_105904.png',
    )));
  }
}
