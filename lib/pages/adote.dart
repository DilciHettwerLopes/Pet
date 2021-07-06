import 'package:flutter/material.dart';
import 'package:petshop/pages/cadastro.dart';

class Adote extends StatefulWidget {
  @override
  _AdoteState createState() => _AdoteState();
}

class _AdoteState extends State<Adote> {
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
              backgroundColor: const Color(0xffd50000),
              foregroundColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cadastro()),
                );
              },
              icon: Icon(Icons.favorite),
              label: Text('Adotar'),
            ),
          ],
        ),
        SizedBox(height: 15.0),
        Container(
          child: Text(
            'Amor não se compra, amor se conquista.',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}

Widget cardItem() {
  return Card(
        child: Image.asset('assets/banho.jpg', fit: BoxFit.cover),
  );
}
