import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey[600],
          appBar: AppBar(
            title: Text('Ask Anything'),
            backgroundColor: Colors.grey[800],
          ),
          body: AskAnything(),
        ),
      ),
    );

class AskAnything extends StatefulWidget {
  @override
  _AskAnythingState createState() => _AskAnythingState();
}

class _AskAnythingState extends State<AskAnything> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                num = Random().nextInt(5) + 1;
              });
            },
            padding: EdgeInsets.all(20),
            child: Image.asset('image/ball$num.png'),
          ),
        ),
      ],
    )
    );
  }
}
