import 'package:flutter/material.dart';
import 'package:flutter_sample/api/bookstand_api_impl.dart';
import 'package:flutter_sample/model/book_detail.dart';
import 'package:flutter_sample/repository/book_repository_impl.dart';
import 'package:flutter_sample/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class BookPage extends StatefulWidget {
  BookPage({Key key, this.bookId, this.imageUrl}) : super(key: key);

  final int bookId;
  final String imageUrl;

  @override
  _BookPageState createState() => new _BookPageState();
}

class _BookPageState extends State<BookPage> {
  BookDetail _book;

  @override
  void initState() {
    super.initState();

    _fetch();
  }

  Future<Null> _fetch() async {
    var bookRepository = new BookRepositoryImpl(new BookstandApiImpl());
    var book = await bookRepository.find(bookId: widget.bookId);

    try {
      setState(() {
        this._book = book;
      });
    } catch(e) {
      // You can't set the state if this page was destoried.
    }
  }

  @override
  Widget build(BuildContext context) {
    var releasedAt = _book?.releasedAt != null ? _book?.releasedAt + "発売" : null;

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
                      child: Image.network(_book?.imageUrl ?? widget.imageUrl)),
                  new Expanded(
                      child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                        new Text(
                          _book?.title ?? "",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: new TextStyle(
                            fontSize: 16,
                            color: MyColors.text,
                          ),
                        ),
                        new Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: new Text(_book?.author ?? "",
                                softWrap: true,
                                style: new TextStyle(
                                    fontSize: 14, color: MyColors.text))),
                        new Expanded(
                            child: new Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                              new Text("${_book?.manufacturer ?? ""}${releasedAt != null ? " / " + releasedAt : ""}",
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
                onPressed: () async {
                  const url = 'https://flutter.io';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
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
