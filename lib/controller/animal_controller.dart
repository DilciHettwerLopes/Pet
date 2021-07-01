import 'package:flutter/material.dart';
import 'package:petshop/service/Api.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:petshop/model/Animal_model.dart';
import 'package:get/get.dart';

class AnimalController extends GetxController {
  var listOfContacts = []
      .obs; //.obs é responsável por informar ao Getx que a variável é observável e toda vez que ele sofrer alterações, deve ser comunicado os componentes que estão dentro do Obx()
  //declaração dos controladores de textos do formulário
  TextEditingController nomeListController = TextEditingController();
  TextEditingController racaListController = TextEditingController();
  TextEditingController descricaoListController = TextEditingController();
  TextEditingController idadeListController = TextEditingController();
  TextEditingController pesoListController = TextEditingController();
  TextEditingController adocaoListController = TextEditingController();
  TextEditingController clienteIdLisController = TextEditingController();

  GlobalKey<FormState> form = GlobalKey<FormState>();

  final api = Api();

  get animalmodel => null; // verificar

  salvarAnimal() async {
    AnimalModel animalModel = AnimalModel(
      nome: nomeListController.text,
      raca: racaListController.text,
      descricao: descricaoListController.text,
      idade: idadeListController.text,
      peso: pesoListController.text,
     
    );

    await api.salvarAnimal(animalModel);
  }
}
