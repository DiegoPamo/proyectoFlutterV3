import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hola/screen/DetailScreen.dart';
import 'package:hola/models/restaurante.dart';


class Api extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Api> {

  Future getRestData() async {
    var response = await http.get(Uri.https('www.tecfood.club', '/74054946816/api/Restaurante/'));
    var jsonData = jsonDecode(response.body);
    List<Restaurant> restaurants = [];

    for(var u in jsonData){
      Restaurant restaurant = Restaurant(u['nombre_rest'],u['ubicacion'], u['direccion'], u['vista'], u['latitude'],u['longitude']);
      restaurants.add(restaurant);
    }
    return restaurants;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Card(
          child: FutureBuilder(
            future: getRestData(),
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
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(todo: '${snapshot.data[i].nombre_rest}',
                                                                    vista: '${snapshot.data[i].vista}',
                                                                    latitude: '${snapshot.data[i].latitude}',
                                                                    longitude: '${snapshot.data[i].longitude}',),
                            )
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Image.network(snapshot.data[i].vista),
                            Text(
                              snapshot.data[i].nombre_rest,
                              style: TextStyle(height: 2, fontSize: 20),
                            ),
                            Text(
                              snapshot.data[i].ubicacion,
                              style: TextStyle(height: 1, fontSize: 15),
                            ),
                            Text(
                              snapshot.data[i].direccion,
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

