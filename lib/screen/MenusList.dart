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

  List lista = [
    "https://images-ext-2.discordapp.net/external/PTOl0nZQ4a63K8fjAJKSrSg_ByVKAlsMMgudTQ33iJk/https/gestion.pe/resizer/FkkXX6kmWI6EgkqeXi7bNRBevzU%3D/580x330/smart/filters%3Aformat%28jpeg%29%3Aquality%2875%29/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/UIHUZAOLA5DSVDSL3HCV6ICOZ4.jpg"
  ];

  Future getMenData() async {
    var response = await http.get(Uri.https('www.tecfood.club', '/74054946816/api/Menus/'));
    var jsonData = jsonDecode(response.body);
    List<Menu> menus = [];

    for(var u in jsonData){
      Menu menu = Menu(u['restaurante'],u['entradas'],u['menus'], u['bebida'], u['total']);
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
                                Image.network(lista[i]),
                                Text(
                                  snapshot.data[i].restaurante.nombre_rest,
                                  style: TextStyle(height: 2, fontSize: 20),
                                ),
                                Text(
                                  snapshot.data[i].entradas[1],
                                  style: TextStyle(height: 1, fontSize: 15),
                                ),
                                Text(
                                  snapshot.data[i].menus[1],
                                  style: TextStyle(height: 1, fontSize: 15),
                                ),
                                Text(
                                  snapshot.data[i].bebidas[1],
                                  style: TextStyle(height: 1, fontSize: 15),
                                ),
                                Text(
                                  snapshot.data[i].total[1],
                                  style: TextStyle(height: 1, fontSize: 15),
                                ),
                                SizedBox(height: 20),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.yellow,
                                  size: 40,
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