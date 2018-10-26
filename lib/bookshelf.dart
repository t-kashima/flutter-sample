import 'package:flutter/material.dart';
import 'package:flutter_sample/theme.dart';

class BookshelfPage extends StatefulWidget {
  BookshelfPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _BookshelfPageState createState() => new _BookshelfPageState();
}

class _BookshelfPageState extends State<BookshelfPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: new Text(
                '読みたい本',
                style: new TextStyle(
                  color: themeData.primaryColor,
                  fontSize: 18.0
                ),
              ),
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
