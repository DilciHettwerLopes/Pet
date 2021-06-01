//import 'package:PetShop/view/home/home_page.dart';
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
     // home: HomePage(),

    );
  }
}
