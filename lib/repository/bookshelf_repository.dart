import 'package:flutter_sample/model/book_status.dart';
import 'package:flutter_sample/model/bookshelf.dart';

abstract class BookshelfRepository {
  Future<Bookshelf> find({bookStatus: BookStatus});
}
