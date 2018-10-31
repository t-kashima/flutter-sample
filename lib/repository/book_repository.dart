import 'package:flutter_sample/model/book_detail.dart';

abstract class BookRepository {
  Future<BookDetail> find({bookId: int});
}
