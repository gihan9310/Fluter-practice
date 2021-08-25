import 'package:flutter/material.dart';
import 'package:seventh_app/pages/dash_bord.dart';
import 'package:seventh_app/pages/sales.dart';
import 'package:seventh_app/pages/users.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Scaffold Explanation.',
        ),
        centerTitle: true,
        foregroundColor: Colors.amber,
        backgroundColor: Colors.red,
        elevation: 5,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call))
        ],
        // leading: Icon(Icons.menu),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
        focusColor: Colors.amberAccent,
        backgroundColor: Colors.redAccent,
        elevation: 10,
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          Center(
            child: UserAccountsDrawerHeader(
                accountName: Text('Gihan Rathanayaka'),
                accountEmail: Text('gihan99eranga@gmail.com'),
                currentAccountPicture: Image.asset('assets/images/user.png')),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
              });
            },
            leading: Icon(Icons.home),
          ),
          ExpansionTile(
            title: Text('Users'),
            leading: Icon(Icons.people),
            initiallyExpanded: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text('Admin'),
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DashBoard(),
                          ));
                    });
                  },
                  leading: Icon(Icons.view_compact),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text('Owner'),
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DashBoard(),
                          ));
                    });
                  },
                  leading: Icon(Icons.admin_panel_settings),
                ),
              ),
            ],
          ),
          ListTile(
            title: Text('Dash Bord'),
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashBoard(),
                    ));
              });
            },
            leading: Icon(Icons.dashboard),
          ),
          ListTile(
            title: Text('Sales'),
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sales(),
                    ));
              });
            },
            leading: Icon(Icons.shopping_basket),
          ),
          ListTile(
            title: Text('Users'),
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => User(),
                    ));
              });
            },
            leading: Icon(Icons.people),
          ),
          ListTile(
            title: Text('Log out'),
            onTap: () {},
            leading: Icon(Icons.logout),
          )
        ],
      )),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Call',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page), label: 'Contacts'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages')
        ],
      ),
    );
  }
}
