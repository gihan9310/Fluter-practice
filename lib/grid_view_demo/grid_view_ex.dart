import 'package:flutter/material.dart';

class GirdViewExample extends StatefulWidget {
  const GirdViewExample({Key? key}) : super(key: key);

  @override
  _GirdViewExampleState createState() => _GirdViewExampleState();
}

class _GirdViewExampleState extends State<GirdViewExample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(5),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              CustomTile(
                description: 'Apple Description',
                image: 'assets/images/fruits/Apple.png',
                name: 'Apple',
              ),
              CustomTile(
                description: 'Any Description',
                image: 'assets/images/fruits/Avocado.png',
                name: 'Avocado',
              ),
              CustomTile(
                description: 'Grape Description',
                image: 'assets/images/fruits/Grape.png',
                name: 'Grape',
              ),
              CustomTile(
                description: 'Banana Description',
                image: 'assets/images/fruits/Banana.png',
                name: 'Banana',
              ),
              CustomTile(
                description: 'Lemon Description',
                image: 'assets/images/fruits/Lemon.png',
                name: 'Lemon',
              ),
              CustomTile(
                description: 'Mango Description',
                image: 'assets/images/fruits/Mango.png',
                name: 'Mango',
              ),
              CustomTile(
                description: 'Orange Description',
                image: 'assets/images/fruits/Orange.png',
                name: 'Orange',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  const CustomTile(
      {Key? key,
      required this.description,
      required this.image,
      required this.name})
      : super(key: key);

  final String image;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
          width: 200,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  image,
                ),
                height: 100,
                width: 100,
              ),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                description,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          )),
    );
  }
}
