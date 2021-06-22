import 'package:flutter/material.dart';
import 'package:hola/screen/Login.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplasScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplasScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<SplasScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => TECFOOD()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox( height: 30,),
            Image.asset('assets/images/tecfood.jpg'),
          ],
        ),
      ),
    );
  }
}

List<Widget> listado( List<dynamic> info ){

  List<Widget> lista = [];
  info.forEach((elemento) {
    lista.add(Text(elemento["name"]));
  });
  return lista;
}
