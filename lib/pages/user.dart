import 'package:flutter/material.dart';

class User extends StatefulWidget {
  User({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Form(
              key: _formkey,
              child: Column(children: <Widget>[
                SizedBox(height: 25),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(width: 20),
                    Text(
                      'Nome: ',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey),
                        controller: _nomeController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Preencha corretamente';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 50),
                    Icon(
                      Icons.verified_user,
                      color: Color(0xFF204986),
                    ),
                    SizedBox(width: 20),
                  ],
                )
              ]))
        ],
      ),
    );
  }
}
