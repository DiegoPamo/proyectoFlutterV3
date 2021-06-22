import 'package:flutter/material.dart';
import 'package:hola/NumberScreens/ThirdScreen.dart';
import 'package:hola/NumberScreens/FourScreen.dart';
import 'package:hola/screen/Api.dart';
import 'package:hola/NumberScreens//SecondScreen.dart';
import 'package:hola/screen/Registro.dart';

class TECFOOD extends StatelessWidget  {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Image.asset('assets/images/tecfood.jpg'),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),

                    child: Text(
                      'Una App Arequipeña\n'
                          '   para Arequipeños',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Usuario',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contraseña',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.orange,
                      child: Text('Ingresar'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TabNavigation()),
                        );
                      },
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login con Facebook'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ThirdRoute()),
                        );
                      },
                    )),

                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text('Login con Google'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FourdRoute()),
                        );
                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('No tienes una cuenta?'),
                        FlatButton(
                          textColor: Colors.orange,
                          child: Text(
                            'Registrate',
                            style: TextStyle(fontSize: 15),
                          ),
                          onPressed: () {
                            print(nameController.text);
                            print(passwordController.text);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => REGISTRO()),
                            );
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.orange,
                  child: Text('Olvidaste tu contraseña'),
                ),
              ],
            )));
  }
}