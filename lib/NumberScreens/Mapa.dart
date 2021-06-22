import 'package:flutter/material.dart';

class Mapas extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TECFOOD"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => {Navigator.pop(context)},
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
        ),
      ),

    );

  }
}