import 'package:flutter/material.dart';

class GirdViewDemo extends StatefulWidget {
  const GirdViewDemo({Key? key}) : super(key: key);

  @override
  _GirdViewDemoState createState() => _GirdViewDemoState();
}

class _GirdViewDemoState extends State<GirdViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: GridView.count(
          crossAxisCount: 2,
          physics: BouncingScrollPhysics(),
          children: [
            Card(
              color: Colors.brown,
              elevation: 9,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.alarm), Text("Alarm")],
              )),
            ),
            Card(
              color: Colors.amberAccent,
              elevation: 9,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.people), Text("People")],
                ),
              ),
            ),
            Card(
              color: Colors.green,
              elevation: 9,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.brightness_medium_sharp),
                    Text("brightness")
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.red,
              elevation: 9,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.visibility), Text("Hid")],
                ),
              ),
            ),
            Card(
              color: Colors.grey,
              elevation: 9,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.call), Text("Call")],
                ),
              ),
            ),
            Card(
              color: Colors.indigo,
              elevation: 9,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.message), Text("Message")],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
