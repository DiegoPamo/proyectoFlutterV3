import 'package:hola/screen/Login.dart';
import 'package:hola/screen/tabNavigattion.dart';
import 'package:hola/screen/MenusList.dart';
import 'package:flutter/material.dart';
import 'package:hola/screen/menu_lateral.dart';

class TabNavigation extends StatefulWidget {
  @override
  _tapNavState createState() => _tapNavState();
}

class _tapNavState extends State<TabNavigation> {

  int _currentIndex = 0;

  final tabs = [
    Center(child: Api(),),
    Center(child: Menus(),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TECFOOD"),
        backgroundColor: Colors.orange,
      ),
      drawer: MenuLateral(),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.orange,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Restaurantes'),),

          BottomNavigationBarItem(
            icon: Icon(Icons.cabin),
            title: Text('Menu'),),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
