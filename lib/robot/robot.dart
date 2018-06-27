import 'package:flutter/material.dart';

class Robot extends StatefulWidget {
  @override
  _RobotState createState() => new _RobotState();
}

class _RobotState extends State<Robot> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Robot'),
      ),
      body: new Center(
        child: new Text('Robot'),
      ),
    );
  }
}
