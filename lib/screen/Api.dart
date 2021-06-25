import 'package:hola/screens_login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:hola/screen/menu_lateral.dart';

import 'package:hola/screen/tabNavigattion.dart';
import 'package:hola/screen/MenusList.dart';
import 'package:hola/screen/Markers_GoogleMaps_Rest.dart';

class TabNavigation extends StatefulWidget {

  static const routeName = '/home';
  @override
  _tapNavState createState() => _tapNavState();
}

class _tapNavState extends State<TabNavigation> {

  int _currentIndex = 0;

  final tabs = [
    Center(child: Api(),),
    Center(child: Menus(),),
    Center(child: Markers_Google(),),
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

          BottomNavigationBarItem(
            icon: Icon(Icons.cabin),
            title: Text('Ubicaciones'),),
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
