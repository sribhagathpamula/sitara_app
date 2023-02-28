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

import 'package:sitara_app/page/page%204.dart';

import 'package:sitara_app/page/page1.dart';
import 'package:sitara_app/page/page2.dart';
import 'package:sitara_app/page/page3.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'main.dart';

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

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() async {
    // TODO: implement initState  kkk

    final prefs = await SharedPreferences.getInstance();
    final bool? UserLogedin = await prefs.getBool('UserLogedin');
    Timer(Duration(seconds: 3), () {
      UserLogedin!
          ? Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => WelcomePage()))
          : Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => WelcomePage()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ;
    return Container(
     child:drawer(
       Color: Colors.black,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image name logout button code
              Padding(
                padding: const EdgeInsets.only(top: 80.0, left: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      // backgroundImage: NetworkImage(widget.image),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const Text(
                          "welcome",
                          style: TextStyle(color: Colors.black26),
                        ),
                        Text(
                          "Name",
                          style: const TextStyle(
                              color:Colors.black , fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.import_export_sharp,
                      ),
                    )
                  ],
                ),
              ),
              // black line code
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 2,
                  color: Colors.black12,
                ),
              )

              // profile button
              ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    // Navigator.push<void>(
                    //   context,
                    //   MaterialPageRoute<void>(
                    //       builder: (BuildContext context) => ProfileScreen(
                    //             Email: "",
                    //             image: '',
                    //             name: '',
                    //             userLoggedIn: true,
                    //           )),
                    // );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.person_outline),
                          Text(
                            " My Profile",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
// transfer funds
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    // Navigator.push<void>(
                    //   context,
                    //   MaterialPageRoute<void>(
                    //       builder: (BuildContext context) =>
                    //           TransferFundsScreen()),
                    // );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.swap_horiz),
                          Text(
                            "Notification",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),

              // Settings button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute<void>(
                    //       builder: (BuildContext context) => SettingScreen()),
                    // );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.settings),
                          Text(
                            "Settings",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
              // customer support
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    // Navigator.push<void>(
                    //   context,
                    //   MaterialPageRoute<void>(
                    //       builder: (BuildContext context) => const ChatPage()),
                    // );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.headset_mic),
                          Text(
                            "Customer Support",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                Signuppage()),
                        (Route<dynamic> route) => false);
                  },
                  child: InkWell(
                    onTap: () {
                      print("share ur love");
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  Signuppage()),
                          (Route<dynamic> route) => false);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Logout ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Icon(Icons.logout),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

drawer({required Column child}) {
}

        backgroundColor: Colors.black,
        body: Center(
            child: Image.asset(
          'assets/20230227_105904.png',
        )));
  }
}
