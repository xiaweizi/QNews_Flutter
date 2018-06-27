import 'package:flutter/material.dart';
import 'NavigationIconView.dart';
import 'package:qnews/news/news.dart';
import 'package:qnews/joker/joker.dart';
import 'package:qnews/robot/robot.dart';
import 'package:qnews/today/today.dart';

class Home extends StatefulWidget {
  @override
  createState() => new _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {

  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pages;
  StatefulWidget _currentPage;
  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text('news'),
      ),
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text('news'),
      ),
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text('news'),
      ),
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text('news'),
      ),

    ];

    _pages = <StatefulWidget>[
      new News(),
      new Joker(),
      new Today(),
      new Robot(),
    ];
    _currentPage = _pages[_currentIndex];
  }


  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: _navigationViews.map((view) => view.item).toList(),
      currentIndex: _currentIndex,
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        print("index: $index");
        setState(() {
//          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
//          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pages[_currentIndex];
        });
      },
    );
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: _currentPage,
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}