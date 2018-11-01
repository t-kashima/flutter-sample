import 'package:flutter_sample/api/bookstand_api.dart';
import 'package:flutter_sample/model/book.dart';
import 'package:flutter_sample/model/book_detail.dart';
import 'package:flutter_sample/model/book_status.dart';
import 'package:flutter_sample/model/bookshelf.dart';
import 'package:flutter_sample/model/home.dart';
import 'package:intl/intl.dart';
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
      recommendBooks.add(Book(book["id"], book["isbn"], book["image_url"]));
    }
    return Home(recommendBooks);
  }

  @override
  Future<Bookshelf> getBookshelf({bookStatus: BookStatus}) async {
    var json = await _requestAll("/books?uuid=cd6522a8-12a9-493e-bab3-bf82725255dc&status=${bookStatus.index}&page=1&sort=0");
    var books = List<Book>();
    for (var book in json["books"]) {
      books.add(Book(book["id"], book["isbn"], book["image_url"]));
    }
    return Bookshelf(books);
  }

  @override
  Future<BookDetail> getBookByBookId({bookId: int}) async {
    var json = await _requestAll("/books/$bookId?uuid=cd6522a8-12a9-493e-bab3-bf82725255dc");
    var releasedAt = new DateTime.fromMillisecondsSinceEpoch(json["released_at"] * 1000);
    var formatter = new DateFormat('yyyy年MM月dd日');
    return BookDetail(json["id"], json["image_l_url"], json["title"], json["author"], json["manufacturer"], formatter.format(releasedAt));
  }

  @override
  Future<BookDetail> getBookByISBN({isbn: int}) async {
    var json = await _requestAll("/search_book_by_isbn?isbn=$isbn&uuid=cd6522a8-12a9-493e-bab3-bf82725255dc");
    var releasedAt = new DateTime.fromMillisecondsSinceEpoch(json["released_at"] * 1000);
    var formatter = new DateFormat('yyyy年MM月dd日');
    return BookDetail(null, json["image_l_url"], json["title"], json["author"], json["manufacturer"], formatter.format(releasedAt));
  }

  Future<Map<String, dynamic>> _requestAll(String path) async {
    var url = "$_BASE_URL$path";
    print("URL: $url");
    var response = await http.get(url);
    print("Response: ${utf8.decode(response.bodyBytes)}");
    return json.decode(utf8.decode(response.bodyBytes));
  }
}
