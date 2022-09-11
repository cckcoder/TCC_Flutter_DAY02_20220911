import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectIdex = 1;
  List<Widget> pages = [
    Center(
      child: Text("stock"),
    ),
    Center(
      child: Text("logout"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.inventory,
                    size: 50,
                    color: Colors.blue,
                  ),
                  Text('Inventory Workshop')
                ],
              ),
            ),
            ListTile(
              title: Text('Stok'),
              leading: Icon(Icons.list),
              onTap: () {
                _selectIndex(0);
              },
            ),
            ListTile(
              title: Text('logout'),
              leading: Icon(Icons.logout),
              onTap: () {
                _selectIndex(1);
              },
            )
          ],
        ),
      ),
      body: pages[_selectIdex],
    );
  }

  _selectIndex(int index) {
    setState(() {
      _selectIdex = index;
      Navigator.pop(context);
    });
  }
}
