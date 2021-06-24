import 'package:flutter/material.dart';
import 'package:hola/screen/Api.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Post {
  final int id;
  final int usuario;
  final int DNI;
  final String nombre_rest;
  final String ubicacion;
  final String direccion;
  final String descripcion;
  final String contacto;
  final String puntuacion;
  final String latitude;
  final String longitude;
  final String creado;
  final String vista;
  final String licencia_func;


  Post({this.id,
        this.usuario,
        this.DNI,
        this.nombre_rest,
        this.ubicacion,
        this.direccion,
        this.descripcion,
        this.contacto,
        this.puntuacion,
        this.latitude,
        this.longitude,
        this.creado,
        this.vista,
        this.licencia_func});

  factory Post.fromJson(Map json) {
    return Post(
      id: json['id'],
      usuario: json['usuario'],
      DNI: json['DNI'],
      nombre_rest: json['nombre_rest'],
      ubicacion: json['ubicacion'],
      direccion: json['direccion'],
      descripcion: json['descripcion'],
      contacto: json['contacto'],
      puntuacion: json['puntuacion'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      creado: json['creado'],
      vista: json['vista'],
      licencia_func: json['licencia_func'],
    );
  }

  Map toMap() {
    var map = new Map();
    map["id"] = id;
    map["usuario"] = usuario;
    map["DNI"] = DNI;
    map["nombre_rest"] = nombre_rest;
    map["ubicacion"] = ubicacion;
    map["direccion"] = direccion;
    map["descripcion"] = descripcion;
    map["contacto"] = contacto;
    map["puntuacion"] = puntuacion;
    map["latitude"] = latitude;
    map["longitude"] = longitude;
    map["creado"] = creado;
    map["vista"] = vista;
    map["licencia_func"] = licencia_func;

    return map;
  }
}

Future createPost(String url, {Map nombre_rest}) async {
  return http.post(Uri.parse(url), body: nombre_rest).then((http.Response response) {
    final int statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 400 || json == null) {
      throw new Exception("Error");
    }
    return Post.fromJson(json.decode(response.body));
  });
}

class REGISTRO_RESTAURANTE extends StatelessWidget  {
  final Future post;

  REGISTRO_RESTAURANTE({Key key, this.post}) : super(key: key);
  static final CREATE_POST_URL = 'https://www.tecfood.club/74054946816/api/Restaurante/';
  TextEditingController ID = TextEditingController();
  TextEditingController Usuario = TextEditingController();
  TextEditingController DNI = TextEditingController();
  TextEditingController NombreRestaurante = TextEditingController();
  TextEditingController Ubicacion = TextEditingController();
  TextEditingController Direccion = TextEditingController();
  TextEditingController Descripcion = TextEditingController();
  TextEditingController Contacto = TextEditingController();
  TextEditingController Puntuacion = TextEditingController();
  TextEditingController Latitude = TextEditingController();
  TextEditingController Longitude = TextEditingController();
  TextEditingController Creado = TextEditingController();
  TextEditingController Vista = TextEditingController();
  TextEditingController LicenciaFuncionamiento = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Image.asset('assets/images/tecfood.jpg'),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: ID,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ID',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: Usuario,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Usuario',
                    ),
                  ),
                ),
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
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: Puntuacion,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Puntuacion',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: Latitude,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Latitude',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: Longitude,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Longitude',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: Creado,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Creado',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: Vista,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Vista',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: LicenciaFuncionamiento,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Licencia de Funcionamiento',
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
                new RaisedButton(
                  onPressed: () async {
                    Post newPost = new Post(
                        id: 47, nombre_rest: NombreRestaurante.text, ubicacion: Ubicacion.text);
                    Post p = await createPost(CREATE_POST_URL,
                        nombre_rest: newPost.toMap());
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TabNavigation()),
                    );
                  },
                  child: const Text("Registrar"),
                  textColor: Colors.orange,
                )
              ],
            )));
  }
}