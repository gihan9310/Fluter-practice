import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  _StackExampleState createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        child: Stack(
          children: [
            Container(
              color: Colors.amber,
            ),
            Positioned(
              bottom: 200,
              // right: 200,
              left: 100,
              child: Container(
                width: 250,
                height: 250,
                color: Colors.cyan,
              ),
            ),
             Align(
               alignment: Alignment.center,
               child: Container(
                width: 150,
                height: 150,
                color: Colors.deepOrange,
                         ),
             )
          ],
        ),
      ),
    );
  }
}
