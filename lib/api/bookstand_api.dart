import 'package:flutter_sample/model/book_detail.dart';
import 'package:flutter_sample/model/book_status.dart';
import 'package:flutter_sample/model/bookshelf.dart';
import 'package:flutter_sample/model/home.dart';

abstract class BookstandApi {
  Future<Home> getHome();

  Future<Bookshelf> getBookshelf({bookStatus: BookStatus});

  Future<BookDetail> getBookByBookId({bookId: int});

  Future<BookDetail> getBookByISBN({isbn: int});
}
