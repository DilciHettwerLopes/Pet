import 'package:flutter/material.dart';
import 'package:petshop/pages/cadastro.dart';

class Adocao extends StatefulWidget {
  @override
  _AdocaoState createState() => _AdocaoState();
}

class _AdocaoState extends State<Adocao> {
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: FutureBuilder<List>(
    //     future: Api.getAnimal(),
    //     initialData: List(),
    //     builder: (context,snapshot){
    //       return snapshot.hasData ? ListView.builder( itemCount: snapshot.data.length,
    //                 itemBuilder: (x, int position) {
    //                   final item = snapshot.data[position];
    //                   return GestureDetector(
    //                     onDoubleTap: () => print('abc'),
    //                     child: Card(
    //                       clipBehavior: Clip.antiAlias,
    //                       child: Column(
    //                         children: [
    //                           ListTile(
    //                             leading: Icon(Icons.arrow_drop_down_circle),
    //                             title: Text('Pet ' + item.nome),
    //                             subtitle: Text(
    //                               'Imagem ' + item.idade,
    //                               style: TextStyle(
    //                                   color: Colors.black.withOpacity(0.6)),
    //                             ),
    //                           )

    return SliverList(
      delegate: SliverChildListDelegate(<Widget>[
        cardItem(),
      ]),
    );

  }
}

Widget cardItem() {
  String textcenter;
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
          child: Text("Gato, 03 meses"),
        ),
        Container(
          width: 400,
          height: 400,
          child: Image.asset("assets/gato1.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text("Gato, 02 meses"),
        ),
        Container(
          width: 400,
          height: 400,
          child: Image.asset("assets/cao3.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text("Cachorro, 06 meses"),
        ),
        Container(
          width: 450,
          height: 450,
          child: Image.asset("assets/cao2.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text("Cachorro, 03 meses"),
        ),
        Column(
          children: [
            FloatingActionButton.extended(
              backgroundColor: const Color(0xffd50000),
              foregroundColor: Colors.white,
              onPressed: () {
                
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Cadastro()),
                // );
              },
              icon: Icon(Icons.favorite),
              label: Text('Adotar'),
            ),
          ],
        ),
        SizedBox(height: 15.0),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Amor não se compra, amor se conquista.',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    ),
  );
}


