import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final _dbName = 'localData.db';
  static final _dbVersion = 1;
  static final _tableName = 'items';

  static final columnId = 'id';
  static final columnName = 'name';
  static final columnData = 'data'; // This will store JSON as TEXT

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _dbName);
    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $_tableName (
        $columnId INTEGER PRIMARY KEY,
        $columnName TEXT NOT NULL,
        $columnData TEXT NOT NULL
      )
    ''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database? db = await instance.database;

    // Convert 'data' map to JSON string before storing
    row[columnData] = row[columnData] != null ? row[columnData].toString() : '{}';

    return await db!.insert(_tableName, row);
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database? db = await instance.database;
    return await db!.query(_tableName);
  }

  Future<int> delete(int id) async {
    Database? db = await instance.database;
    return await db!.delete(_tableName, where: '$columnId = ?', whereArgs: [id]);
  }
}
