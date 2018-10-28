import 'package:flutter/material.dart';
import 'package:flutter_sample/theme.dart';

class BookPage extends StatefulWidget {
  BookPage({Key key, this.bookId, this.imageUrl}) : super(key: key);

  final BigInt bookId;
  final String imageUrl;

  @override
  _BookPageState createState() => new _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('本の詳細')),
        body: new ListView(children: [
          new Container(
              height: 142,
              margin: const EdgeInsets.only(
                  top: 20, left: 16, right: 16, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 96,
                      alignment: Alignment(0, -1),
                      child: Image.network(widget.imageUrl)),
                  new Expanded(
                      child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                        new Text(
                          "アサシン an Assassin(限定復刻版)",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: new TextStyle(
                            fontSize: 16,
                            color: MyColors.text,
                          ),
                        ),
                        new Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: new Text("伊藤計劃",
                                softWrap: true,
                                style: new TextStyle(
                                    fontSize: 14, color: MyColors.text))),
                        new Expanded(
                            child: new Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                              new Text("早川書房 / 2010年2月10日発売",
                                  softWrap: true,
                                  style: new TextStyle(
                                      fontSize: 12, color: MyColors.text))
                            ]))
                      ]))
                ],
              )),
          new Container(
            decoration: new BoxDecoration(
                color: themeData.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            margin: EdgeInsets.only(top: 20, left: 16, right: 16),
            child: new FlatButton(
                child: new Align(
              alignment: Alignment.centerLeft,
              child: new Text('Amazonで詳細を見る',
                  style: new TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.start),
            )),
          )
        ]));
  }
}
