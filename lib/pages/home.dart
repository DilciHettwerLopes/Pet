import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/pages/fotos.dart';

void main() => runApp(const Home());

/// This is the main application widget.
class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
// SingleChildScrollView(
//   child: Container(
//     child: Column(children: [
//     Fotos()
//     ],),
//   ), 
// )
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Status',
      style: optionStyle,
    ),
   Container(
     child: Column(children: [
       
     ],),
   ),
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
       appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text('Seja Bem-vindo'),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.scaleDown),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 40,
                      offset: Offset(20, 20))
                ]),
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
