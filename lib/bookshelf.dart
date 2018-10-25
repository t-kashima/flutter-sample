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
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: new AppBar(
            backgroundColor: themeData.primaryColorDark,
            flexibleSpace: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                new TabBar(
                  indicatorColor: Colors.white,
                  indicatorWeight: 5.0,
                  labelStyle: TextStyle(fontSize: 16.0),
                  labelColor: themeData.accentColor,
                  unselectedLabelColor: Colors.white,
                  tabs: [
                    Tab(text: "読みたい"),
                    Tab(text: "読書中"),
                    Tab(text: "読了"),
                  ],
                ),
              ],
            ),
         ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      );
  }
}
