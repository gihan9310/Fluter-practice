import 'package:flutter/material.dart';
import 'package:seventh_app/bootom_sheet/bottom_sheet.dart';
import 'package:seventh_app/bottom_nave_example/bottom_nav_bar_example.dart';
import 'package:seventh_app/custom_list_view.dart';
import 'package:seventh_app/home.dart';
import 'package:seventh_app/pages/next_image.dart';
import 'package:seventh_app/tab_bar_exanple/tabBarExample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: BottomSheetExample(),
    );
  }
}

