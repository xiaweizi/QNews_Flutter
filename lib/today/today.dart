import 'package:flutter/material.dart';

class Today extends StatefulWidget {
  @override
  _TodayState createState() => new _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Today', style: new TextStyle(color: Colors.white)),
      ),
      body: new Center(
        child: new Text('Today'),
      ),
    );
  }
}
