import 'package:flutter/material.dart';
import 'dart:math';

class MyApp2 extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp2> {

  List colors = [Colors.red, Colors.green, Colors.yellow];
  Random random = new Random();

  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(3));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () => changeIndex(),
        child: Text('Click'),
        color: colors[index],
      ),
    );
  }
}