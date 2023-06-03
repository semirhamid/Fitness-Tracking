import 'package:fitnesstracker/domain/workouts/local_workout.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../domain/data/local/localDb/i_database_helper.dart';


class DatabaseHelper implements IDatabaseHelperInterface {
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'fitness.db');
    return await openDatabase(path, version: 3, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE workouts (
        id INTEGER PRIMARY KEY,
        Title TEXT NOT NULL,
        Duration INTEGER NULL,
        Step INTEGER NULL,
        Description TEXT NOT NULL,
        Image1Url TEXT NOT NULL,
        Image2Url TEXT NOT NULL,
        Focus TEXT NOT NULL
      )''');
  }

  Future<int> insertWorkout(WorkoutLocal workout) async {
    final db = await database;
    return await db.insert('workouts', workout.toJson());
  }

  Future<List<WorkoutLocal>> getWorkouts() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('workouts');
    return List.generate(maps.length, (index) {
      return WorkoutLocal.fromMap(maps[index]);
    });
  }

  Future<int> updateWorkout(WorkoutLocal workout) async {
    final db = await database;
    return await db.update(
      'workouts',
      workout.toJson(),
      where: 'id = ?',
      whereArgs: [workout.id],
    );
  }

  Future<int> deleteWorkout(int id) async {
    final db = await database;
    return await db.delete(
      'workouts',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<WorkoutLocal?> getWorkoutById(int id) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'workouts',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return WorkoutLocal.fromMap(maps.first);
    }
    return null;
  }
}
