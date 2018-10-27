import 'package:flutter_sample/api/bookstand_api.dart';
import 'package:flutter_sample/model/home.dart';
import 'package:flutter_sample/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  BookstandApi _api;

  HomeRepositoryImpl(this._api);

  @override
  Future<Home> findAll() {
    return _api.getHome();
  }
}
