import 'package:flutter/material.dart';
import 'package:petshop/pages/lista_animais.dart';

class User extends StatefulWidget {
  User({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();

  get child => null;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(<Widget>[
      Form(
          key: _formkey,
          child: Column(children: <Widget>[
            SizedBox(height: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: 20),
                Text(
                  'Nome: ',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Expanded(
                  child: TextFormField(
                    style: TextStyle(color: Colors.grey),
                    controller: _nomeController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Preencha corretamente';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 50),
                Icon(
                  Icons.verified_user,
                  color: Color(0xFF204986),
                ),
                SizedBox(width: 20),
              ],
            )
          ])),
      Column(children: <Widget>[
        SizedBox(height: 25),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 20),
            Text(
              'Telefone: ',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Expanded(
              child: TextFormField(
                style: TextStyle(color: Colors.grey),
                controller: _nomeController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Preencha corretamente';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 50),
            Icon(
              Icons.verified_user,
              color: Color(0xFF204986),
            ),
            SizedBox(width: 20),
          ],
        )
      ]),
      Column(children: <Widget>[
        SizedBox(height: 25),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 20),
            Text(
              'Endereço: ',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Expanded(
              child: TextFormField(
                style: TextStyle(color: Colors.grey),
                controller: _nomeController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Preencha corretamente';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 50),
            Icon(
              Icons.verified_user,
              color: Color(0xFF204986),
            ),
            SizedBox(width: 20),
          ],
        )
      ]),
      Column(children: <Widget>[
        SizedBox(height: 25),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 20),
            Text(
              'Rede Social: ',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Expanded(
              child: TextFormField(
                style: TextStyle(color: Colors.grey),
                controller: _nomeController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Preencha corretamente';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 50),
            Icon(
              Icons.verified_user,
              color: Color(0xFF204986),
            ),
            SizedBox(width: 20),
          ],
        )
      ]),
      SizedBox(height: 20.0),
      SizedBox(
        height: 20,
      ),
      Container(
        height: 60,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [
              Color(0xFFF58524),
              Color(0XFFF92B7F),
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: SizedBox.expand(
          child: TextButton(
            child: Text(
              "Atualizar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListaAnimais()),
              );
            },
          ),
        ),
      )
    ])

        // onPressed: () {
        //   Lista_Animais();
        // },
        );
  }
}
