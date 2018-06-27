import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'RandomWords.dart';
import 'home/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'welcome to flutterd1',
      home: new Home(),
      theme: new ThemeData(
        primaryColor: Colors.green,
      ),
    );
  }
}


