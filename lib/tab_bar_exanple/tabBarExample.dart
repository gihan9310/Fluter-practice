import 'package:flutter/material.dart';
import 'package:seventh_app/demo_screens/screen_3.dart';
import 'package:seventh_app/demo_screens/screen_one.dart';
import 'package:seventh_app/demo_screens/screens_two.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({Key? key}) : super(key: key);

  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                child: TabBar(
                  labelColor: Colors.red,
                  tabs: [
                    Tab(
                      text: 'Tab One',
                      icon: Icon(Icons.one_k_plus),
                    ),
                    Tab(
                      text: 'Tab Two',
                      icon: Icon(Icons.two_k),
                    ),
                    Tab(
                      text: 'Tab One',
                      icon: Icon(Icons.theater_comedy),
                    ),
                  ],
                ),
                
              ),
              Expanded(
                child: TabBarView(children: [
                  ScreenOne(),
                  ScreenTwo(),
                  Screen_3()
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
