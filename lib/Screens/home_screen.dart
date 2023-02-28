import 'package:firebase_auth/firebase_auth.dart';
import 'package:sitara_app/Screens/orderspage.dart';
import 'package:sitara_app/Screens/settings_screen.dart';
import 'package:sitara_app/Screens/sign_up_page.dart';
import 'package:sitara_app/page/page%204.dart';

import 'package:sitara_app/page/page1.dart';
import 'package:sitara_app/page/page2.dart';
import 'package:sitara_app/page/page3.dart';
import 'package:flutter/material.dart';

import '../page/page0.dart';

class Sitara extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.notifications,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingPage()));
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.logout,
                size: 30,
              ),
              onPressed: () {
                AlertDialog alert = AlertDialog(
                  content: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 200,
                              padding: EdgeInsets.only(right: 13.0),
                              child: const Center(
                                child: Text(
                                  "are you sure want to logout",
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF212121),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  final userCredential = await auth.signOut();
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Signuppage()));
                                },
                                child: Text("ok"))
                          ],
                        ),
                      ),
                    ],
                  ),
                );
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
            ),
          ],
          bottom: const TabBar(
              labelPadding:
                  EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
              unselectedLabelColor: Colors.yellowAccent,
              indicatorPadding: const EdgeInsets.only(left: 10, right: 10),
              // indicator: ShapeDecoration(
              //     color: Colors.redAccent,
              //     shape: BeveledRectangleBorder(
              //         borderRadius: BorderRadius.circular(20),
              //         side: const BorderSide(
              //           color: Colors.redAccent,
              //         ))),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "All",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Break fast",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Dinner",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                Tab(
                  child: Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Refreshments",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Sitara Exculsive",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ]),
          title: const Text("Home Page"),
        ),
        body: TabBarView(
          children: [
            All(),
            BreakFast(),
            Dinner(),
            Refreshments(),
            SitaraExculsive(),
          ],
        ),
      ),
    );
  }
}
