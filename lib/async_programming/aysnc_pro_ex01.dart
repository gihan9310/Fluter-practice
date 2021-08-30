import 'package:flutter/material.dart';

class AsyncProgrammingDemo extends StatefulWidget {
  const AsyncProgrammingDemo({Key? key}) : super(key: key);

  @override
  _AsyncProgrammingDemoState createState() => _AsyncProgrammingDemoState();
}

class _AsyncProgrammingDemoState extends State<AsyncProgrammingDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Tap Me'),
          ),
        ),
      ),
    );
  }

  void myMethod(){
    
  }
}
