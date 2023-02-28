import 'package:flutter/material.dart';
// navigation and color should be altered

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/food1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Food Item Name',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Price: \₹5.00',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Decrease quantity
                              },
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey[200],
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '1',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                // Increase quantity
                              },
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey[200],
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total: \₹5.00',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
  onPressed: () {
    // Proceed to checkout
  },
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
  ),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Text(
      'Proceed to checkout',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  ),
),

            ],
          ),
        ),
      ),
    );
  }
}
