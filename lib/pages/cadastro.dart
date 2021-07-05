import 'package:flutter/material.dart';
import 'package:petshop/pages/lista_animais.dart';

class Cadastro extends StatefulWidget {
  Cadastro({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de Animais'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 80, left: 20, right: 20),
          child: ListView(children: <Widget>[
            TextFormField(
              // ignore: deprecated_member_use
              cursorColor: Theme.of(context).cursorColor,
              initialValue: '',
              maxLength: 20,
              decoration: InputDecoration(
                icon: Icon(Icons.pets_outlined),
                labelText: 'Nome',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              // ignore: deprecated_member_use
              cursorColor: Theme.of(context).cursorColor,
              initialValue: '',
              maxLength: 20,
              decoration: InputDecoration(
                icon: Icon(Icons.favorite),
                labelText: 'Raça',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),
            TextFormField(
              // ignore: deprecated_member_use
              cursorColor: Theme.of(context).cursorColor,
              initialValue: '',
              maxLength: 20,
              decoration: InputDecoration(
                icon: Icon(Icons.article),
                labelText: 'Descrição',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),
            TextFormField(
              // ignore: deprecated_member_use
              cursorColor: Theme.of(context).cursorColor,
              initialValue: '',
              maxLength: 20,
              decoration: InputDecoration(
                icon: Icon(Icons.alarm),
                labelText: 'Idade',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),
            TextFormField(
              // ignore: deprecated_member_use
              cursorColor: Theme.of(context).cursorColor,
              initialValue: '',
              maxLength: 20,
              decoration: InputDecoration(
                icon: Icon(Icons.fitness_center),
                labelText: 'Peso',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),
          ]),
        ),
        persistentFooterButtons: <Widget>[
          Column(
            children: [
              FloatingActionButton.extended(
                backgroundColor: const Color(0xff0277bd),
                foregroundColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lista_Animais()),
                  );
                },
                label: Text('Salvar'),
              ),
            ],
          )
        ]);
  }
}
