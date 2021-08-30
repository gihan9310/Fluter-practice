import 'package:flutter/material.dart';

class GridBuilderWithMap extends StatefulWidget {
  const GridBuilderWithMap({Key? key}) : super(key: key);

  @override
  _GridBuilderWithMapState createState() => _GridBuilderWithMapState();
}

class _GridBuilderWithMapState extends State<GridBuilderWithMap> {
  List<Map> books = [
    {
      'id': '1',
      'name': 'crushing',
      'desc': 'My Name Is Khan but I not a terrorist',
      'img': 'crushing-it.jpg'
    },
    {
      'id': '2',
      'name': 'elon-musk-tesla-spacex',
      'desc': 'My Name Is Khan but I not a terrorist',
      'img': 'elon-musk-tesla-spacex.jpg'
    },
    {
      'id': '3',
      'name': 'Empire-of-Pain',
      'desc': 'My Name Is Khan but I not a Dog',
      'img': 'Empire-of-Pain.jpeg'
    },
    {
      'id': '4',
      'name': 'How-to-Create-a-Mind',
      'desc': 'My Name Is Khan but I not a Cat',
      'img': 'How-to-Create-a-Mind.jpeg'
    },
    {
      'id': '5',
      'name': 'Letting-Go',
      'desc': 'My Name Is Khan but I not a terrorist',
      'img': 'Letting-Go.jpeg'
    },
    {
      'id': '6',
      'name': 'ReWork',
      'desc': 'My Name Is Khan but I not a terrorist',
      'img': 'ReWork.jpeg'
    },
    {
      'id': '7',
      'name': 'The-Secret',
      'desc': 'My Name Is Khan but I not a terrorist',
      'img': 'The-Secret.jpg'
    },
    {
      'id': '8',
      'name': 'Zero-to-one',
      'desc': 'My Name Is Khan but I not a terrorist',
      'img': 'Zero-to-one.jpg'
    },
  ];

  // - assets/books/Zero-to-one.jpg
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: this.books.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              elevation: 8,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/books/${this.books[index]['img']}',
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      books[index]['name'],
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),
                    ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text(books[index]['desc']),
                     )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
