import 'package:PetShop/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.05,
          child: Stack(children: <Widget>[
            Container(
              padding: EdgeInsets.only(
            /*    left: pDefaultPadding,
                right: pDefaultPadding,
                bottom: 5 + pDefaultPadding,*/
              ),
              height: size.height * 0.05 - 30,
              decoration: BoxDecoration(
                  color: pPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
              child: Row(children: <Widget>[
                Text(
                  'Seja Bem Vindo!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset("assets/images/111.jpg"),
              ]),
            ),
          ]),
        ),
      ],
    );
    child:
    Column(
      children: [
        Expanded(
          child: Container(),
        ),
        _buildBullets()
      ],
    );
  }

  Widget _buildBullets() {
    return Padding(
      padding: EdgeInsets.all(8),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.black),
        ),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.black),
        ),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.black),
        ),
      ]),
    );
  }

}
