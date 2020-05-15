import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(BallPage());

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Image.asset('images/ball$ballnumber.png'),
      onPressed: () {
        setState(() {
          ballnumber = Random().nextInt(4) + 1;
        });
        print(ballnumber);
      },
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Center(child: Ball()),
      ),
    );
  }
}
