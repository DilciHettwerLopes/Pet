import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class Adocao extends StatefulWidget {
  @override
  _AdocaoState createState() => _AdocaoState();
}

class _AdocaoState extends State<Adocao> with TickerProviderStateMixin {
  List<String> _images = [
    "assets/capa.png",
    "assets/logo.png",
    "assets/capa.png",
    "assets/logo.png",
    "assets/capa.png",
    "assets/logo.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animais para adoção'),
        ),
        body: Center(
            child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: TinderSwapCard(
                    orientation: AmassOrientation.TOP,
                    totalNum: 6,
                    stackNum: 3,
                    maxWidth: MediaQuery.of(context).size.width * 0.9,
                    maxHeight: MediaQuery.of(context).size.width * 0.9,
                    minWidth: MediaQuery.of(context).size.width * 0.8,
                    minHeight: MediaQuery.of(context).size.width * 0.8,
                    cardBuilder: (context, index) => Card(
                            child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Image.asset(
                            '${_images[index]}',
                            fit: BoxFit.fill,
                          ),
                        ))))));
  }
}
