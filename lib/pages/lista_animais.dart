import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/controller/animal_controller.dart';
import 'package:petshop/model/animal_model.dart';

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
                    AnimalM  animal = List<AnimalM>.from(index.data)[key];
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
   return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          width: 400,
          height: 400,
          child: Image.asset("assets/banho.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(animal.nome),
        ),]));}
  //  return Card(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.end,
    // mainAxisSize: MainAxisSize.min,
    // children: <Widget>[
    //   ListTile(
        
        
    //    // leading: Image.asset("assets/banho.jpg"),
    //     title: Text('Nome: ' + animal.nome),
    //     subtitle: Text(
    //       animal.raca,
    //       style: TextStyle(color: Colors.black.withOpacity(0.6)),
    //     ),
    //   )]));
  //return Text(animal.nome);
  //TODO criar um exibicao melhorada do animal com sua respectiva imagem
