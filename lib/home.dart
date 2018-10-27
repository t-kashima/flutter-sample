import 'package:flutter/material.dart';
import 'package:flutter_sample/api/bookstand_api_impl.dart';
import 'package:flutter_sample/model/home.dart';
import 'package:flutter_sample/repository/home_repository_impl.dart';
import 'package:flutter_sample/theme.dart';
import 'package:flutter_sample/ui/book_image.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Home _home = new Home([]);

  @override
  void initState() {
    super.initState();

    _fetch();
  }

  Future<Null> _fetch() async {
    var homeRepository = new HomeRepositoryImpl(new BookstandApiImpl());
    var home = await homeRepository.findAll();

    try {
      setState(() {
        this._home = home;
      });
    } catch(e) {
      // You can't set the state if this page was destoried.
    }
  }

  @override
  Widget build(BuildContext context) {
    var recommendBooks = this._home.recommendBooks.map((book) {
        return new BookImage(imageUrl: book.imageUrl);
    }).toList();

    return new Scaffold(
      body: new ListView(
        shrinkWrap: false,
        children: [
          new Container(
            padding: const EdgeInsets.only(top: 20.0),
            child: new Text(
              'あなたにおすすめの本',
              style: new TextStyle(
                color: themeData.primaryColor,
                fontSize: 18.0
              ),
              textAlign: TextAlign.center,
            )
          ),
          GridView.count(
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 26.0,      
            padding: const EdgeInsets.all(20),
            children: recommendBooks
          )],// This trailing comma makes auto-formatting nicer for build methods.
      )
    );
  }
}
