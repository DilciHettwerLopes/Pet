import 'package:flutter/material.dart';


class Fotos extends StatefulWidget {
  @override
  _FotosState createState() => _FotosState();
}

class _FotosState extends State<Fotos> {
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
        cardItem(),
        cardItem(),
        cardItem(),
        cardItem(),
      ]),
    );
  }
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          // title: Text("Bruce Wayne"),
          // subtitle: Text("09/05/2021"),
         // trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/post-picture-001.png"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text("Banho no dia 02/07/2021, peso: 10 kg"),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: <Widget>[
              TextButton(
                child: Icon(Icons.favorite),
                onPressed: () {},
              ),
              TextButton(
                child: Icon(Icons.share),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
