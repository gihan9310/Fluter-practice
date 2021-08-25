import 'package:flutter/material.dart';

class Screen_3 extends StatefulWidget {
  const Screen_3({Key? key}) : super(key: key);

  @override
  _Screen_3State createState() => _Screen_3State();
}

class _Screen_3State extends State<Screen_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Screens #3 ...',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
