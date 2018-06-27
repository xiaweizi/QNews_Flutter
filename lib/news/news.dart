import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => new _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('News'),
      ),
      body: new Center(
        child: new Text('News'),
      ),
    );
  }
}
