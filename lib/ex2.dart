import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                   
                  },
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Product',
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white.withAlpha(235),
                  ),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.shopping_cart, color: Colors.black),
                    onPressed: () {
                      
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications, color: Colors.black),
                    onPressed: () {
                      
                    },
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Image.asset('assets/bulb.jpg', fit: BoxFit.cover),
                      ),
                      Text(
                        '\$8.6',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'BARDI Smart Light Bulb',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text('RGBW 12W 12 volt Home IoT'),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          _buildIconText(Icons.star_rate, '5.0(354)'),
                          Text("540 sale"),
                          _buildIconText(Icons.gps_fixed, 'Brooklynn'),
                        ],
                      ),
                      SizedBox(height: 20),
                      _buildVariantSection('Size', ['XS', 'S', 'M', 'L', 'XL', 'XXL']),
                      _buildVariantSection('Color', ['Red', 'Black', 'Green', 'White', 'Blue']),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            
                            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          onPressed: () {
                          
                          },
                          child: Text('Add to Shopping Cart'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconText(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 30),
        SizedBox(height: 8),
        Text(text),
      ],
    );
  }

  Widget _buildVariantSection(String title, List<String> options) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('$title:'),
          SizedBox(height: 10),
          Wrap(
            spacing: 8.0,
            children: options.map((option) => Chip(
              label: Text(option),
              backgroundColor: Colors.grey[200],
            )).toList(),
          ),
        ],
      ),
    );
  }
}
