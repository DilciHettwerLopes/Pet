import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/controller/animal_controller.dart';
import 'package:petshop/model/animal_model.dart';
import 'package:petshop/pages/cadastro.dart';

class ListaAnimais extends StatefulWidget {
  @override
  _ListaAnimaisState createState() => _ListaAnimaisState();
}

class _ListaAnimaisState extends State<ListaAnimais> {
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
                  scrollDirection: Axis.vertical,
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
     SizedBox(height: 15.0),
        Column(
          children: [
            FloatingActionButton.extended(
              backgroundColor: const Color(0xff0277bd),
              foregroundColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cadastro()),
                );
              },
              icon: Icon(Icons.pets),
              label: Text('Cadastrar'),
            ),
             SizedBox(height: 15.0),
          ],
        ),
    ]
    ));
  }
}

Widget cardItem(AnimalM animal) {
  return Card(
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
    Container(
        child: Column(children: [
      ListTile(
        leading: Image.asset("assets/banho.jpg"),
        //leading:  Image.network(animal.arquivo),
        title: Text('Nome: ' + animal.nome),
        subtitle: Text(
          animal.descricao,
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
      ),
    ])),
  ]));
}
  
  //return Text(animal.nome);
  //TODO criar um exibicao melhorada do animal com sua respectiva imagem
