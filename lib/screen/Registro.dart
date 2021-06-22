import 'package:flutter/material.dart';
import 'package:hola/screen/Login.dart';

class REGISTRO extends StatelessWidget  {
  TextEditingController nameController = TextEditingController();
  TextEditingController ApellidosController = TextEditingController();
  TextEditingController DireccionController = TextEditingController();
  TextEditingController SexoController = TextEditingController();
  TextEditingController ComidaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Image.asset('images/tecfood.jpg'),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nombre de Usuario',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: ApellidosController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Apellidos de Usuario',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: DireccionController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Direccion de correo',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: SexoController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Sexo',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: ComidaController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Cual es tu comida favorita?',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.orange,
                      child: Text('INGRESAR'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TECFOOD()),
                        );
                      },
                    )),
              ],
            )));
  }
}
