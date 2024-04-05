import 'package:flutter/material.dart';

void main() {
  runApp(OrderDetailsApp());
}

class OrderDetailsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order Details',
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
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          OrderStatusSection(),
          Divider(height: 32.0),
          OrderInformationSection(),
          Divider(height: 32.0),
          PurchasedItemsSection(),
          Divider(height: 32.0),
          ShippingInformationSection(),
          Divider(height: 32.0),
          PaymentInformationSection(),
        ],
      ),
    );
  }
}

class OrderStatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        child: Icon(Icons.check, color: Colors.white),
      ),
      title: Text('Completed'),
      subtitle: Text('Order Completed 24 July 2024'),
      trailing: Icon(Icons.check),
    );
  }
}

class OrderInformationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Order ID'),
      subtitle: Text('#524120'),
      isThreeLine: true,
      trailing: Text('20 July 2024, 05:00 PM'),
    );
  }
}

class PurchasedItemsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Purchased Items', style: Theme.of(context).textTheme.subtitle1),
        SizedBox(height: 8.0),
        ItemTile(
          itemName: 'Blue t-shirt',
          itemSize: 'L',
          itemColor: 'Yellow',
          itemPrice: '\$50.00',
          itemQuantity: '1',
          itemAssetPath: 'assets/tshirt.jpg', // Asset path for the image
        ),
        ItemTile(
          itemName: 'Hoodie Rose',
          itemSize: 'L',
          itemColor: 'Yellow',
          itemPrice: '\$50.00',
          itemQuantity: '1',
          itemAssetPath: 'assets/hoodie.jpg', // Asset path for the image
        ),
      ],
    );
  }
}

class ItemTile extends StatelessWidget {
  final String itemName;
  final String itemSize;
  final String itemColor;
  final String itemPrice;
  final String itemQuantity;
  final String itemAssetPath;

  const ItemTile({
    required this.itemName,
    required this.itemSize,
    required this.itemColor,
    required this.itemPrice,
    required this.itemQuantity,
    required this.itemAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(itemAssetPath, width: 50, height: 50),
      title: Text(itemName),
      subtitle: Text('Size: $itemSize\nColor: $itemColor'),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(itemPrice),
          Text('Qty: $itemQuantity'),
        ],
      ),
    );
  }
}

class ShippingInformationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Shipping Information', style: Theme.of(context).textTheme.subtitle1),
        SizedBox(height: 8.0),
        Text('Name'),
        Text('Jacob Jones'),
        SizedBox(height: 4.0),
        Text('Phone Number'),
        Text('(105) 555-3652'),
        SizedBox(height: 4.0),
        Text('Address'),
        Text('61480 Sunbrook Park, PC 5679'),
        SizedBox(height: 4.0),
        Text('Shipment'),
        Text('Economy'),
      ],
    );
  }
}

class PaymentInformationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Payment Information', style: Theme.of(context).textTheme.subtitle1),
        SizedBox(height: 8.0),
        Text('Payment Method'),
        Text('Cash On Delivery'),
      ],
    );
  }
}
