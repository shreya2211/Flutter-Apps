import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[800],
        appBar: AppBar(
          backgroundColor: Colors.pink[900],
          title: Text('Dicee'),
          centerTitle: true,
        ),
        body: DiceApp(),
      ),
    ));

class DiceApp extends StatefulWidget {
  @override
  _State createState() => _State();
}



class _State extends State<DiceApp> {
  int leftnumber = 1;
    int rightnum = 1;
    void change()
{
  setState(() {
    rightnum=Random().nextInt(6)+1;
    leftnumber=Random().nextInt(6)+1;
  }); 
}
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                change();
                print('left buttonnn');
              },
              child: Image.asset('image/dice-six-faces$leftnumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
               change();
                print('right butttttonnnnn $rightnum');
              },
              child: Image.asset('image/dice-six-faces$rightnum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
