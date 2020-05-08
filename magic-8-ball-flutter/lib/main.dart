import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magic 8 Ball"),
        backgroundColor: Colors.indigo,
      ),
      body: Ball(),
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNb = 1;

  void changeImage(){
    setState(() {
      ballNb = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      child: FlatButton(
        onPressed: (){
          changeImage();
        },
        child: Center(
          child: Image.asset("images/ball$ballNb.png"),
        ),
      ),
      duration: Duration(seconds: 1),
    );
  }
}
