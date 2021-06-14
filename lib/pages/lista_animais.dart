import 'package:flutter/material.dart';

class Lista_Animais extends StatefulWidget {
  @override
  _Lista_AnimaisState createState() => _Lista_AnimaisState();
}

class _Lista_AnimaisState extends State<Lista_Animais> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: <Widget>[
            ListTile(
             leading: Icon(Icons.pets),
              title: Text('Animal 1'),
            ),
            ListTile(
              leading: Icon(Icons.pets_sharp),
              title: Text('Animal 2'),
            ),
            ListTile(
              leading: Icon(Icons.pets_outlined),
              title: Text('Animal 3'),
            ),
          ],
        ),

    );
  }
}
