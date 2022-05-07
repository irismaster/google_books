import 'package:flutter/material.dart';

class BooksSearch extends StatefulWidget {
  const BooksSearch({Key? key}) : super(key: key);

  @override
  State<BooksSearch> createState() => _BooksSearchState();
}

class _BooksSearchState extends State<BooksSearch> {
  late String bookName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                cursorColor: Colors.blueGrey[800],
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Enter Book Title',
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0),),
                    borderSide: BorderSide.none,
                  ),
                  icon: Icon(
                    Icons.book_outlined,
                    color: Colors.black,
                    size: 50.0,
                  ),
                ),
                onChanged: (value) {
                  bookName = value;
                },
              ),
            ),
            TextButton(
              child: const Text(
                'Search Book',
                style: TextStyle(fontSize: 30.0),
              ),
              onPressed: () {
                Navigator.pop(context, bookName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
