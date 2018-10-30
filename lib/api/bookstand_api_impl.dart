import 'package:flutter_sample/api/bookstand_api.dart';
import 'package:flutter_sample/model/book.dart';
import 'package:flutter_sample/model/book_status.dart';
import 'package:flutter_sample/model/bookshelf.dart';
import 'package:flutter_sample/model/home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BookstandApiImpl implements BookstandApi {
  static const _BASE_URL = "https://bookstand-dev.herokuapp.com/api/v1";

  @override
  Future<Home> getHome() async {
    var json = await _requestAll(
        "/user/find?uuid=cd6522a8-12a9-493e-bab3-bf82725255dc");
    var recommendBooks = List<Book>();
    for (var book in json["recommend_books"]) {
      recommendBooks.add(Book(book["id"], book["image_url"]));
    }
    return Home(recommendBooks);
  }

  @override
  Future<Bookshelf> getBookshelf({bookStatus: BookStatus}) async {
    var json = await _requestAll("/books?uuid=cd6522a8-12a9-493e-bab3-bf82725255dc&status=${bookStatus.index}&page=1&sort=0");
    var books = List<Book>();
    for (var book in json["books"]) {
      books.add(Book(book["id"], book["image_url"]));
    }
    return Bookshelf(books);
  }

  Future<Map<String, dynamic>> _requestAll(String path) async {
    var url = "$_BASE_URL$path";
    print("URL: $url");
    var response = await http.read(url);
    print("Response: ${response.toString()}");
    return json.decode(response);
  }
}
