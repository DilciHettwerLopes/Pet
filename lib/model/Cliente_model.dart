class ClienteModel {
  String id;
  String nome;
  String telefone;
  String redesocial;
  String observacao;
  String login;
  String senha;
  String endereco;
  String cidade;

  ClienteModel(
      {this.id,
      this.nome,
      this.telefone,
      this.redesocial,
      this.observacao,
      this.login,
      this.senha,
      this.endereco,
      this.cidade});

  ClienteModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    telefone = json['telefone'];
    redesocial = json['redesocial'];
    observacao = json['observacao'];
    login = json['login'];
    senha = json['senha'];
    endereco = json['endereco'];
    cidade = json['cidade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['telefone'] = this.telefone;
    data['redesocial'] = this.redesocial;
    data['observacao'] = this.observacao;
    data['login'] = this.login;
    data['senha'] = this.senha;
    data['endereco'] = this.endereco;
    data['cidade'] = this.cidade;
    return data;
  }
}
