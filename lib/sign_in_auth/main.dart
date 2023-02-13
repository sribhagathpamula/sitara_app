import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'SignInScreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const GoogleSignIn());
}

class GoogleSignIn extends StatefulWidget {
  const GoogleSignIn({super.key});
  @override
  _GoogleSignInState createState() => _GoogleSignInState();
}

class _GoogleSignInState extends State<GoogleSignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SignInScreen(),
    );
  }
}
