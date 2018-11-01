import 'package:flutter_sample/model/book_detail.dart';

abstract class BookRepository {
  Future<BookDetail> findByBookId({bookId: int});

  Future<BookDetail> findByISBN({isbn: int});
}
