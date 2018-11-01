import 'package:flutter/material.dart';
import 'package:flutter_sample/api/bookstand_api_impl.dart';
import 'package:flutter_sample/book.dart';
import 'package:flutter_sample/model/book_status.dart';
import 'package:flutter_sample/model/bookshelf.dart';
import 'package:flutter_sample/repository/bookshelf_repository_impl.dart';
import 'package:flutter_sample/ui/book_image.dart';

class BookshelfPage extends StatefulWidget {
  BookshelfPage({Key key, this.bookStatus}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final BookStatus bookStatus;

  @override
  _BookshelfPageState createState() => new _BookshelfPageState();
}

class _BookshelfPageState extends State<BookshelfPage> {

  var _bookshelf = new Bookshelf([]);

  @override
  void initState() {
    super.initState();

    _fetch();
  }

  Future<Null> _fetch() async {
    var bookshelfRepository = new BookshelfRepositoryImpl(new BookstandApiImpl());
    var bookshelf = await bookshelfRepository.find(bookStatus: widget.bookStatus);

    try {
      setState(() {
        this._bookshelf = bookshelf;
      });
    } catch(e) {
      // You can't set the state if this page was destoried.
    }
  }

  @override
  Widget build(BuildContext context) {
    var books = this._bookshelf.books.map((book) {
        return new GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => BookPage.newInstanceForBookId(bookId: book.id, imageUrl: book.imageUrl)));
          },
          child: new BookImage(imageUrl: book.imageUrl)
        );
    }).toList();

    return new Scaffold(
      body: new Container(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 26.0,
                padding: const EdgeInsets.all(20),
                children: books
              )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
