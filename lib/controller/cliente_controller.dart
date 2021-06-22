import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/model/Cliente_model.dart';
import 'package:petshop/service/Api.dart';

class ClienteController extends GetxController {
  //listOfContacts é uma lista observável, quando sofrer atualizações
  //ela mesma comunica os compomentes que estão utilizando
  var listOfContacts = []
      .obs; //.obs é responsável por informar ao Getx que a variável é observável e toda vez que ele sofrer alterações, deve ser comunicado os componentes que estão dentro do Obx()
  //declaração dos controladores de textos do formulário
  TextEditingController nomeCadastroController = TextEditingController();
  TextEditingController telefoneCadastroController = TextEditingController();
  TextEditingController redesocialCadastroController = TextEditingController();
  TextEditingController observacaoCadastroController = TextEditingController();
  TextEditingController loginCadastroController = TextEditingController();
  TextEditingController senhaCadastroController = TextEditingController();
  TextEditingController enderecoCadastroController = TextEditingController();
  TextEditingController cidadeCadastroController = TextEditingController();

  GlobalKey<FormState> form = GlobalKey<FormState>();
  final api = Api();
  salvarCliente() async {
    ClienteModel clienteModel = ClienteModel(
      nome: nomeCadastroController.text,
      telefone: telefoneCadastroController.text,
      redesocial: redesocialCadastroController.text,
      observacao: observacaoCadastroController.text,
      login: loginCadastroController.text,
      senha: senhaCadastroController.text,
      endereco: enderecoCadastroController.text,
    );

    await api.salvarcliente(clienteModel);
  }
}
