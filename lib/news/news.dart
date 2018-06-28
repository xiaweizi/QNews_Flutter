import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'news_data.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => new _NewsState();
}

final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
    new GlobalKey<RefreshIndicatorState>();

class _NewsState extends State<News> {
  List<String> data = <String>[
    '1',
    '2',
    '3',
    '4',
    '1',
    '2',
    '3',
    '4',
    '1',
    '2',
    '3',
    '4',
    '1',
    '2',
    '3',
    '4',
    '1',
    '2',
    '3',
    '4',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('News'),
      ),
      body: new RefreshIndicator(
          key: _refreshIndicatorKey,
          color: Colors.red,
          child: new ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return new Column(
                  children: <Widget>[
                    new ListTile(
                      title: new Text(data[index]),
                      leading: new CircleAvatar(
                        child: new Text('${index + 1}'),
                        backgroundColor: Colors.red,
                      ),
                    ),
                    new Divider(
                      height: 2.0,
                    )
                  ],
                );
              }),
          onRefresh: _handleRefresh),
    );
  }

  Future<Null> _handleRefresh() async {
    _getData();
    return null;
  }

  void _getData() async {
    print('getData');
    await http.get('https://v.juhe.cn/toutiao/index?key=d78b502268f7456b79fbe7228cecdd46&type=top').then((http.Response response) {
      Map data = json.decode(response.body);
      List bean = data['result']['data'];
      return bean.map((model) {
        return new NewsBean.fromJson(model);
      }).toList();
    })
    .catchError((error){
      print('---${error.toString()}');
    });
  }
}
