import 'dart:convert';
import 'package:petshop/model/Autenticacao_model.dart';
import 'package:petshop/model/Cliente_model.dart';
import 'package:petshop/model/RetornoAutenticacao.dart';
import 'package:http/http.dart' as http;

class Provider {
  static final Provider request = Provider();
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
  Future<List<ClienteModel>> getCliente(int nomeCliente) async {
    print(nomeCliente);

    Uri url = Uri.http(cabecalho, '/cadastroCliente/' + nomeCliente.toString());

    final response = await http.get(url, headers: getHeadres());

    if (response.statusCode == 200) {
      Iterable l = json.decode(response.body);

      return List<ClienteModel>.from(
          l.map((model) => ClienteModel.fromJson(model)));
    } else {
      return [];
    }
  }

  Future<ClienteModel> salvacliente(ClienteModel clienteModel) async {
    Uri url = Uri.http(cabecalho, 'salvar');

    final response = await http.post(url,
        headers: getHeadres(), body: json.encode(clienteModel.toJson()));

    if (response.statusCode == 200) {
      return ClienteModel.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  // login
  //sera utilizado na page conta
  Future<ClienteModel> editarUsuario(ClienteModel clienteModel) async {
    Uri url = Uri.http(cabecalho, '/editar');

    final response = await http.put(url,
        headers: getHeadres(), body: json.encode(clienteModel.toJson()));

    if (response.statusCode == 200) {
      return ClienteModel.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

// //cadastro
//   Future<List<Lista_animais_Model>> getlist(int nomeCliente) async {
//     print(nomeCliente);

//     Uri url = Uri.http(cabecalho, '/lista_animais/' + toString());

//     final response = await http.get(url, headers: getHeadres());

//     if (response.statusCode == 200) {
//       Iterable l = json.decode(response.body);

//       return List<Lista_animaisModel>.from(
//           l.map((model) => Lista_animaisModel.fromJson(model)));
//     } else {
//       return [];
//     }
//   }
  Map<String, String> getHeadres() {
    Map<String, String> map = Map();
    map.addAll({'accept': 'application/json'});
    map.addAll({'content-type': 'application/json'});
    return map;
  }
}
