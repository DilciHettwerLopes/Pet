class UsuarioModel {
  String id;
  String nome;
  String email;
  String senha;
  String funcao;

  UsuarioModel({this.id, this.nome, this.email, this.senha, this.funcao});

  UsuarioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    email = json['email'];
    senha = json['senha'];
    funcao = json['funcao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['funcao'] = this.funcao;
    return data;
  }
}