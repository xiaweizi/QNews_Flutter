import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primaryColor: Colors.lightBlueAccent),
      home: new Scaffold(
        body: new IndexedStack(
          children: <Widget>[
            new News(),
            new Joker(),
            new Today(),
            new Robot(),
          ],
          index: _currentIndex,
        ),
        bottomNavigationBar: new CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: new Icon(Icons.assignment), title: new Text('新闻')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.insert_emoticon), title: new Text('段子')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.today), title: new Text(' 历史今天')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.face), title: new Text('小爱')),
          ],
          currentIndex: _currentIndex,
          activeColor: Colors.lightBlueAccent,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
