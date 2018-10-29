import 'package:flutter_sample/model/bookshelf.dart';

abstract class BookshelfRepository {
  Future<Bookshelf> find();
}
