import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: BallPage(),
    ));

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade500,
        title: Center(
          child: Text('Ask The Magic Ball Anything'),
        ),
      ),
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.white12,
            child: Icon(Icons.ac_unit),
            onPressed: () {
              setState(() {});
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.white12,
        child: Container(
          height: 75,
        ),
      ),
      body: Ball(),
    );
  }
}

class ButtonAction extends StatefulWidget {
  @override
  _ButtonActionState createState() => _ButtonActionState();
}

class _ButtonActionState extends State<ButtonAction> {
  int buttonNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int magicNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: FlatButton(
              onPressed: () {
                setState(() {
                  magicNumber = Random().nextInt(5) + 1;
                });
                print('Magic Ball Got Pressed');
              },
              child: Image.asset('images/ball$magicNumber.png')),
        ),
      ],
    );
  }
}
