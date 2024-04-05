import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderDetailsPage(),
    );
  }
}

class OrderDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            
          },
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          StatusCard(),
          SizedBox(height: 16),
          OrderInfoCard(),
          SizedBox(height: 16),
          PurchasedItemsCard(),
          SizedBox(height: 16),
          ShippingInfoCard(),
          SizedBox(height: 16),
          PaymentInfoCard(),
        ],
      ),
    );
  }
}

class StatusCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.check_circle, color: Colors.green),
        title: Text('Completed'),
        subtitle: Text('Order Completed 24 July 2024'),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}

class OrderInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order ID', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('#524120'),
            SizedBox(height: 8),
            Text('Order date', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('20 July 2024, 05:00 PM'),
          ],
        ),
      ),
    );
  }
}

class PurchasedItemsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Purchased Items', style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(
              leading: Image.network('https://via.placeholder.com/50'),
              title: Text('Blue t-shirt'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Size: L'),
                  Text('Color: Yellow'),
                ],
              ),
              trailing: Text('\$50.00'),
            ),
            ListTile(
              leading: Image.network('https://via.placeholder.com/50'),
              title: Text('Hoodie Rose'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Size: L'),
                  Text('Color: Yellow'),
                ],
              ),
              trailing: Text('\$50.00'),
            ),
          ],
        ),
      ),
    );
  }
}

class ShippingInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Shipping Information', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Jacob Jones'),
            SizedBox(height: 8),
            Text('Phone Number', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('(105) 555 555'),
          ]
        )
      )
    )
  }
}
