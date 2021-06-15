import 'package:flutter/material.dart';
import 'package:petshop/pages/home.dart';

class Lista_Animais extends StatefulWidget {
  @override
  _Lista_AnimaisState createState() => _Lista_AnimaisState();
}

class _Lista_AnimaisState extends State<Lista_Animais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            width: 48,
            height: 48,
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            alignment: Alignment.center,
            child: const CircleAvatar(),
          ),
        ),
        title: const Text('Animal'),
        trailing: Icon(Icons.delete),
        focusColor: Colors.redAccent,
      ),
    );
    
  }
}
