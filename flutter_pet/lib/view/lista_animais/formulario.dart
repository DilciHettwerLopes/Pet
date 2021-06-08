import 'package:PetShop/model/Listaanimais_model.dart';
import 'package:PetShop/view/lista_animais/lista_animais.dart';
import 'package:flutter/material.dart';


class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _form = GlobalKey<FormState>();

  final Map<String, String> _formData = {};

  void _loadFormData(Lista_animais listaanimais) {
    if (listaanimais != null) {
      _formData['id'] = listaanimais.id;
      _formData['nome'] = listaanimais.nome;
       _formData['raca'] = listaanimais.raca;
        _formData['descricao'] = listaanimais.descricao;
      _formData['idade'] = listaanimais.idade;
       _formData['peso'] = listaanimais.peso;
      _formData['imagem'] = listaanimais.imagem;
      
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final Listaanimais listaanimais = ModalRoute.of(context).settings.arguments;
    _loadFormData(Listaanimais);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de Usuário'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                final isValid = _form.currentState.validate();
                if (isValid) {
                  _form.currentState.save();
                  Listaanimais_Model.of<Lista_Animais>(context, listen: false).put(listaanimais(
                    id: _formData['id'],
                    nome: _formData['nome'],
                    raca: _formData['raca'],
                    descricao: _formData['descricao'],
                    idade: _formData['idade'],
                    peso: _formData['peso'],
                    imagem: _formData['imagem'],
                  ));
                  Navigator.of(context).pop();
                }
              })
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
            key: _form,
            child: Column(
              children: <Widget>[
                TextFormField(
                  initialValue: _formData['nome'],
                  decoration: InputDecoration(labelText: 'Nome'),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Nome inválido';
                    }
                    if (value.trim().length < 3) {
                      return 'Nome muito pequeno. No minimo 3 letras';
                    }
                    return null;
                  },
                  onSaved: (value) => _formData['nome'] = value,
                ),
                TextFormField(
                  initialValue: _formData['raca'],
                  decoration: InputDecoration(labelText: 'Raça'),
                  onSaved: (value) => _formData['raca'] = value,
                ),
                TextFormField(
                  initialValue: _formData['imagem'],
                  decoration: InputDecoration(labelText: 'Imagem'),
                  onSaved: (value) => _formData['imagem'] = value,
                ),
              ],
            )),
      ),
    );
  }
}
