import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Card',
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assest/image/phot3.jpg'),
          ),
          
          Text(
            'Shreya Manoj',
            style: TextStyle(
                color: Colors.white,
                fontSize: 45.0,
                fontFamily: 'zhi Mang Xing'),
          ),
          SizedBox(
            height: 13.0,
          ),
          
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              color: Colors.teal[100],
              fontSize: 20.0,
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.white,
              height: 10.0,
            ),
          ),
          Card(
            color: Colors.white,
              elevation: 20.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.teal),
                  title: Text(
                    '+91-9482588521',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro'),
                  ))),
          Card(
              color: Colors.white,
              elevation: 20,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: ListTile(
                
                  leading: Icon(Icons.mail, color: Colors.teal),
                  title: Text(
                    'smshreyamanoj@gmail.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro'),
                  )))
        ])),
      ),
    );
  }
}
