import 'package:PetShop/model/Listaanimais_model.dart';
import 'package:PetShop/model/RetornoAutenticacao.dart';
import 'package:PetShop/service/request.dart';
import 'package:PetShop/view/routes/app_routes.dart';
import 'package:flutter/material.dart';

class Lista_Animais extends StatelessWidget {
  final RetornoAutenticacao retornoAutenticacao;
   Lista_Animais({Key key, @required this.retornoAutenticacao}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    final Request listaanimais_model = Request();

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Animais'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
            Navigator.of(context).pushNamed(
              AppRoutes.FORMULARIO
            );
            },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: listaanimais_model.count,
          itemBuilder: (ctx, i) => Lista_Animais(listaanimais.byIndex(i))),
    );
  }
}