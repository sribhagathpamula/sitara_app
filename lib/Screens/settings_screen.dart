// import 'dart:html';

// import 'package:sitara_app/widgets.dart/drawer.dart';
// import 'package:flutter/material.dart';

// class SettingScreen extends StatefulWidget {
//   const SettingScreen({super.key});

//   @override
//   State<SettingScreen> createState() => _SettingScreenState();
// }

// class _SettingScreenState extends State<SettingScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Settings",
//           style: TextStyle(color: Colors.white),
//         ),

//         backgroundColor: Colors.black,
//       ),
//       drawer: CDrawer(),
//       body: Center(
//         child: Container(
//           child: Text("setting screen"),
//         ),

//       ),
//     );

//   }
// }
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: new Text("Settings"),
      ),
      body: Container(
        child: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget() : super();

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _notifications = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Notifications'),
      value: _notifications,
      onChanged: (bool value) {
        setState(() {
          _notifications = value;
        });
      },
      secondary: const Icon(Icons.notifications),
    );
  }
}
