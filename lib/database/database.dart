import 'dart:convert';

import 'package:petshop/model/RetornoAutenticacao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseLocal {
  static final _databaseName = "login1.db";
  static final _databaseVersion = 2;

  static final table = "retorno";

  static final columnId = 'id';
  static final columnEmail = 'email';
  static final columnNome = 'nome';
  static final columnSenha = 'senha';
   static final columnLogin = 'login';

  //"Executa" a classe
  DatabaseLocal._privateConstructor();
  //retorna a instância do DatabaseLocal
  static final DatabaseLocal instance = DatabaseLocal._privateConstructor();

  static Database _database;
  Future<Database> get database async {
    //se o banco ainda não está aberto, abre, senão apenas retorna a
    //instancia aberta anteriormente
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  //abre o banco de dados no diretório de instalação do aplicativo
  //se não existir ele cria um novo arquivo.
  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
            $columnNome TEXT NOT NULL,
            $columnEmail TEXT NOT NULL,
             $columnSenha TEXT NOT NULL,
             $columnLogin TEXT NOT NULL
            )
          ''');
  }
    //grava um registro na tabela
    Future<int> insert(RetornoAutenticacao retorno) async {
      //aguarda a instância do banco ser acessível.
      print(retorno.toMap().toString());


      Database db = await instance.database;
      //insere os dados no banco de dados conforme o mapa de campos da
      //classe/model CModel
      var res = await db.insert(table, retorno.toMap());
      return res;
    }

Future<int> getid() async {
    Database db = await instance.database;
    var res = await db.query(table, orderBy: "$columnId DESC");
    return res[0];
  }

    //apaga um registro na tabela
    Future<int> delete(int id) async {
      Database db = await instance.database;
      return await db.delete(table, where: '$columnId = ?', whereArgs: [id]);
    }

    //atualiza um registro na tabela
    Future<int> update(int id, RetornoAutenticacao contact) async {
      //aguarda a instância do banco ser acessível.
      Database db = await instance.database;
      return await db.update(
        table,
        contact.toMap(),
        where: '$columnId = ?',
        whereArgs: [id],
      );
    }
  }
