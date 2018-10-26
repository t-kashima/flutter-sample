import 'package:flutter/material.dart';
import 'package:flutter_sample/theme.dart';

class SelectBookshelfContainer extends StatefulWidget {
  SelectBookshelfContainer({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _SelectBookshelfContainerState createState() => new _SelectBookshelfContainerState();
}

class _SelectBookshelfContainerState extends State<SelectBookshelfContainer> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: themeData.primaryColor,
      body: new Container(
        padding: const EdgeInsets.only(left: 10.0, right: 15.0),
        margin:  const EdgeInsets.only(top: 10.0, bottom: 10.0),
        alignment: Alignment(-1.0, 0.0),
        width: double.infinity,
        height: double.infinity,
        color: themeData.primaryColorDark,
          child: new Row(children: [
            new Expanded(child: 
              new Text(
                'お気に入りの本棚',
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 16.0
                ),
              )
            ),
            new Image.asset('assets/ic_drop_down_12.png')
          ])
        ),
    );
  }
}
