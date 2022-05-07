import 'package:flutter/material.dart';
import 'package:google_books/models/books_model.dart';

class ListBooksView extends StatelessWidget {
  final AsyncSnapshot<BooksModel> snapshot;
  const ListBooksView({Key? key, required this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // var img = snapshot.data!.items![0].volumeInfo.imageLinks.smallThumbnail;
   // var titleText = snapshot.data!.items![0].volumeInfo.title;
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: snapshot.data!.items!.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
        child: ListTile(
            title: Text(snapshot.data!.items![index].volumeInfo.title),
            leading: Image.network(snapshot.data!.items![index].volumeInfo.imageLinks.smallThumbnail, scale: 1.2),
            trailing: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
        ),
      );},
    );
  }
}
