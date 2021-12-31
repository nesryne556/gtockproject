import 'package:login_with_signup/Model/UserModel.dart';
import 'dart:io';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DbHelper {
  static Database _db;

  static const String DB_Name = 'test.db';
  static const String Table_User = 'user';
  static const int Version = 1;
  static const String Table_Categ = 'Categ';
  static const String Table_materiel = 'user';

  static const String C_CategID = 'categ_id';
  static const String C_CategName = 'categ_name';

  static const String C_UserID = 'user_id';
  static const String C_UserName = 'user_name';
  static const String C_Email = 'email';
  static const String C_Password = 'password';
  static const String C_materielID = 'materiel_id';
  static const String C_materielName = 'materiel_name';
  static const String C_materielquantite  = 'materielquantite';
  static const String C_dateRetour = 'dateRetour';
  static const String C_dateloc = 'C_dateloc';


  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;

  }

  _onCreate(Database db, int intVersion) async {
    await db.execute("CREATE TABLE $Table_User ("
        " $C_UserID TEXT, "
        " $C_UserName TEXT, "
        " $C_Email TEXT,"
        " $C_Password TEXT, "
        " PRIMARY KEY ($C_UserID)"
        ")");

    await db.execute("CREATE TABLE $Table_Categ ("
        " $C_CategID TEXT, "
        " $C_CategName TEXT, "
        " PRIMARY KEY ($C_CategID)"
        ")");
    await db.execute("CREATE TABLE $Table_Categ ("
        " $C_CategID TEXT, "
        " $C_CategName TEXT, "
        " PRIMARY KEY ($C_CategID)"
        ")");

    await db.execute("CREATE TABLE $Table_materiel ("
    " $C_materielID TEXT, "
    " $C_materielName TEXT, "
    " $C_materielquantite TEXT,"
     "$C_dateRetour TEXT,"
    " $C_dateloc TEXT"

    " PRIMARY KEY ($C_materielID)"
        ")");



  Future<int> saveData(UserModel user) async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_User, user.toMap());
    return res;
  }

  Future<UserModel> getLoginUser(String userId, String password) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery("SELECT * FROM $Table_User WHERE "
        "$C_UserID = '$userId' AND "
        "$C_Password = '$password'");

    if (res.length > 0) {
      return UserModel.fromMap(res.first);
    }

    return null;
  }



}









