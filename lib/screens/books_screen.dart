import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_books/api/books_api.dart';
import 'package:google_books/models/books_model.dart';
import 'package:google_books/screens/books_search.dart';
import 'package:google_books/screens/list_books_view.dart';

class BooksScreen extends StatefulWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  _BooksScreenState createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  late Future<BooksModel> booksObject;
  String? _bookName;

  @override
  void initState() {
    super.initState();
    _bookName ??= 'Кобзар';
    booksObject = BooksApi().fetchBooks(_bookName!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Google Books'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () async {
            var tappedName = await Navigator.push(context,
                MaterialPageRoute(builder: (context) {
              return const BooksSearch();
            }));

            if (tappedName != null) {
              setState(() {
                _bookName = tappedName;
                booksObject = BooksApi().fetchBooks(_bookName!);
              });
            }
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: FutureBuilder<BooksModel>(
          future: booksObject,
          builder: (context, AsyncSnapshot<BooksModel> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              log(snapshot.toString() /*items![0].volumeInfo.title*/);
              if (snapshot.hasData) {
                if (snapshot.data != null) {
                  return Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 50.0,
                      ),
                      ListBooksView(snapshot: snapshot),
                    ],
                  );
                } else {
                  return const Text('Is Null');
                }
              } else {
                return const Text('No Data found');
              }
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
