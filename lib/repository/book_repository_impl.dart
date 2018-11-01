import 'package:flutter_sample/api/bookstand_api.dart';
import 'package:flutter_sample/model/book_detail.dart';
import 'package:flutter_sample/repository/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  BookstandApi _api;

  BookRepositoryImpl(this._api);

  @override
  Future<BookDetail> findByBookId({bookId: int}) {
    return _api.getBookByBookId(bookId: bookId);
  }

  @override
  Future<BookDetail> findByISBN({isbn: int}) {
    return _api.getBookByISBN(isbn: isbn);
  }
}
