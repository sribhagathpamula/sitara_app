import 'dart:async';
// adding commet  adding for computer 1
import 'package:firebase_core/firebase_core.dart';
import 'package:sitara_app/Screens/home_screen.dart';
import 'package:sitara_app/Screens/orderspage.dart';
import 'package:sitara_app/Screens/privacypage.dart';
import 'package:sitara_app/Screens/settings_screen.dart';
import 'package:sitara_app/Screens/termspage.dart';
import 'package:sitara_app/Screens/welcomepage.dart';
import 'package:sitara_app/homepage.dart';
import 'package:sitara_app/page/page%204.dart';
import 'package:sitara_app/page/page0.dart';
import 'package:sitara_app/page/page1.dart';
import 'package:sitara_app/page/page2.dart';
import 'package:sitara_app/page/page3.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'Sitara';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        // home: SplashScreen());
        home: HomePage());
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => WelcomePage())));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Container(child: Text("Welcome to Sitara"))));
  }
}
