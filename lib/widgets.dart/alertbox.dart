import 'package:flutter/material.dart';

class Alertbox extends StatefulWidget {
  const Alertbox({super.key});

  @override
  State<Alertbox> createState() => _AlertboxState();
}

class _AlertboxState extends State<Alertbox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
                  child: Center(
                    child: Text(
                      "text",
                      overflow: TextOverflow.visible,
                      style: const TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'Roboto',
                        color: Color(0xFF212121),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("ok"))
              ],
            ),
          ),
        ],
      ),
    );
    // showDialog(
    //   barrierDismissible: false,
    //   context: context,
    //   builder: (BuildContext context) {
    //     return alert;
    //   },
    // );
    // print(e);
  }
}
