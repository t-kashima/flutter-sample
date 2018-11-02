import 'package:flutter/material.dart';
import 'package:flutter_sample/api/bookstand_api_impl.dart';
import 'package:flutter_sample/book.dart';
import 'package:flutter_sample/model/home.dart';
import 'package:flutter_sample/repository/home_repository_impl.dart';
import 'package:flutter_sample/theme.dart';
import 'package:flutter_sample/ui/book_image.dart';

class GraphPage extends StatefulWidget {
  GraphPage({Key key}) : super(key: key);

  @override
  _GraphPageState createState() => new _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        margin: const EdgeInsets.only(top: 20),
        alignment: Alignment.topCenter,
        child: new Column(children: [new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Container(
              margin: const EdgeInsets.only(right: 20),
              child: Image.asset("assets/ic_drop_down_12.png")
            ),
            new Text(
              '2018年',
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: themeData.primaryColor,
                fontSize: 18.0
              )
            ),
            new Container(
              margin: const EdgeInsets.only(left: 20),
              child: new Image.asset("assets/ic_drop_down_12.png")
            )
            ]
          ),
          new Container(
            child: new Text(
              '2018年',
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: themeData.primaryColor,
                fontSize: 18.0
              )
            )
          )]
        )
      )
    );
  }
}
