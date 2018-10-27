import 'package:flutter_sample/model/home.dart';

abstract class BookstandApi {
  Future<Home> getHome();
}
