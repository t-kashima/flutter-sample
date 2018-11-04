import 'package:flutter/material.dart';
import 'package:flutter_sample/theme.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => new _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.only(top: 20),
        child: new Text(
          '設定',
          style: new TextStyle(color: themeData.primaryColor, fontSize: 18.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
