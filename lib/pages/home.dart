import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/model/RetornoAutenticacao.dart';
import 'package:petshop/pages/adocao.dart';
//import 'package:petshop/pages/adote.dart';
import 'package:petshop/pages/fotos.dart';
import 'package:petshop/pages/lista_animais.dart';
import 'package:petshop/pages/user.dart';

void main() => runApp(const Home());

/// This is the main application widget.
class Home extends StatelessWidget {
  const Home({Key key, RetornoAutenticacao retornoAutenticacao})
      : super(key: key);

  static const String _title = 'Flutter Pet';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    //Todos os elementos dessa lista devem ser um Widget do tipo SilverList, dentro dele você pode por um Container() e fazer o que precisar.
    
    Adocao(),
    ListaAnimais(),
    Fotos(),
    User(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                floating: false,
                expandedHeight: Get.height / 4,
                flexibleSpace: Container(
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/capa.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      //conteudo da barra
                    ],
                  ),
                ),
              ),
              _widgetOptions.elementAt(_selectedIndex),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Adoção',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Animais',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Fotos',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Conta',
            backgroundColor: Colors.red,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[200],
        onTap: _onItemTapped,
      ),
    );
  }
}
