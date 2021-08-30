import 'package:flutter/material.dart';

class GridViewBuildExample extends StatefulWidget {
  const GridViewBuildExample({Key? key}) : super(key: key);

  @override
  _GridViewBuildExampleState createState() => _GridViewBuildExampleState();
}

class _GridViewBuildExampleState extends State<GridViewBuildExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: Text('Index : ${index}'),width: 200,height: 200,color: Colors.blueAccent,),
            ),
          );
        },
      ),
    );
  }
}
