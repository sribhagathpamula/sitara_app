import 'package:flutter/material.dart';

import '../Screens/customer_support_screen.dart';
import '../Screens/profile_screen.dart';
import '../Screens/settings_screen.dart';
import '../Screens/sign_up_page.dart';
import '../Screens/transfer_funds_screen.dart';

class CDrawer extends StatefulWidget {
  const CDrawer({super.key});

  @override
  State<CDrawer> createState() => _CDrawerState();
}

class _CDrawerState extends State<CDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Drawer(
        backgroundColor: Colors.white,
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
                          "Nmae",
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
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
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => ProfileScreen(
                                Email: "",
                                image: '',
                                name: '',
                                userLoggedIn: true,
                              )),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.person_outline),
                          Text(
                            "Profile",
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
                            "Transfer Funds",
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
                            "Setting",
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
                      print("chekcinkg");
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
