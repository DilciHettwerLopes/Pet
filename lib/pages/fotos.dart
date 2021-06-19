import 'package:flutter/material.dart';

class Fotos extends StatefulWidget {
  @override
  _FotosState createState() => _FotosState();
}

class _FotosState extends State<Fotos> {
  @override
  Widget build(BuildContext context) {
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
          // leading: CircleAvatar(
          //   backgroundImage: NetworkImage(
          //       "https://baltaio.blob.core.windows.net/student-images/1edd5c50-bae9-11e8-8eb4-39de303632c1.jpg"),
          // ),
          title: Text("Bruce Wayne"),
          subtitle: Text("09/05/2021"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/post-picture-001.png"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text("Texto. "),
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
