import 'package:flutter/material.dart';
import 'package:petshop/service/Api.dart';

class Lista_Animais extends StatefulWidget {
  @override
  _Lista_AnimaisState createState() => _Lista_AnimaisState();
}

class _Lista_AnimaisState extends State<Lista_Animais> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List>(
         future: Api.api.getAnimal(),
          initialData: [],
          builder: (context, snapshot) {
            return snapshot.hasData
                ? ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (x, int position) {
                      final item = snapshot.data[position];
                      return GestureDetector(
                         // onDoubleTap: () => Editar(context, item),
                          child: Card(
                            child: ListTile(
                              tileColor: const Color(0xFF506AD4),
                              title: Text(
                                "Animal: " + item.nome,
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "Idade: " + item.idade,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ));
                    },
                  )
                : Center(child: CircularProgressIndicator());
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //     context,
          //   MaterialPageRoute(
          //       builder: (context) => Cadastrar(
          //             codigoUsuario: widget.retornoAtenticacao.codigo,
          //             compras: null,
          //           ))).then((value) {
          // setState(() {
          //widget.createState();
          //}  );
          // }
          // );
        },
        child: Icon(
          Icons.pets,
          size: 30,
        ),
      ),
    );
  }
}

//             floatingActionButton.extended(
//               backgroundColor: const Color(0xff0277bd),
//               foregroundColor: Colors.white,
//               onPressed: () {
//                 // Respond to button press
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

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          title: Text("Bruce"),
          subtitle: Text("Idade: 1 ano"),
        ),
        Container(
          child: Image.asset("assets/banho.jpg"),
          width: 150,
          height: 200,
        ),
        Container(
          padding: EdgeInsets.all(10),
          //   child: Text("Banho dia 25/06/2021."),
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Text(
                    //item.nome,
                    //  ),
                  ],
                ),
              ]),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.green,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: () {
                  //TODO montar o diálogo de confirmação.
                  //Get.defaultDialog()
                },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
