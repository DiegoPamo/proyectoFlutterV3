import 'dart:convert';
import 'package:hola/screens_login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hola/screen/menu_lateral.dart';
import 'package:hola/models/menu.dart';

class Menus extends StatefulWidget {
  @override
  _MenusState createState() => _MenusState();
}

class _MenusState extends State<Menus> {

  Future getMenData() async {
    var response = await http.get(Uri.https('www.tecfood.club', '/74054946816/api/Post/'));
    var jsonData = jsonDecode(response.body);
    List<Menu> menus = [];

    for(var u in jsonData){
      Menu menu = Menu(u['title'],u['photo']);
      menus.add(menu);
    }
    print(menus);
    return menus;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Card(
          child: FutureBuilder(
              future: getMenData(),
              builder: (context,snapshot){
                if(snapshot.data == null ){
                  return Container(
                    child: Center(
                      child: Text('Loading...'),
                    ),
                  );
                }else
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context,i){
                        return Padding(
                          padding: EdgeInsets.all(20),
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                Image.network(snapshot.data[i].photo, width: 150, height: 160,),
                                Text(
                                  snapshot.data[i].title,
                                  style: TextStyle(height: 1, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
              }
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}