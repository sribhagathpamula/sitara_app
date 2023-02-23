import 'package:sitara_app/Screens/orderspage.dart';
import 'package:sitara_app/Screens/settings_screen.dart';
import 'package:sitara_app/page/page%204.dart';

import 'package:sitara_app/page/page1.dart';
import 'package:sitara_app/page/page2.dart';
import 'package:sitara_app/page/page3.dart';
import 'package:flutter/material.dart';

import '../page/page0.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
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
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
              unselectedLabelColor: Colors.yellowAccent,
              indicatorPadding: const EdgeInsets.only(left: 30, right: 30),
              indicator: ShapeDecoration(
                  color: Colors.redAccent,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(
                        color: Colors.redAccent,
                      ))),
              tabs: const [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("All"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Break fast"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Dinner"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Refreshments"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Sitara Exculsive"),
                  ),
                ),
              ]),
          title: const Text("Home Page"),
        ),
        body: TabBarView(
          children: [
            Page0(),
            Page1(),
            Page2(),
            Page3(),
            Page4(),
          ],
        ),
      ),
    );
  }
}
