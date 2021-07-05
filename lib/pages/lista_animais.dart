import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/pages/cadastro.dart';
import 'package:petshop/pages/fotos.dart';

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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cadastro()),
                );
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
          width: 200,
          height: 200,
        ),
        Container(
          padding: EdgeInsets.all(10),
          //   child: Text("Banho dia 25/06/2021."),
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Text(
                    //item.nome,
                    //  ),
                  ],
                ),
              ]),
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
                  onPressed: () => Get.to(Cadastro()))
            ],
          ),
        ),
      ],
    ),
  );
}
