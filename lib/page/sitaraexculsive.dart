import 'package:sitara_app/Screens/detailspage.dart';
import 'package:flutter/material.dart';

class SitaraExculsive extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<SitaraExculsive> {
  Widget bottonContainer(
      {required String image,
      required int price,
      required String name,
      required String discription}) {
    return Container(
      height: 270,
      width: 220,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            new BoxShadow(color: Colors.black87, blurRadius: 5.0),
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image.asset(image),
            // backgroundImage: AssetImage(image),
          ),
          // CircleAvatar(
          //   radius: 60,
          //   backgroundImage: AssetImage(image),
          // ),
          ListTile(
            leading: Text(
              name,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            trailing: Text(
              "\Rs.$price",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () {
              // Navigator.push(
              //     context,
              //     new MaterialPageRoute(
              //         builder: (context) => new DetailPage()));
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Container(height: 0.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: TextField(
                decoration: InputDecoration(
                    hintText: "Search Food",
                    hintStyle: TextStyle(color: Colors.black),
                    // border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    filled: true,
                    // contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    // enabledBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(10.0),
                    //     borderSide: BorderSide(color: Colors.white, width: 3.0)),
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)))),
          ),
          // Container(
          //   height: 270,
          //   width: 220,
          //   decoration: BoxDecoration(
          //       color: Color(0xff3a3a3e),
          //       borderRadius: BorderRadius.circular(20)),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       CircleAvatar(
          //         backgroundImage: AssetImage('assets/img1.png'),
          //       ),
          //       ListTile(
          //         leading: Text(
          //           "Burger",
          //           style: TextStyle(fontSize: 20, color: Colors.white),
          //         ),
          //         trailing: Text(
          //           "Rs.300",
          //           style: TextStyle(fontSize: 20, color: Colors.white),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 570,
            child: GridView.count(
              shrinkWrap: false,
              primary: false,
              crossAxisCount: 1,
              childAspectRatio: 0.8,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                bottonContainer(
                    image: 'assets/istockphoto-1176401949-612x612.jpg',
                    name: 'Beer with chicken starter',
                    price: 290,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image: 'assets/61rN2hbnphL._SL1350_.jpg',
                    name: 'Kaju Chicken Pakodi with Assorted Beer',
                    price: 240,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image: 'assets/istockphoto-1176401949-612x612.jpg',
                    name: 'Red wine with Buffalo chicken wings',
                    price: 480,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image: 'assets/THESPICYVENUE.jpeg',
                    name: 'Mla Potlam Biriynai with assorted beer',
                    price: 550,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image: 'assets/istockphoto-1178035270-170667a.jpg',
                    name: 'Barcadi with fish n chips',
                    price: 410,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image: 'assets/istockphoto-1202356083-170667a.jpg',
                    name: 'Pizza with Rich Wine',
                    price: 620,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image: 'assets/drink-taco_hero.jpg',
                    name: 'Margarita cocktail and tacos.',
                    price: 470,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image: ' assets/sushi-und-wein.jpeg',
                    name: 'White wine and sushi.',
                    price: 580,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image: 'assets/Toddy-825x510.jpg ',
                    name: 'thati kallu with chicken curry',
                    price: 290,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image:
                        'assets/mystery-meal-on-dining-set-260nw-354344162.jpg.webp ',
                    name: 'Sitara Mysetry drink with starter',
                    price: 390,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
              ],
            ),
          )
        ],
      ),
//       body: Container(
//         child: ListView(
//           children: <Widget>[
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img4.jpg"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                     '      Chicken Breast \n      Bonless(500gms) \n      (2+ pieces) \n       ???. 170.00'),
//                 subtitle: Text(
//                   '        Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: IconButton(
//                   icon: Icon(
//                     Icons.add_shopping_cart,
//                     color: Colors.red,
//                     size: 40,
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         new MaterialPageRoute(
//                             builder: (context) => new OrdersPage()));
//                   },
//                 ),
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       new MaterialPageRoute(
//                           builder: (context) => new DetailPage()));
//                 },
//               ),
//             ),

//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img33.jpg"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                     '      Marinated Hariyali \n      Kabab \n      (500gms) \n      ???. 240.00'),
//                 subtitle: Text(
//                   '       Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: Icon(Icons.add_shopping_cart, color: Colors.red),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img2.jpg"), // no matter how big it is, it won't overflow
//                 ),
//                 //                          leading: ConstrainedBox(
//                 //   constraints: BoxConstraints(
//                 //     minWidth: 44,
//                 //     minHeight: 44,
//                 //     maxWidth: 44,
//                 //     maxHeight: 44,
//                 //   ),
//                 //   child: Image.asset('assets/img1.png', fit: BoxFit.cover),
//                 // ),
//                 title: Text(
//                     '     Marinated Malai \n     Kabab \n     (500gms) \n      ???. 300.00'),
//                 subtitle: Text(
//                   '       Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: Icon(Icons.add_shopping_cart, color: Colors.red),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img1.png"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                     '     Chicken Burger Patty \n     (250gms)\n      ???. 145.00'),
//                 subtitle: Text(
//                   '      Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: Icon(Icons.add_shopping_cart, color: Colors.red),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img33.jpg"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                     '     Marinated Hariyali \n     Kabab \n     (500gms) \n     ???. 240.00'),
//                 subtitle: Text(
//                   '      Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: Icon(Icons.add_shopping_cart, color: Colors.red),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img4.jpg"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                     '     Marinated Hariyali \n     Kabab \n     (500gms) \n     ???. 240.00'),
//                 subtitle: Text(
//                   '      Details',
//                   style: TextStyle(color: Colors.red),
//                   // textAlign: TextAlign.center
//                 ),
//                 trailing: Icon(Icons.add_shopping_cart, color: Colors.red),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img1.png"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                     '     Marinated Hariyali \n     Kabab \n     (500gms) \n     ???. 240.00'),
//                 subtitle: Text(
//                   '      Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: Icon(Icons.add_shopping_cart, color: Colors.red),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img2.jpg"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                   '     Marinated Malai \n     Kabab \n     (500gms) \n     ???. 300.00',
//                 ),
//                 subtitle: Text(
//                   '      Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: Icon(
//                   Icons.add_shopping_cart,
//                   color: Colors.red,
//                 ),
//               ),
//             ),
// //
//           ],
//         ),
//       ),
    );
  }
}
