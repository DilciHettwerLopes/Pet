import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/controller/animal_controller.dart';
import 'package:petshop/model/animal_model.dart';
import 'package:petshop/pages/cadastro.dart';

class ListaAnimais extends StatefulWidget {
  @override
  _ListaAnimaisState createState() => _ListaAnimaisState();
}

//class _ListaAnimaisState extends State<ListaAnimais> {
 //
 // final AnimalController _animalController = Get.put(AnimalController());

class _ListaAnimaisState extends State<ListaAnimais> {
    Widget build(BuildContext context) {
      
return SliverList(
      delegate: SliverChildListDelegate(<Widget>[
        cardItem(),
        cardItem(),
        cardItem(),
      
      ]),
    );
  }
}
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(<Widget>[
      // FutureBuilder<List<AnimalM>>(
      //   future: _animalController.buscarAnimais(),
      //   builder: (context, index) {
      //     switch (index.connectionState) {
      //       case ConnectionState.none:
      //       case ConnectionState.waiting:
      //         return Center(
      //           child: CircularProgressIndicator(),
      //         );
      //         break;
      //       case ConnectionState.active:
      //       case ConnectionState.done:
      //         if (index.data != null && index.data.isNotEmpty) {
      //           return ListView.builder(
      //             scrollDirection: Axis.vertical,
      //             shrinkWrap: true,
      //             itemCount: index.data.length,
      //             itemBuilder: (context, key) {
      //               AnimalM animal = List<AnimalM>.from(index.data)[key];
                 
                //    return cardItem(animal);
      //             },
      //           );
      //         }
      //     }
      //     return null;
      //   },
      // ),
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
    
    ]));
  }


// Widget cardItem(AnimalM animal) {
//   return Card(
//       child: Column(
//         //mainAxisSize: MainAxisSize.min, 
//       children: <Widget>[
//     Container(
//       decoration:
//           BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
//       width: 400,
//       height: 400,
//       child: Image.asset("assets/banho.jpg"),
//     ),
//     Container(
//       width: 400,
//       height: 400,
//     //  padding: EdgeInsets.all(10),
//       child: Text(animal.nome),
//     ),
//   ]));
// }
  

  Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
         ListTile(),
         Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      width: 200,
      height: 200,
      child: Image.asset("assets/put2.jpg"),
    ),
         Container(
      padding: EdgeInsets.all(10),
    //  child: Text(animal.nome),
        ),
        // ButtonTheme(
        //   child: ButtonBar(
        //     children: <Widget>[
        //       TextButton(
        //         child: Icon(Icons.favorite),
        //         onPressed: () {},
        //       ),
        //       TextButton(
        //         child: Icon(Icons.share),
        //         onPressed: () {},
        //       ),
        //     ],
        //   ),
       // ),
      ],
    ),
  );
}
  //return Text(animal.nome);
  //TODO criar um exibicao melhorada do animal com sua respectiva imagem

 