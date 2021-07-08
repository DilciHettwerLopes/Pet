class AnimalModel {
  String id;
  String nome;
  String raca;
  String descricao;
  String idade;
  String peso;
  Null adocao;
  String clienteId;
  Null arquivo;

  AnimalModel(
      {this.id,
      this.nome,
      this.raca,
      this.descricao,
      this.idade,
      this.peso,
      this.adocao,
      this.clienteId,
      this.arquivo});

  AnimalModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    raca = json['raca'];
    descricao = json['descricao'];
    idade = json['idade'];
    peso = json['peso'];
    adocao = json['adocao'];
    clienteId = json['cliente_id'];
    arquivo = json['arquivo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['raca'] = this.raca;
    data['descricao'] = this.descricao;
    data['idade'] = this.idade;
    data['peso'] = this.peso;
    data['adocao'] = this.adocao;
    data['cliente_id'] = this.clienteId;
    data['arquivo'] = this.arquivo;
    return data;
  }
}
