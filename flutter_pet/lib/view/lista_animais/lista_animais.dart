import 'package:PetShop/model/RetornoAutenticacao.dart';
import 'package:PetShop/service/request.dart';
import 'package:flutter/material.dart';

class Lista_Animais extends StatelessWidget {
  final RetornoAutenticacao retornoAutenticacao;
   Lista_Animais({Key key, @required this.retornoAutenticacao}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Seja Bem-vindo'),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.scaleDown),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 40,
                      offset: Offset(20, 20))
                ]),
          ),
        ],
      ),
      body: FutureBuilder<List>(
          future: Request.request.getList(widget.retornoAtenticacao.codigo)
      );
    );

  };
}

