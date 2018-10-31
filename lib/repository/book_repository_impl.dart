import 'package:flutter_sample/api/bookstand_api.dart';
import 'package:flutter_sample/model/book_detail.dart';
import 'package:flutter_sample/repository/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  BookstandApi _api;

  BookRepositoryImpl(this._api);

  @override
  Future<BookDetail> find({bookId: int}) {
    return _api.getBook(bookId: bookId);
  }
}
