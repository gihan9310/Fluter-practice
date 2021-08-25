import 'package:flutter/material.dart';
import 'package:seventh_app/demo_screens/screen_3.dart';
import 'package:seventh_app/demo_screens/screen_one.dart';
import 'package:seventh_app/demo_screens/screens_two.dart';

class BottomNaveExample extends StatefulWidget {
  const BottomNaveExample({Key? key}) : super(key: key);

  @override
  _BottomNaveExampleState createState() => _BottomNaveExampleState();
}

class _BottomNaveExampleState extends State<BottomNaveExample> {
  int _currentIndex = 0;
  List<Widget> _scrrens = [
    ScreenOne(),
    ScreenTwo(),
    Screen_3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _scrrens.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.holiday_village),
            label: 'One',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hardware_outlined),
            label: 'Two',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '#3',
          )
        ],
        onTap: (int val) {
          setState(() {
            _currentIndex = val;
          });
        },
      ),
    );
  }
}
