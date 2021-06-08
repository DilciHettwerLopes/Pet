import 'package:PetShop/model/Autenticacao_model.dart';
import 'package:PetShop/model/RetornoAutenticacao.dart';
import 'package:PetShop/service/request.dart';
import 'package:PetShop/view/lista_animais/lista_animais.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key, this.logincliente}) : super(key: key);
  final String logincliente;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final loginController = TextEditingController();
  final senhaController = TextEditingController();

  login({BuildContext context}) async {
    RetornoAutenticacao retorno = await Request.request.validarLogin(
    Autenticacao(login:loginController.text,senha:senhaController.text));

     if (retorno != null) {
       Navigator.push(
           context,
           MaterialPageRoute(
               builder: (context) => Lista_Animais(retornoAutenticacao: retorno)
             ));
     }
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.logincliente),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormField(
                  controller: loginController,
                  onChanged: (value) {},
                  validator: (String value) {
                    return value.length > 3 ? null : "Informe um login valido";
                  },
                  decoration: InputDecoration(
                      hintText: 'Informe seu login', labelText: 'LOGIN'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormField(
                  controller: senhaController,
                  validator: (String value) {
                    return value.length > 3 ? null : "Informe uma senha valida";
                  },
                  decoration: InputDecoration(
                      hintText: 'Informe sua senha', labelText: 'SENHA'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Color(0xff474747),
                  onPressed: () {
                //    login(context: context);
                  },
                  child: Text(
                    'Entrar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
