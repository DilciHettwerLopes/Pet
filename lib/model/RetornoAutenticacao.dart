import "dart:convert";

class RetornoAutenticacao {
  String senha;
  String email;
  String nome;
  String id;
  String login;

  RetornoAutenticacao({this.id, this.login,this.senha,this.email, this.nome});

  factory RetornoAutenticacao.fromMap(Map<String, dynamic> json) =>
      RetornoAutenticacao(
          senha: json['senha'], email: json['email'], nome: json['nome']);

  Map<String, dynamic> toMap() =>
      {'id': id,'senha': senha, 'email': email, 'nome': nome, 'login': login};
  RetornoAutenticacao clientFromJson(String value) {
    final jsonData = json.decode(value);
    return RetornoAutenticacao.fromMap(jsonData);
  }

  String clientToJson(RetornoAutenticacao retornoAutenticacao) {
    final data = retornoAutenticacao.toMap();
    return json.encode(data);
  }
}
