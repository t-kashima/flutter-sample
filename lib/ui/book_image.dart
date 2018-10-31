import 'package:flutter/material.dart';

class BookImage extends StatefulWidget {
  BookImage({Key key, this.imageUrl}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String imageUrl;

  @override
  _BookImageState createState() => new _BookImageState();
}

class _BookImageState extends State<BookImage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        alignment: Alignment(0, 1.0),
        child: new Container(
          child: new Image.network(widget.imageUrl),
          decoration: new BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Color(0xB0000000),
                offset: Offset(0, 2),
                blurRadius: 4.0
              )
            ]
          )
        ),
      ),
    );
  }
}
