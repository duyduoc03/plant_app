// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sembast/sembast.dart';
// import 'package:sembast/sembast_io.dart';
//
// import '../model/category.dart' as plant;
//
// class DatabaseHelper {
//   static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
//   static Database? _database;
//   static final _categoryStore = intMapStoreFactory.store('categories');
//
//   DatabaseHelper._privateConstructor();
//
//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     _database = await _initDatabase();
//     return _database!;
//   }
//
//   Future<Database> _initDatabase() async {
//     var appDirectory = await getApplicationDocumentsDirectory();
//     String path = join(appDirectory.path, 'PlantNest.db');
//
//     return await databaseFactoryIo.openDatabase(path);
//   }
//
//   Future<void> _createDatabase(Database db) async {
//     await _categoryStore.add(db, {'id': 1, 'name': 'Category 1'});
//     await _categoryStore.add(db, {'id': 2, 'name': 'Category 2'});
//   }
//
//   Future<List<plant.Category>> getCategories() async {
//     Database db = await instance.database;
//     var snapshots = await _categoryStore.find(db);
//     return snapshots
//         .map((snapshot) => plant.Category.fromMap(snapshot.value as Map<String, dynamic>))
//         .toList();
//   }
// }