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
    return Scaffold(
      body: FutureBuilder<List<AnimalM>>(
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
                  itemCount: index.data.length,
                  itemBuilder: (context, key) {
                    AnimalM animal = List<AnimalM>.from(index.data)[key];
                    return Card(
                      child: ListTile(
                        leading: Icon(Icons.arrow_drop_down_circle),
                        title: Text('Pet ' + animal.nome),
                        // subtitle: Text(
                        //   'Imagem ' +
                        //       animal
                        //           .arquivo, //TODO criar um Image.network. O retorno da api na posição arquivo deve ser a URL completa da imagem.
                        //   style:
                        //       TextStyle(color: Colors.black.withOpacity(0.6)),
                        // ),
                      ),
                    );
                  },
                );
              }
          }
          return null;
        },
      ),
    );
  }
}
