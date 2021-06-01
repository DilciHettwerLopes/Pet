import 'package:PetShop/view/foto/foto.dart';
import 'package:PetShop/view/home/home_controller.dart';
import 'package:PetShop/view/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            /*IndexedStack(
            index: controller.tabIndex,
            children: [
              HomePage(),
              Foto(),
              Status(),
              Conta(),
            ],
          )*/
            child: Text("Pet Shop"),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.redAccent,
        selectedItemColor: Colors.blueAccent,
        //  onTap: controller.changeTabIndex,
        //  currentIndex: controller.tabIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          _bottomNavigationBarItem(
            icon: CupertinoIcons.home,
            label: 'Home',
          ),
          _bottomNavigationBarItem(
            icon: CupertinoIcons.camera,
            label: 'Fotos',
          ),
          _bottomNavigationBarItem(
            icon: CupertinoIcons.car_detailed,
            label: 'Status',
          ),
          _bottomNavigationBarItem(
            icon: CupertinoIcons.person,
            label: 'Conta',
          ),
        ],
      ),
    );
  }

  _bottomNavigationBarItem({IconData icon, String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
