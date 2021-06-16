import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/pages/fotos.dart';
import 'package:petshop/pages/lista_animais.dart';
import 'package:petshop/pages/status.dart';

void main() => runApp(const Home());

/// This is the main application widget.
class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  static const String _title = 'Flutter Pet';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Lista_Animais(),
    Status(),
    Fotos(),
    Text(
      'Index 3: Conta',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.redAccent,
      //   centerTitle: true,
      //   title: Text('Seja Bem-vindo'),
      //   actions: [
      //     Container(
      //       height: 50,
      //       width: 50,
      //       decoration: BoxDecoration(
      //           color: Colors.white,
      //           borderRadius: BorderRadius.circular(50),
      //           image: DecorationImage(
      //               image: AssetImage('assets/logo.png'),
      //               fit: BoxFit.scaleDown),
      //           boxShadow: [
      //             BoxShadow(
      //                 color: Colors.black54,
      //                 blurRadius: 40,
      //                 offset: Offset(20, 20))
      //           ]),
      //     ),
      //   ],
      // ),
      body: Stack(
          children: <Widget>[
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  pinned: true,
                  floating: false,
                  expandedHeight: Get.height / 4,
                  flexibleSpace: Container(
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/dog.png"),
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
                // SliverList(
                //   delegate: SliverChildListDelegate(
                //     <Widget>[
                //       Container( 
                //         //child: FutureBuilder<List<Lista_Animais>>(
                        //   future: Lista_Animais.api.get(),
                        //   builder: (
                        //     context,
                        //     snapshot,
                        //   ) =>
                        //       //listView
                        // ),
                //       ),
                //       SizedBox(height: 80)
                //     ],
                //   ),
                // ),
                Center(
        child: _widgetOptions.elementAt(_selectedIndex),
                )
              ],
            ),
          ],
      ),
                        
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.time_to_leave),
            label: 'Status',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Fotos',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Conta',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    
    );
    
  }
}
