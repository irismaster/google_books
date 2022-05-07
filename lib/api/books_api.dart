import 'dart:convert';
import 'dart:developer';
import 'package:google_books/util/constants.dart';
import 'package:http/http.dart' as http;
import '../models/books_model.dart';

class BooksApi {


  Future<BooksModel> fetchBooks(String booknameApi) async {
    var params = {'q' : booknameApi};
    var uri = Uri.https(Constants.BOOKS_BASE_URL_DOMAIN, Constants.BOOKS_SEARCH_PATH, params);
    log('request: ${uri.toString()}');

    var response = await http.get(uri);

    log('response: ${response.body}');


    if (response.statusCode == 200) {
      return BooksModel.fromJson(json.decode(response.body));
    } else {
      return Future.error('Error response');
    }
    }

}