import 'package:flutter/material.dart';
import 'package:flutter_sample/theme.dart';

class SearchBookPage extends StatefulWidget {
  SearchBookPage({Key key}) : super(key: key);

  static SearchBookPage newInstance() {
    return SearchBookPage();
  }

  @override
  _SearchBookPageState createState() => new _SearchBookPageState();
}

class _SearchBookPageState extends State<SearchBookPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("本を登録しますか？"),
      ),
      body: new ListView(
        shrinkWrap: false,
        children: [
          buildFlatButton(
            label: "バーコードから登録",
            onPressed: () {
              debugPrint("onTap scan with barcode");
            },
          ),
          buildBorder(),
          buildFlatButton(
            label: "情報を入力して登録",
            onPressed: () {
              debugPrint("onTap input book information");
            },
          ),
          buildBorder(),
          buildSearchContainer(onPressed: () {
            debugPrint("onTap search with keyword");
          }),
        ],
      ),
    );
  }

  Widget buildBorder() {
    return new Container(
      height: 1,
      decoration: BoxDecoration(
        color: MyColors.grey[600],
      ),
    );
  }

  Widget buildFlatButton({String label, VoidCallback onPressed}) {
    return new FlatButton(
      padding: const EdgeInsets.only(top: 20, left: 30, bottom: 20),
      onPressed: onPressed,
      child: new Container(
        alignment: Alignment(-1, 0),
        child: new Text(
          label,
          style: new TextStyle(
            color: themeData.accentColor,
            fontSize: 16.0,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  Widget buildSearchContainer({VoidCallback onPressed}) {
    return new FlatButton(
      padding: const EdgeInsets.all(0),
      onPressed: onPressed,
      child: new Container(
        margin: const EdgeInsets.only(top: 20, left: 10, bottom: 20, right: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: themeData.accentColor),
        ),
        padding: const EdgeInsets.only(top: 12, left: 20, bottom: 12, right: 8),
        child: Row(
          children: <Widget>[
            new Expanded(
              child: new Text(
                "検索キーワード入力",
                style: TextStyle(
                  fontSize: 16.0,
                  color: themeData.accentColor,
                ),
              ),
            ),
            new Image.asset("assets/ic_search_24.png"),
          ],
        ),
      ),
    );
  }
}
