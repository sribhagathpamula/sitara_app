import 'package:flutter/material.dart';

class BreakFast extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<BreakFast> {
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
          ListTile(
            leading: Text(
              name,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            trailing: Text(
              "\Rs.$price",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
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
                    image: 'assets/istockphoto-1306083224-170667a.jpg',
                    name: 'Idly',
                    price: 25,
                    discription:
                        "We could call it freshly steamed savory white cakes made from fermented rice and lentil batter for the gora lag...refresh ur morning with best idly at sitara."),
                bottonContainer(
                    image: 'assets/pexels-saveurs-secretes-5560763.jpg',
                    name: 'Dosa',
                    price: 45,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image:
                        'assets/360_F_280407029_4QDsj9xPmv9yFvsGzSH4UnHo680KjlJe.jpg',
                    name: 'Pongal',
                    price: 60,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image:
                        'assets/36155acb0f7245844f6e5ba27031b5a1_featured_v2.jpg.webp',
                    name: 'Kodi Kura & Chitti garee',
                    price: 90,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image: 'assets/maxresdefault.jpg',
                    name: 'Pesarattu & upma',
                    price: 70,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image:
                        'assets/onion-dosa-plain-recipe-finely-chopped-topping-over-which-gives-very-yummy-taste-also-can-be-eaten-195902443.jpg',
                    name: 'Onion Dosa',
                    price: 70,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image:
                        'assets/360_F_189452136_gJBG4ZRXY9NnZZCGV2s8QhObmpeerJTO.jpg',
                    name: 'Masala Dosa',
                    price: 80,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image:
                        'assets/Instant-Rava-Dosa-Recipe-Onion-Rava-Dosa-V1.jpg',
                    name: 'Rava Dosa',
                    price: 80,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image: 'assets/chicken-dosa.jpg',
                    name: 'Chicken Keema Dosa',
                    price: 90,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image:
                        'assets/rice-puri-with-mutton-curry-noorsrecipes.jpeg',
                    name: 'Poori with Mutton Curry',
                    price: 190,
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
//                     '      Chicken Breast \n      Bonless(500gms) \n      (2+ pieces) \n       ₹. 170.00'),
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
//                     '      Marinated Hariyali \n      Kabab \n      (500gms) \n      ₹. 240.00'),
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
//                     '     Marinated Malai \n     Kabab \n     (500gms) \n      ₹. 300.00'),
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
//                     '     Chicken Burger Patty \n     (250gms)\n      ₹. 145.00'),
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
//                     '     Marinated Hariyali \n     Kabab \n     (500gms) \n     ₹. 240.00'),
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
//                     '     Marinated Hariyali \n     Kabab \n     (500gms) \n     ₹. 240.00'),
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
//                     '     Marinated Hariyali \n     Kabab \n     (500gms) \n     ₹. 240.00'),
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
//                   '     Marinated Malai \n     Kabab \n     (500gms) \n     ₹. 300.00',
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
