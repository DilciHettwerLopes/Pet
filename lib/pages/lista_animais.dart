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
        SizedBox(height: 15.0),
        Column(
          children: [
            FloatingActionButton.extended(
              backgroundColor: const Color(0xff0277bd),
              foregroundColor: Colors.white,
              onPressed: () {
                // Respond to button press
              },
              icon: Icon(Icons.pets),
              label: Text('Cadastrar'),
            ),
          ],
        ),
        SizedBox(height: 15.0),
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
          title: Text("Bruce"),
          subtitle: Text("Idade: 1 ano"),
        ),
        Container(
          child: Image.asset("assets/banho.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text("Banho dia 25/06/2021."),
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
