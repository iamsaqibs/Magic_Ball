import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Magic Ball'),
          backgroundColor: Colors.blueAccent,
        ),
        body: MagicBall(),
      ),
    )
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
//            flex: 1,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Ask me anything and tap the ball!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          Expanded(
//            flex: 4,
              child: FlatButton(
                  onPressed: (){
                    setState(() {
                      ballNumber = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/ball$ballNumber.png'),
              ),
          ),
        ],
      ),
    );
  }
}