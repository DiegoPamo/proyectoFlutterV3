import 'package:flutter/material.dart';


class FourdRoute extends StatelessWidget {
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
              onPressed: () => {
                Navigator.pop(context)
              },
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              child: Column( // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Image.network("https://logodownload.org/wp-content/uploads/2018/03/gmail-logo-16.png",width: 250,height: 200,),
                  Text("Inicar sesion como TECFOOD",style: TextStyle(color: Colors.black,fontSize: 20),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}