import 'package:flutter/material.dart';

class Joker extends StatefulWidget {
  @override
  _JokerState createState() => new _JokerState();
}

class _JokerState extends State<Joker> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Joker'),
      ),
      body: new Center(
        child: new Text('Joker'),
      ),
    );
  }
}
