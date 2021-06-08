class Listaanimais_Model {
  String id;
  String nome;
  String raca;
  String descricao;
  String idade;
  String peso;
  String cliente_id;

  Listaanimais_Model(
      {this.id,
      this.nome,
      this.raca,
      this.descricao,
      this.idade,
      this.peso,
      this.cliente_id});

  Listaanimais_Model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    raca = json['raca'];
    descricao = json['descricao'];
    idade = json['idade'];
    peso = json['peso'];
    cliente_id = json['cliente_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['raca'] = this.raca;
    data['descricao'] = this.descricao;
    data['idade'] = this.idade;
    data['peso'] = this.peso;
    data['cliente_id'] = this.cliente_id;
    return data;
  }
}
