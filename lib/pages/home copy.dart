import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:petshop/controller/home_controller.dart';

class Home extends GetView<HomeController> {
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
                borderRadius: BorderRadius.circular(30),
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
      body: Container(
        child: SafeArea(
          child: Center(
          //   IndexedStack(
          //   index: controller.tabIndex,
          //   children: [
          //     Home(),
          //     Status(),
          //     Foto(),
          //     Conta(),
          //   ],
          // )
            child: Text("Lista de animais"),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.redAccent,
        selectedItemColor: Colors.blueAccent,
        //  onTap: controller.changeTabIndex,
        //   currentIndex: controller.tabIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          _bottomNavigationBarItem(
            Icon: Icon(Icons.home),
            label: 'Home',
          ),
          
          _bottomNavigationBarItem(
            Icon: Icon(Icons.pets),
            label: 'Status',
          ),
          _bottomNavigationBarItem(
            Icon: Icon(Icons.camera_alt),
            label: 'Fotos',
          ),
          _bottomNavigationBarItem(
            Icon: Icon(Icons.person),
            label: 'Conta',
          ),
        ],
      ),
    );
  }

  _bottomNavigationBarItem({IconData icon, String label, Icon Icon}) {
    return BottomNavigationBarItem(
      icon: Icon,
      label: label,
    );
  }
}
