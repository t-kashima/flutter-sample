import 'package:flutter_sample/model/home.dart';

abstract class HomeRepository {
  Future<Home> findAll();
}
