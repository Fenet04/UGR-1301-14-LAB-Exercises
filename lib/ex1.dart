import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTracker',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('UTracker'),
          leading: Icon(Icons.help),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
      
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
              
              },
            ),
          ],
        ),
        body: Column(
          children: [
            _buildHeader(),
            _buildStatusRow(),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                padding: EdgeInsets.all(16.0),
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: <Widget>[
                  _buildGridItem(Icons.map, 'Map All Devices'),
                  _buildGridItem(Icons.location_on, 'Live Location'),
                  _buildGridItem(Icons.history, 'History Location'),
                  _buildGridItem(Icons.edit_location, 'Set Geofence'),
                  _buildGridItem(Icons.info_outline, 'Detail Info'),
                  _buildGridItem(Icons.edit, 'Edit Device'),
                  _buildGridItem(Icons.phone, 'Change Center Number'),
                  _buildGridItem(Icons.key, 'Disabled Menu'),
                  _buildGridItem(Icons.hourglass_empty, 'Set GPS Time Interval'),
                  _buildGridItem(Icons.restart_alt, 'Restart Device'),
                  _buildGridItem(Icons.battery_charging_full, 'Power Saving Mode'),
                  _buildGridItem(Icons.flash_on, 'Normal Mode'),
                  _buildGridItem(Icons.power_settings_new, 'Shutdown Device'),
                  _buildGridItem(Icons.list, 'Device Command History'),
                  _buildGridItem(Icons.mail, 'Contact Us'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusRow() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    color: Colors.blue, 
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center, 
      children: [
        Text(
          'Online | Battery: 90%',
          style: TextStyle(color: Colors.white), 
        ),
      ],
    ),
  );
}


  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage:AssetImage("../assets/macchiato.jpg"),
            // Replace with your image URL
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Robert Steven',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'B 2455 UJD | 7018099100',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
            
            },
            child: Text(
              'Logout',
              style: TextStyle(
              
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            )
            ),
        ],
      ),
    );
  }

  

  Widget _buildGridItem(IconData iconData, String label) {
    return Container(
      decoration: BoxDecoration(
     
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(iconData, size: 40.0, color: Colors.blue),
          SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
