import 'package:flutter/material.dart';

class ImageExample extends StatefulWidget {
  const ImageExample({Key? key}) : super(key: key);

  @override
  _ImageExampleState createState() => _ImageExampleState();
}

class _ImageExampleState extends State<ImageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          physics:BouncingScrollPhysics() ,
          children: [
            Fruits(
              name: 'Apple',
              imageUrl: 'assets/images/fruits/Apple.png',
              decsription:
                  'Apple fruit is oval or pear in shape. Its outer peel comes in different hues and colors depending upon the cultivar type. Internally',
            ),
            Fruits(
              name: 'Avocado',
              imageUrl: 'assets/images/fruits/Avocado.png',
              decsription:
                  'Apple fruit is oval or pear in shape. Its outer peel comes in different hues and colors depending upon the cultivar type. Internally',
            ),
               Fruits(
              name: 'Banana',
              imageUrl: 'assets/images/fruits/Banana.png',
              decsription:
                  'Avocado is a medium-sized, evergreen tree that reaches about 20-30 feet in height and features a large, green foliage cover ',
            ),
               Fruits(
              name: 'Grape',
              imageUrl: 'assets/images/fruits/Grape.png',
              decsription:
                  'Apple fruit is oval or pear in shape. Its outer peel comes in different hues and colors depending upon the cultivar type. Internally . It prefers fertile soil with high moisture to flourish. Small, light-green flowers appear during winter. ',
            ),
               Fruits(
              name: 'Lemon',
              imageUrl: 'assets/images/fruits/Lemon.png',
              decsription:
                  'Apple fruit is oval or pear in shape. Its outer peel comes in different hues and colors depending upon the cultivar type. Internally',
            ),
             Fruits(
              name: 'Mango',
              imageUrl: 'assets/images/fruits/Mango.png',
              decsription:
                  'Apple fruit is oval or pear in shape. Its outer peel comes in different hues and colors depending upon the cultivar type. Internally',
            ),
            Fruits(
              name: 'Orange',
              imageUrl: 'assets/images/fruits/Orange.png',
              decsription:
                  'Apple fruit is oval or pear in shape. Its outer peel comes in different hues and colors depending upon the cultivar type. Internally',
            ),
          ],
        ),
      ),
    );
  }
}

class Fruits extends StatelessWidget {
  const Fruits({
    required this.name,
    required this.imageUrl,
    required this.decsription,
    Key? key,
  }) : super(key: key);

  final String name;
  final String imageUrl;
  final String decsription;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              trailing: Image.asset(imageUrl),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              decsription,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
