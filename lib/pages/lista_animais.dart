import 'package:flutter/material.dart';

class Lista_Animais extends StatefulWidget {
  @override
  _Lista_AnimaisState createState() => _Lista_AnimaisState();
}

class _Lista_AnimaisState extends State<Lista_Animais> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            //TODO buscar informações do animal na API e repassar para o Widget animal um objeto do tipo Animal(que ainda deve ser criado)
            child: animal(index),
          );
        },
        childCount: 15,
      ),
    );
  }
}

Widget animal(int animal) {
  return ListTile(
    //listview builder com a api
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
    title: Text('Animal ' + animal.toString()),
    trailing: Container(
      width: 100,
      child: Row(children: <Widget>[
        IconButton(
          icon: Icon(Icons.edit),
          color: Colors.green,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.delete),
          color: Colors.red,
          onPressed: () {
            //TODO montar o diálogo de confirmação.
            //Get.defaultDialog()
          },
        ),
      ]),
    ), // column coom iconbuttom
    focusColor: Colors.redAccent,
  );
}
