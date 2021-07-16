import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/controller/animal_controller.dart';
import 'package:petshop/model/animal_model.dart';

class Lista_Animais extends StatefulWidget {
  @override
  _Lista_AnimaisState createState() => _Lista_AnimaisState();
}

class _Lista_AnimaisState extends State<Lista_Animais> {
  final AnimalController _animalController = Get.put(AnimalController());

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(<Widget>[
      FutureBuilder<List<AnimalM>>(
        future: _animalController.buscarAnimais(),
        builder: (context, index) {
          switch (index.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.active:
            case ConnectionState.done:
              if (index.data != null && index.data.isNotEmpty) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: index.data.length,
                  itemBuilder: (context, key) {
                    AnimalM animal = List<AnimalM>.from(index.data)[key];
                    return cardItem(animal);
                  },
                );
              }
          }
          return null;
        },
      ),
    ]));
  }
}

Widget cardItem(AnimalM animal) {
  return Text(animal.nome);
  //TODO criar um exibicao melhorada do animal com sua respectiva imagem
}
