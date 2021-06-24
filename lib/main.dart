import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens_login/login_screen.dart';
import 'screens_login/signup_screen.dart';
import 'models_login/authentication.dart';
import '../screens_login/login_screen.dart';
import 'package:hola/screen/Api.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),
        )
      ],
        child: MaterialApp(
          home: SplasScreen(),
          debugShowCheckedModeBanner: false,
          routes: {
            SignupScreen.routeName: (ctx)=> SignupScreen(),
            LoginScreen.routeName: (ctx)=> LoginScreen(),
            TabNavigation.routeName: (ctx)=> TabNavigation(),
          },
        ),
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
                (context) => LoginScreen()
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
