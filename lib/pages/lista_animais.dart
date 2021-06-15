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
      body: ListTile( //listview builder com a api
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
        trailing: Container(
 width: 100,
        child: Row(children: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            color: Colors.green,
           onPressed: () { },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            color: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text('Excluir Usuário'),
                  content: Text('Tem certeza?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();  
                      },
                      child: Text('Não'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Sim'),
                    ),
                  ],
                ),
              );
            },
          ),
        ]),
      ),// column coom iconbuttom
        focusColor: Colors.redAccent,
      ),
    );
    
  }
}
