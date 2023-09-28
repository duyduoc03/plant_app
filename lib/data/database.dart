import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseProvider {
  static Future<Database> open() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'plantnest.db');

    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE IF NOT EXISTS Users (
            id INTEGER PRIMARY KEY,
            username TEXT,
            fullName TEXT,
            email TEXT,
            phone TEXT,
            password TEXT,
            address TEXT,
            role TEXT
          )
        ''');
      },
    );
  }

  static Future<List<Map<String, dynamic>>> fetchUsers() async {
    final db = await open();
    final users = await db.query('Users');
    await db.close();
    return users;
  }
}