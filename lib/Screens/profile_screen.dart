import 'package:sitara_app/widgets.dart/drawer.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  String name, Email, image;
  late bool userLoggedIn;
  ProfileScreen(
      {required this.name,
      required this.Email,
      required this.image,
      required bool userLoggedIn});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  var gender;

  @override
  void initState() {
    super.initState();
    namecontroller.text = widget.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CDrawer(),
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              const CircleAvatar(
                  radius: 70,
                  backgroundImage:
                      AssetImage("assets/P4-JAN-iStock-1432854572.jpg")),
              Positioned(
                left: 90,
                right: 0,
                top: 0,
                bottom: 100,
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(90))),
                    child: const Icon(Icons.edit)),
              ),
            ],
          ),
          Container(
            width: 350,
            child: const Text(
              "Name on Card",
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            child: TextFormField(
              controller: namecontroller,
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.edit),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            child: const Text(
              "EMAIL ID",
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            child: TextFormField(
              controller: emailcontroller,
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.email),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.blue),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 3, color: Color.fromARGB(255, 14, 15, 14)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            child: const Text(
              "DATE OF BIRTH",
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            child: TextFormField(
              controller: namecontroller,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                    onTap: () {},
                    child: const Icon(Icons.calendar_month_outlined)),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.blueGrey),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (() {}),
            child: Container(
              width: 350,
              child: const Text(
                "GENDER",
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              RadioListTile(
                title: Text("Male"),
                value: "male",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text("Female"),
                value: "female",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
            ],
          ),
          ElevatedButton(onPressed: () {}, child: Text("save"))
        ]),
      ),
    );
  }
}
