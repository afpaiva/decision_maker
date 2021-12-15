// ignore_for_file: prefer_const_constructors, avoid_print, avoid_unnecessary_containers

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text('Ask Me Anything!'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
            });
            print(ballNumber);
          },
          child: Image.asset('assets/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
