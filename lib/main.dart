import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Google books",
      home: MainScreen()));
}
class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}
class MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Books"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.find_in_page, color: Colors.white,),
            onPressed: () {

            },
          )
        ],
        backgroundColor: Colors.brown,
      ),

      body:

      TabBarView(
        children: <Widget>[HomeScreen(), FavoritesScreen()],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.brown,
        child: TabBar(
          tabs: <Tab>[
            Tab(
                icon: Icon(Icons.home),
                child: Text('Главная')
            ),
            Tab(
              icon: Icon(Icons.favorite),
              child: Text('Избранное'),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
  class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(

  body:
  Center(
  child: Text('Здесь будет выводится список книг', textDirection: TextDirection.ltr,),
  ),
  );
  }
  }

  class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(

  body:
  Center(
  child: Text('Здесь будет список книг избраного', textDirection: TextDirection.ltr,),
     ),
    );
   }
  }


