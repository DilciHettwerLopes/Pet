import 'dart:convert';
import 'package:petshop/database/database.dart';
import 'package:petshop/model/Autenticacao_model.dart';
import 'package:petshop/model/Cliente_model.dart';
import 'package:petshop/model/RetornoAutenticacao.dart';
import 'package:http/http.dart' as http;
import 'package:petshop/model/Animal_model.dart';

class Api {
  static final String cabecalho = 'https://dipets.online/wspet/rest';

  Future<RetornoAutenticacao> validarLogin(Autenticacao autenticacao) async {
    Uri url = Uri.parse(cabecalho + '/cliente/login');

    final response = await http.post(url,
        headers: await getHeaders(), body: json.encode(autenticacao.toMap()));

    if (response.statusCode == 200) {
      RetornoAutenticacao user =
          RetornoAutenticacao.fromMap(jsonDecode(response.body));
      DatabaseLocal.instance.insert(RetornoAutenticacao(
          nome: user.nome,
          email: 'ana@teste.com',
          login: 'Ana',
          senha: user.senha,
          id: '123'));
      return user;
    } else {
      return null;
    }
  }

  Future<List<ClienteModel>> getCliente(int nomeCliente) async {
    print(nomeCliente);

    Uri url = Uri.http(cabecalho, '/cadastroCliente/' + nomeCliente.toString());

    final response = await http.get(url, headers: await getHeaders());

    if (response.statusCode == 200) {
      Iterable l = json.decode(response.body);

      return List<ClienteModel>.from(
          l.map((model) => ClienteModel.fromJson(model)));
    } else {
      return [];
    }
  }

//cadastro
  Future<ClienteModel> salvarcliente(ClienteModel clienteModel) async {
    Uri url = Uri.http(cabecalho, 'salvar');

    final response = await http.post(url,
        headers: await getHeaders(), body: json.encode(clienteModel.toJson()));

    if (response.statusCode == 200) {
      return ClienteModel.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  //sera utilizado na page conta
  Future<ClienteModel> editarCliente(ClienteModel clienteModel) async {
    Uri url = Uri.http(cabecalho, '/editar');

    final response = await http.put(url,
        headers: await getHeaders(), body: json.encode(clienteModel.toJson()));

    if (response.statusCode == 200) {
      return ClienteModel.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

// Lista de Animal
  Future<List<AnimalModel>> getAnimal() async {
    Uri url = Uri.parse(cabecalho + '/animal');

    final response = await http.get(url, headers: await getHeaders());

    if (response.statusCode == 200) {
      Iterable l = json.decode(response.body);

      return List<AnimalModel>.from(
          l.map((model) => AnimalModel.fromJson(model)));
    } else {
      return [];
    }
  }

// Fotos Animal
  Future<List<AnimalModel>> getAnimalFotos(int arquivoAnimal) async {
    print(arquivoAnimal);

    Uri url = Uri.http(cabecalho, '/fotosAnimal/' + arquivoAnimal.toString());

    final response = await http.get(url, headers: await getHeaders());

    if (response.statusCode == 200) {
      Iterable l = json.decode(response.body);

      return List<AnimalModel>.from(
          l.map((model) => AnimalModel.fromJson(model)));
    } else {
      return [];
    }
  }

// //cadastro
//   Future<List<Lista_animais_Model>> getlist(int nomeCliente) async {
//     print(nomeCliente);

//     Uri url = Uri.http(cabecalho, '/lista_animais/' + toString());

//     final response = await http.get(url, headers: await getHeadres());

//     if (response.statusCode == 200) {
//       Iterable l = json.decode(response.body);

//       return List<Lista_animaisModel>.from(
//           l.map((model) => Lista_animaisModel.fromJson(model)));
//     } else {
//       return [];
//     }
//   }

  Future<AnimalModel> salvarAnimal(AnimalModel animalModel) async {
    Uri url = Uri.http(cabecalho, 'salvar');

    final response = await http.post(url,
        headers: await getHeaders(), body: json.encode(animalModel.toJson()));

    if (response.statusCode == 200) {
      return AnimalModel.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  Future<Map<String, String>> getHeaders() async {
    Map<String, String> map = Map();
    map.addAll({'accept': 'application/json'});
    map.addAll({'content-type': 'application/json'});
    var id = await DatabaseLocal.instance.getid();
    if (id > 0) {
      map.addAll({'clienteid': id.toString() });
    }

    //token
    return map;
  }
}
