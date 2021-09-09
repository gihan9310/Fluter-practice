import 'package:flutter/material.dart';
import 'package:seventh_app/grid_view_demo/phone.model.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({Key? key}) : super(key: key);

  @override
  _GridViewExampleState createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  List<Phone> list = Phone.getPhoneList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.builder(
            itemCount: list.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return GridTile(
                footer: Container(
                  height: 40,
                  color: list[index].color.withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        list[index].phoneName,
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            print('Calling.........');
                            list[index].isFav = !list[index].isFav;
                            print('Calling.........${list[index].isFav}');
                          });
                        },
                        icon: Phone.getPhoneList()[index].isFav
                            ? Icon(Icons.favorite, color: Colors.red)
                            : Icon(Icons.favorite, color: Colors.white),
                      )
                    ],
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/${list[index].image}'),
                        fit: BoxFit.cover),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
