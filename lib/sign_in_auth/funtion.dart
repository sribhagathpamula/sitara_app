// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// import 'homepage.dart';

// final FirebaseAuth auth = FirebaseAuth.instance;
//!from here to for google signin button
// Future<void> signup(BuildContext context) async {
//   final GoogleSignIn googleSignIn = GoogleSignIn();

//   final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
//   if (googleSignInAccount != null) {
//     final GoogleSignInAuthentication googleSignInAuthentication =
//         await googleSignInAccount.authentication;
//     final AuthCredential authCredential = GoogleAuthProvider.credential(
//         idToken: googleSignInAuthentication.idToken,
//         accessToken: googleSignInAuthentication.accessToken);

//     // Getting users credential
//     UserCredential result = await auth.signInWithCredential(authCredential);
//     User? user = result.user;
//     print(user);

//     Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//             builder: (context) => HomePage(
//                   user: user,
//                 )));
//   }
// }
//! here 

//!from here to for  signin button
// Future signInWithEmailAndPassword({
//   required String email,
//   required String password,
// }) async {
//   try {
//     final userCredential = await auth.signInWithEmailAndPassword(
//       email: email,
//       password: password,
//     );

//     return (userCredential.user);
//   } on FirebaseAuthException catch (e) {
//     throw (e);
//   }
// }
//!f signin button
// @override

//!from here to for create user signup button
// Future createUserWithEmailAndPassword({
//   required String email,
//   required String password,
// }) async {
//   try {
//     final userCredential = await auth.createUserWithEmailAndPassword(
//       email: email,
//       password: password,
//     );

//     return auth.currentUser;
//   } on FirebaseAuthException catch (e) {
//     throw (e);
//   }
// }
//!signup button
