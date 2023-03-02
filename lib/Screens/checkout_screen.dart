import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({required Items});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Order Summary',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: Text('Pizza'),
              trailing: Text('\₹10.00'),
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: Text('Tandoori'),
              trailing: Text('\₹230.00'),
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: Text('Puri'),
              trailing: Text('\₹70.00'),
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: Text('Burger'),
              trailing: Text('\₹120.00'),
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: Text('Fries'),
              trailing: Text('\₹30.00'),
            ),
            Divider(),
            ListTile(
              leading: Text('Total'),
              trailing: Text('\₹20.00'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Delivery Information',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Phone Number'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Address'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'City'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Postal Code'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Place Order'),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}


// class CheckoutPage extends StatefulWidget {

//   @override
//   // ignore: library_private_types_in_public_api
//   _CheckoutPageState createState({required Items}) => _CheckoutPageState();
// }

// class _CheckoutPageState extends State<CheckoutPage> {
//   @override
//   Widget build(BuildContext context) {
//     return }
// }
