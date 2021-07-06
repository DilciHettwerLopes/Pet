import 'package:petshop/model/cliente_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseLocal {
  static final _databaseName = "login.db";
  static final _databaseVersion = 1;

  static final table = "cliente";

  static final columnId = 'id';
  static final columnEmail = 'email';
  static final columnNome = 'nome';

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
            $columnEmail TEXT NOT NULL
            )
          ''');
  }
    //grava um registro na tabela
    Future<int> insert(ClienteModel cliente) async {
      //aguarda a instância do banco ser acessível.
      Database db = await instance.database;
      //insere os dados no banco de dados conforme o mapa de campos da
      //classe/model CModel
      var res = await db.insert(table, cliente.toJson());
      return res;
    }

    //apaga um registro na tabela
    Future<int> delete(int id) async {
      Database db = await instance.database;
      return await db.delete(table, where: '$columnId = ?', whereArgs: [id]);
    }

    //atualiza um registro na tabela
    Future<int> update(int id, ClienteModel contact) async {
      //aguarda a instância do banco ser acessível.
      Database db = await instance.database;
      return await db.update(
        table,
        contact.toJson(),
        where: '$columnId = ?',
        whereArgs: [id],
      );
    }
  }
