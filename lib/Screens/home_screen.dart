import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sitara_app/Screens/cartpage.dart';
import 'package:sitara_app/Screens/checkout_screen.dart';
import 'package:sitara_app/Screens/orderspage.dart';
import 'package:sitara_app/Screens/settings_screen.dart';
import 'package:sitara_app/Screens/sign_up_page.dart';
import 'package:sitara_app/main.dart';
import 'package:sitara_app/page/sitaraexculsive.dart';

import 'package:sitara_app/page/Breakfast.dart';
import 'package:sitara_app/page/Dinner.dart';
import 'package:sitara_app/page/refreshments.dart';
import 'package:flutter/material.dart';
import 'package:sitara_app/widgets.dart/chatmessages.dart';
import 'package:sitara_app/widgets.dart/drawer.dart';

import '../CartFunction.dart';
import '../page/all.dart';
import 'customer_support_screen.dart';

class Sitara extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: CDrawer(),
        appBar: AppBar(
          automaticallyImplyLeading: true,
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
                Icons.shopping_cart_checkout,
                size: 30,
              ),




              onPressed: () {
                // cart pages here
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckoutPage(Items: AddTocart.,)));
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
          title: const Text("Sitara"),
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
