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
            margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
            alignment: Alignment.topCenter,
            child: new Column(children: [
              new Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                new Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Image.asset("assets/ic_drop_down_12.png")),
                new Text('2018年',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: themeData.primaryColor,
                      fontSize: 18.0,
                    )),
                new Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: new Image.asset("assets/ic_drop_down_12.png"))
              ]),
              new Flexible(
                child: new Container(
                  height: 152,
                  decoration: new BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                  margin: const EdgeInsets.only(top: 16, bottom: 30),
                ),
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Flexible(
                      child: new Container(
                        margin: const EdgeInsets.only(right: 6),
                        decoration: new BoxDecoration(
                          color: themeData.primaryColor,
                        ),
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 13,
                          right: 10,
                          bottom: 13,
                        ),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Container(
                              margin: const EdgeInsets.only(bottom: 4),
                              child: new Text(
                                "2018年度",
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                new Text(
                                  "100冊",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                new Text(
                                  "(先月比:+10)",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Flexible(
                      child: new Container(
                        decoration: new BoxDecoration(
                          color: themeData.primaryColor,
                        ),
                        margin: const EdgeInsets.only(left: 6),
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 13,
                          right: 10,
                          bottom: 13,
                        ),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Container(
                              margin: const EdgeInsets.only(bottom: 4),
                              child: new Text(
                                "今月度",
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                new Text(
                                  "100冊",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                new Text(
                                  "(先月比:+10)",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
            ])));
  }
}
