import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              'Magic 8 Ball',
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 24),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45, bottom: 15),
              child: Container(
                child: Center(
                  child: Text(
                    'Ask me anything!',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            Ball(),
          ],
        ),
      ),
    );
  }
}

//
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          // This will define what happens when the ball is pressed
          setState(() {
            print('BALL HAS BEEN PRESSED!');
            ballNum = Random().nextInt(5) + 1;
          });
        },
        child: Container(
          child: Image.asset('images/ball$ballNum.png'),
        ),
      ),
    );
  }
}
