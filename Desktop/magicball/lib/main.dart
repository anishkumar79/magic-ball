import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(child: Text('AskMeAnything')),
            backgroundColor: Colors.blue.shade900,
          ),
          body: BigBall(),
        ),
      ),
    );

class BigBall extends StatefulWidget {
  @override
  State<BigBall> createState() => _BigBallState();
}

class _BigBallState extends State<BigBall> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  number = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/ball$number.png'),
            ),
          ),
        ],
      ),
    );
  }
}
