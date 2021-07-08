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
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<AnimalModel>>(
        future: _animalController.buscarAnimais(),
        initialData: [],
        builder: (context, snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.length,
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              : CircularProgressIndicator();
        },
      ),
    );
  }
}
