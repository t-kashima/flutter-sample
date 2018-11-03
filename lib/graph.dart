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
                    height: 109,
                    margin: const EdgeInsets.only(top: 20, bottom: 8),
                    child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          new Expanded(
                            child: new Column(children: [
                              new Expanded(
                                flex: 7,
                                child: new Container(
                                  alignment: Alignment(0, 1),
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: new Text(
                                    "3",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: MyColors.text,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              new Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: new BoxDecoration(
                                    color: themeData.primaryColor,
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                ),
                              )
                            ]),
                          ),
                          new Expanded(
                            child: new Column(children: [
                              new Expanded(
                                flex: 5,
                                child: new Container(
                                  alignment: Alignment(0, 1),
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: new Text(
                                    "5",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: MyColors.text,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              new Expanded(
                                flex: 5,
                                child: new Container(
                                  decoration: new BoxDecoration(
                                    color: themeData.primaryColor,
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                ),
                              )
                            ]),
                          ),
                          new Expanded(
                            child: new Column(children: [
                              new Expanded(
                                flex: 2,
                                child: new Container(
                                  alignment: Alignment(0, 1),
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: new Text(
                                    "8",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: MyColors.text,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              new Expanded(
                                flex: 8,
                                child: new Container(
                                  decoration: new BoxDecoration(
                                    color: themeData.primaryColor,
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                ),
                              )
                            ]),
                          ),
                          new Expanded(
                            child: new Column(children: [
                              new Expanded(
                                flex: 3,
                                child: new Container(
                                  alignment: Alignment(0, 1),
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: new Text(
                                    "7",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: MyColors.text,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              new Expanded(
                                flex: 7,
                                child: new Container(
                                  decoration: new BoxDecoration(
                                    color: themeData.primaryColor,
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                ),
                              )
                            ]),
                          ),
                          new Expanded(
                            child: new Column(children: [
                              new Expanded(
                                flex: 8,
                                child: new Container(
                                  alignment: Alignment(0, 1),
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: new Text(
                                    "2",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: MyColors.text,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              new Expanded(
                                flex: 2,
                                child: new Container(
                                  decoration: new BoxDecoration(
                                    color: themeData.primaryColor,
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                ),
                              )
                            ]),
                          ),
                          new Expanded(
                            child: new Column(children: [
                              new Expanded(
                                flex: 4,
                                child: new Container(
                                  alignment: Alignment(0, 1),
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: new Text(
                                    "6",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: MyColors.text,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              new Expanded(
                                flex: 6,
                                child: new Container(
                                  decoration: new BoxDecoration(
                                    color: themeData.primaryColor,
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                ),
                              )
                            ]),
                          ),
                          new Expanded(
                            child: new Column(children: [
                              new Expanded(
                                flex: 7,
                                child: new Container(
                                  alignment: Alignment(0, 1),
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: new Text(
                                    "3",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: MyColors.text,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              new Expanded(
                                flex: 3,
                                child: new Container(
                                  decoration: new BoxDecoration(
                                    color: themeData.primaryColor,
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                ),
                              )
                            ]),
                          ),
                          new Expanded(
                            child: new Column(children: [
                              new Expanded(
                                flex: 2,
                                child: new Container(
                                  alignment: Alignment(0, 1),
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: new Text(
                                    "8",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: MyColors.text,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              new Expanded(
                                flex: 8,
                                child: new Container(
                                  decoration: new BoxDecoration(
                                    color: themeData.primaryColor,
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                ),
                              )
                            ]),
                          ),
                          new Expanded(
                            child: new Column(children: [
                              new Expanded(
                                flex: 8,
                                child: new Container(
                                  alignment: Alignment(0, 1),
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: new Text(
                                    "2",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: MyColors.text,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              new Expanded(
                                flex: 2,
                                child: new Container(
                                  decoration: new BoxDecoration(
                                    color: themeData.primaryColor,
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                ),
                              )
                            ]),
                          ),
                          new Expanded(
                            child: new Column(children: [
                              new Expanded(
                                flex: 2,
                                child: new Container(
                                  alignment: Alignment(0, 1),
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: new Text(
                                    "8",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: MyColors.text,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              new Expanded(
                                flex: 8,
                                child: new Container(
                                  decoration: new BoxDecoration(
                                    color: themeData.primaryColor,
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                ),
                              )
                            ]),
                          ),
                          new Expanded(
                            child: new Column(children: [
                              new Expanded(
                                flex: 5,
                                child: new Container(
                                  alignment: Alignment(0, 1),
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: new Text(
                                    "5",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: MyColors.text,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              new Expanded(
                                flex: 5,
                                child: new Container(
                                  decoration: new BoxDecoration(
                                    color: themeData.primaryColor,
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                ),
                              )
                            ]),
                          ),
                          new Expanded(
                            child: new Column(children: [
                              new Expanded(
                                flex: 7,
                                child: new Container(
                                  alignment: Alignment(0, 1),
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: new Text(
                                    "3",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: MyColors.text,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              new Expanded(
                                flex: 3,
                                child: new Container(
                                  decoration: new BoxDecoration(
                                    color: themeData.primaryColor,
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                ),
                              )
                            ]),
                          ),
                        ])),
              ),
              new Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: new Row(children: [
                  new Expanded(
                    child: new Text(
                      "1",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: MyColors.grey[500],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: MyColors.grey[500],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Text(
                      "3",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: MyColors.grey[500],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Text(
                      "4",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: MyColors.grey[500],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Text(
                      "5",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: MyColors.grey[500],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Text(
                      "6",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: MyColors.grey[500],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Text(
                      "7",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: MyColors.grey[500],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Text(
                      "8",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: MyColors.grey[500],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Text(
                      "9",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: MyColors.grey[500],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Text(
                      "10",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: MyColors.grey[500],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Text(
                      "11",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: MyColors.grey[500],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Text(
                      "12",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: MyColors.grey[500],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ]),
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
