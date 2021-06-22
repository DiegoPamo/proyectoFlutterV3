import 'package:flutter/material.dart';
import 'package:hola/screen/Api.dart';
import 'package:hola/NumberScreens/Mapa.dart';

class REGISTRO_RESTAURANTE extends StatelessWidget  {
  TextEditingController DNI = TextEditingController();
  TextEditingController NombreRestaurante = TextEditingController();
  TextEditingController Ubicacion = TextEditingController();
  TextEditingController Direccion = TextEditingController();
  TextEditingController Descripcion = TextEditingController();
  TextEditingController Contacto = TextEditingController();
  TextEditingController Puntuacion = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Image.asset('images/tecfood.jpg'),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: DNI,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'DNI',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: NombreRestaurante,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nombre del restaurante',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: Ubicacion,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Ubicacion',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: Direccion,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Direccion',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: Descripcion,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Descripcion',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: Contacto,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contacto',
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () => {},
                        color: Colors.white,
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          // Replace with a Row for horizontal icon + text
                          children: <Widget>[
                            Image.network(
                              "https://www.mjcachon.com/wp-content/uploads/2017/01/Ejemplo-como-llegar-google-maps.jpg",
                              //width: 250,
                              //height: 200,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.orange,
                      child: Text('REGISTRAR RESTAURANTE'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TabNavigation()),
                        );
                      },
                    )),
              ],
            )));
  }
}