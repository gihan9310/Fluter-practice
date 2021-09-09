import 'package:flutter/material.dart';

class StackExanple extends StatefulWidget {
  const StackExanple({Key? key}) : super(key: key);

  @override
  _StackExanpleState createState() => _StackExanpleState();
}

class _StackExanpleState extends State<StackExanple> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/building.jpg'),
                      fit: BoxFit.fitHeight)),
            ),
            Positioned(
              bottom: 100,
              right: 10,
              left: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 8,
                  color: Colors.white.withOpacity(0.6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Travel With Us!',
                          style: TextStyle(
                              fontSize: 36,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Text messages are used for personal, family, business and social purposes. Governmental and non-governmental organizations use text messaging for communication between colleagues. In the 2010s, the sending of short informal messages became an accepted part of many cultures, as happened earlier with emailing',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.all(10)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
