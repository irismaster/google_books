import 'package:flutter/material.dart';

void main() => runApp(mainClass());


class mainClass extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: mainScreen(),
    );
  }
}

class mainScreen extends StatefulWidget {
  mainScreen({Key key}) : super(key: key);

  @override
  mainScreenState createState() => mainScreenState();
}

class mainScreenState extends State<mainScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Книги'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Text('Здесь будет выводится рандомный список книг с Google Books', textDirection: TextDirection.ltr,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.find_in_page),
            title: Text('Поиск'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            title: Text('Избранное'),
          ),
        ],

       // selectedItemColor: Colors.amber[800],

      ),
    );
  }


int _selectedIndex = 0;
  void _onItemTapped(int index) {
setState(() {
_selectedIndex = index;
});
}
}