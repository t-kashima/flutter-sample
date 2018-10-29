import 'package:flutter_sample/api/bookstand_api.dart';
import 'package:flutter_sample/model/bookshelf.dart';
import 'package:flutter_sample/repository/bookshelf_repository.dart';

class BookshelfRepositoryImpl implements BookshelfRepository {
  BookstandApi _api;

  BookshelfRepositoryImpl(this._api);

  @override
  Future<Bookshelf> find() {
    return _api.getBookshelf();
  }
}
