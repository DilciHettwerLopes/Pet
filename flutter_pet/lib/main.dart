import 'package:PetShop/view/cadastro/cadastro.dart';
import 'package:PetShop/view/login/login.dart';
import 'package:PetShop/view/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet',
      theme: ThemeData( 
      scaffoldBackgroundColor:pBackgroundColor,     
      primaryColor: pPrimaryColor,
      textTheme: Theme.of(context).textTheme.apply(bodyColor:pTextColor),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
          AppRoutes.CADASTRO: (_) => Cadastro(),
          AppRoutes.LOGIN: (_) => Login(),
      }
    );
  }
}
