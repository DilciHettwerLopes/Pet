import 'package:PetShop/controller/cliente_controller.dart';
import 'package:PetShop/controller/usuario_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final ClienteController _clienteController = Get.put(ClienteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
        backgroundColor: Colors.red,
        
      ),
      body: Form(
        key: _clienteController.form,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              TextFormField(
                controller: _clienteController.nomeCadastroController,
                decoration: InputDecoration(hintText: "Digite o nome"),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autofocus: true,
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return "Campo Obrigatório";
                  }
                },
              ),
              TextFormField(
                controller: _clienteController.loginCadastroController,
                decoration: InputDecoration(hintText: "Digite o email"),
                cursorRadius: Radius.zero,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Campo Obrigatório";
                  }
                },
              ),
              TextFormField(
                controller: _clienteController.senhaCadastroController,
                decoration: InputDecoration(hintText: "Digite a senha"),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autofocus: true,
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return "Campo Obrigatório";
                  }
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.save_alt,
          ),
          onPressed: () {
            _clienteController.salvarCliente();
          },
        ),
      );
  }
}
