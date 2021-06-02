import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key, this.emailusuario}) : super(key: key);
  final String emailusuario;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final loginController = TextEditingController();
  final senhaController = TextEditingController();

 // login({BuildContext context}) async {
    //RetornoAutenticacao retorno = await Request.request.validarLogin(
    //   Autenticacao(senha:senhaController.text,login:loginController.text  ));

    // if (retorno != null) {
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => HomePage(retornoAtenticacao: retorno)));
    // }
 // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.emailusuario),
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
