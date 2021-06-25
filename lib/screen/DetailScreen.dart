import 'package:flutter/material.dart';
import 'package:hola/screen/tabNavigattion.dart';


class DetailScreen  extends StatelessWidget {

  final String todo,vista;

  DetailScreen({Key key, @required this.todo,@required this.vista}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${todo}"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.network("${vista}"),
            Text(
              "${todo}",
              style: TextStyle(height: 2, fontSize: 20),
            ),

          ],
        ),
      ),
    );
  }

}