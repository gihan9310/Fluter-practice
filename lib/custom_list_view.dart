import 'package:flutter/material.dart';

class ListViewHome extends StatefulWidget {
  const ListViewHome({Key? key}) : super(key: key);

  @override
  _ListViewHomeState createState() => _ListViewHomeState();
}

class _ListViewHomeState extends State<ListViewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text('Apple'),
                leading: Image.asset('assets/images/fruits/Apple.png'),
                subtitle: Text('Apple kamu'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Avocado'),
                leading: Image.asset('assets/images/fruits/Avocado.png'),
                subtitle: Text('Avocado kamu'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Grape'),
                leading: Image.asset('assets/images/fruits/Grape.png'),
                subtitle: Text('Grape kamu'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Banana'),
                leading: Image.asset('assets/images/fruits/Banana.png'),
                subtitle: Text('Banana kamu'),
              ),
            ),
               Card(
                 child: ListTile(
                             title: Text('Lemon'),
                             leading: Image.asset('assets/images/fruits/Lemon.png'),
                             subtitle: Text('Lemon kamu'),
                           ),
               ),Card(
              child: ListTile(
                title: Text('Mango'),
                leading: Image.asset('assets/images/fruits/Mango.png'),
                subtitle: Text('Mango kamu'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                leading: Image.asset('assets/images/fruits/Orange.png'),
                subtitle: Text('Orange kamu'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
