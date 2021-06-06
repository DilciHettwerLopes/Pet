import 'dart:convert';
import 'package:PetShop/model/Autenticacao_model.dart';
import 'package:PetShop/model/RetornoAutenticacao.dart';
import 'package:PetShop/model/usuario_model.dart';
import 'package:http/http.dart' as http;

class Request {
  static final Request request = Request();
  static final String cabecalho = '10.10.199.175';
  // static final String cabecalho='192.168.0.104:8080';

  Future<RetornoAutenticacao> validarLogin(Autenticacao autenticacao) async {
    Uri url = Uri.http(cabecalho, '/autenticacaoService');

    final response = await http.post(url,
        headers: getHeadres(), body: json.encode(autenticacao.toMap()));

    if (response.statusCode == 200) {
      return RetornoAutenticacao.fromMap(jsonDecode(response.body));
    } else {
      return null;
    }
  }

//cadastro
  Future<List<UsuarioModel>> getUsuario(int nomeUsuario) async {
    print(nomeUsuario);

    Uri url = Uri.http(cabecalho, '/cadastroUsuario/' + nomeUsuario.toString());

    final response = await http.get(url, headers: getHeadres());

    if (response.statusCode == 200) {
      Iterable l = json.decode(response.body);

      return List<UsuarioModel>.from(
          l.map((model) => UsuarioModel.fromJson(model)));
    } else {
      return [];
    }
  }

  Future<UsuarioModel> salvarUsuario(UsuarioModel usuarioModel) async {
    Uri url = Uri.http(cabecalho, 'salvar');

    final response = await http.post(url,
        headers: getHeadres(), body: json.encode(usuarioModel.toJson()));

    if (response.statusCode == 200) {
      return UsuarioModel.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

// login

  //sera utilizado na page conta
  // Future<UsuarioModel> editarUsuario(UsuarioModel usuarioModel) async {
  //   Uri url = Uri.http(cabecalho, '/editar');

  //   final response = await http.put(url,
  //       headers: getHeadres(), body: json.encode(usuarioModel.toJson()));

  //   if (response.statusCode == 200) {
  //     return UsuarioModel.fromJson(jsonDecode(response.body));
  //   } else {
  //     return null;
  //   }
  // }

  Map<String, String> getHeadres() {
    Map<String, String> map = Map();
    map.addAll({'accept': 'application/json'});
    map.addAll({'content-type': 'application/json'});
    return map;
  }
}
