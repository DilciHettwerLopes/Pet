import 'package:PetShop/model/usuario_model.dart';
import 'package:PetShop/service/request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsuarioController extends GetxController {
  //listOfContacts é uma lista observável, quando sofrer atualizações
  //ela mesma comunica os compomentes que estão utilizando
  var listOfContacts = []
      .obs; //.obs é responsável por informar ao Getx que a variável é observável e toda vez que ele sofrer alterações, deve ser comunicado os componentes que estão dentro do Obx()
  //declaração dos controladores de textos do formulário
  TextEditingController nomeCadastroController = TextEditingController();
  TextEditingController emailCadastroController = TextEditingController();
  TextEditingController senhaCadastroController = TextEditingController();

  GlobalKey<FormState> form = GlobalKey<FormState>();

  salvarUsuario() async {
    UsuarioModel usuarioModel = UsuarioModel(
      nome: nomeCadastroController.text,
      email: emailCadastroController.text,
      senha: senhaCadastroController.text,
    );

   // await Request.request.salvarUsuario(usuarioModel);
  }
}
