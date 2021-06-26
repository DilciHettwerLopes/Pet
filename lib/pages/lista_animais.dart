import 'package:flutter/material.dart';

class Lista_Animais extends StatefulWidget {
  @override
  _Lista_AnimaisState createState() => _Lista_AnimaisState();
}

class _Lista_AnimaisState extends State<Lista_Animais> {
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(<Widget>[
        cardItem(),
        cardItem(),
        cardItem(),
        cardItem(),
        cardItem(),
      ]),
    );
  }
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          title: Text("Bruce Wayne"),
          subtitle: Text("09/05/2021"),
        ),
        Container(
          child: Image.asset("assets/banho.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text("Texto. "),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: <Widget>[
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
            ],
          ),
        ),
      ],
    ),
  );
}
