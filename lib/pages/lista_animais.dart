import 'package:flutter/material.dart';
import 'package:petshop/model/animal_model.dart';
import 'package:petshop/pages/cadastro.dart';
import 'package:petshop/service/Api.dart';

class Lista_Animais extends StatefulWidget {
  @override
  _Lista_AnimaisState createState() => _Lista_AnimaisState();
}

class _Lista_AnimaisState extends State<Lista_Animais> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List>(
        future: Api.getAnimal(),
        initialData: [],
        builder: (context,snapshot){
          return snapshot.hasData ? ListView.builder( itemCount: snapshot.data.length,
                    itemBuilder: (x, int position) {
                      final item = snapshot.data[position];
                      return GestureDetector(
                        onDoubleTap: () => print('abc'),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.arrow_drop_down_circle),
                                title: Text('Pet ' + item.nome),
                                subtitle: Text(
                                  'Imagem ' + item.idade,
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              )])));
                    }
        
//     return SliverList(
//       delegate: SliverChildListDelegate(<Widget>[
//         cardItem(),
//         cardItem(),
//         cardItem(),
//         cardItem(),
//         SizedBox(height: 15.0),
//         Column(
//           children: [
//             FloatingActionButton.extended(
//               backgroundColor: const Color(0xff0277bd),
//               foregroundColor: Colors.white,
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Cadastro()),
//                 );
//               },
//               icon: Icon(Icons.pets),
//               label: Text('Cadastrar'),
//             ),
//           ],
//         ),
//         SizedBox(height: 15.0),
//       ]),
//     );
//   }
// }

// Widget cardItem() {
//   return Card(
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(15.0),
//     ),
//     color: Colors.white,
//     child: Column(
//       mainAxisSize: MainAxisSize.max,
//       children: <Widget>[
//         ListTile(
//           leading: ConstrainedBox(
//             constraints: BoxConstraints(
//               minWidth: 0,
//               minHeight: 100,
//               maxWidth: 90,
//               maxHeight: 100,
//             ),
//             child: Image.asset('assets/banho.jpg', fit: BoxFit.cover),
//           ),
//           title: Text('Faisca'),
//           subtitle: Text('Idade: 4 anos'),
//         ),
//         ButtonTheme(
//           child: ButtonBar(
//             children: <Widget>[
//               TextButton.icon(
//                   onPressed: () {},
//                   icon: Icon(Icons.edit, color: Color(0xFF00C853)),
//                   label: Text('Editar')),
//               TextButton.icon(
//                 onPressed: () {},
//                 icon: Icon(Icons.delete, color: Color(0xFFF44336)),
//                 label: Text('Excluir'),
//               )
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }