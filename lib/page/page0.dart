import 'package:sitara_app/Screens/detailspage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sitara_app/widgets.dart/chatmessages.dart';

class All extends StatefulWidget {
  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  List imagesString = [
    "assets/poori-masala-kizhangu.jpg",
    "assets/poori-masala-kizhangu.jpg",
    'assets/kebab-e-murgh-chicken-kabab-marinated-yogurt-cumin-sauce-kebab-e-murgh-chicken-kabab-marinated-yogurt-cumin-sauce-118567640.jpg',
    'assets/burger-vs-sandwhich.jpg',
    'assets/istockphoto-1305452646-170667a.jpg',
    'assets/burger-vs-sandwhich.jpg',
    "assets/poori-masala-kizhangu.jpg",
  ];

  Widget bottonContainer(
      {required String image,
      required int price,
      required String name,
      required String discription}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15.0, // soften the shadow
              spreadRadius: 5.0, //extend the shadow
              offset: Offset(
                5.0, // Move to right 5  horizontally
                5.0, // Move to bottom 5 Vertically
              ),
            ),

            // BoxShadow(color: Colors.black87, blurRadius: 5.0),
          ],
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(
                            image: image,
                            name: name,
                            price: price,
                            discription: discription,
                          )));
            },
            child: Container(
              height: 430,
              alignment: Alignment.bottomCenter,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 5  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  leading: Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Text(
                    "\Rs.$price",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
            ),
            // child: Container(
            //   child: ClipRRect(
            //     child: Image.asset(
            //       image,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
          ),

          // Container(
          //   width: 50,
          //   child: IconButton(
          //     icon: Icon(
          //       Icons.shopping_cart_checkout,
          //     ),
          //     onPressed: () {
          //       // Navigator.push(
          //       //     context,
          //       //     new MaterialPageRoute(
          //       //         builder: (context) => new DetailPage()));
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Container(height: 0.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: TextField(
                decoration: InputDecoration(
                    hintText: "Search Food",
                    hintStyle: const TextStyle(color: Colors.black),
                    // border: OutlineInputBorder(),
                    prefixIcon: const Icon(
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
          //         backgroundImage: AssetImage(
          //             'assets/chicken-fried-rice-fast-food-style-recipe.png'),
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 590,
            child: GridView.count(
              shrinkWrap: false,
              primary: false,
              crossAxisCount: 1,
              childAspectRatio: 0.8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(
                  height: 250,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 300,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.4,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [0, 1, 2, 3, 4].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(color: Colors.amber),
                            child: ClipRRect(
                              child: Image.asset(
                                imagesString[i],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                bottonContainer(
                    image: 'assets/poori-masala-kizhangu.jpg',
                    name: 'Poori Masala',
                    price: 70,
                    discription:
                        "Poori Masala is a South Indian dish of curried  potatoes made to serve as a side with poori, an indian fried bread. Poori masala also known as poori curry is made with boiled potatoes, onions, tomatoes, whole species and curry leaves. surprisingly this is one of those dishes made with minimum spices yet it tastes super delicious and flavorsome. so sitara provides u the best poori masala."),
                bottonContainer(
                    image:
                        'assets/kebab-e-murgh-chicken-kabab-marinated-yogurt-cumin-sauce-kebab-e-murgh-chicken-kabab-marinated-yogurt-cumin-sauce-118567640.jpg',
                    name: 'Chicken Dejaj Kebab',
                    price: 220,
                    discription:
                        "Chicken Kebab recipe - Make the best delicious, soft , succulent & flavorful chicken kebabs at sitara. Kebab is a piece of food, mostly meat grilled over charcoal fire. There are so many Kebab varieties out there which are very popular in the sitara dinein and Takeaways. One of the Satisified dish with beer."),
                bottonContainer(
                    image: 'assets/istockphoto-1305452646-170667a.jpg',
                    name: 'Chicken Biriyani',
                    price: 195,
                    discription:
                        "Chicken Pieces marinated with a blend of species, layered with the finest basmati rice and dum cooked with safroon an d ghee. Smells like paradise and tastes like heaven exculsively in Sitara."),
                bottonContainer(
                    image: 'assets/burger-vs-sandwhich.jpg',
                    name: 'Burger & Sandwich',
                    price: 160,
                    discription:
                        "Classic Burger with Lettuce, onions,tomatoes & yummy crispy chicken patty filled in with our secret home made mayonnaise between freshly baked hand made buns...Food for the soul.... Temptations will be satisified in Sitara."),
                bottonContainer(
                    image: 'assets/52416693.cms.webp',
                    name: 'Pav Bhaji & Chat Specials',
                    price: 80,
                    discription:
                        "Buttery toasted Pav(2 pieces) served with mashed vegetables cooked in butter & in-house blend of pav bhaji masala accompamied with chopped onions and a wedge of lime.......Taste the real pav bhaji at the Sitara exculsive."),
                bottonContainer(
                    image: 'assets/pizza-3007395__480.jpg',
                    name: 'Pizza',
                    price: 140,
                    discription:
                        "You Name It and we load it! A pizza Baked with Tomato sauce,Mozzarella Cheese,Capsicum,Onion,Tomato,Jalapeno and Olives(Served with complimentary Garlic oil)....and you can customize ur pizza with different add on's panner , mushroom , chicken , bbq chicken etc at ur favorite sitara"),
                bottonContainer(
                    image:
                        'assets/different-types-mojito-cocktail-dark-brown_93675-16775.jpg.webp',
                    name: 'Mojitos',
                    price: 110,
                    discription:
                        "Mojitos are bubbly rum cocktails that taste minty-fresh, citrusy and a little sweet. Club soda stretches out the flavors to create an afternoon-worthy sipper. Mojitos are ultra refreshing on warm days, and I feel like I’m on vacation every time I get my hands on one..... Taste the best and refreshing mojitos at the sitara(with alcohol or non-alcohol)"),
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
