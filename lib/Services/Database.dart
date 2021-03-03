import 'package:crud_shared/Model/personmodel.dart';
import 'package:crud_shared/Model/word.dart';
import 'package:sqflite/sqflite.dart';
import 'package:crud_shared/Utils/dbhelper.dart';

class DBService {
  Future<bool> addPerson(PersonModel model) async {
    await DB.init();
    bool isSaved = false;
    if (model != null) {
      int inserted = await DB.insert(PersonModel.table, model);

      isSaved = inserted == 1 ? true : false;
    }
    return isSaved;
  }

  Future<bool> updatePerson(PersonModel model) async {
    await DB.init();
    bool isSaved = false;
    if (model != null) {
      int inserted = await DB.update(PersonModel.table, model);

      isSaved = inserted == 1 ? true : false;
    }
    return isSaved;
  }

  Future<List<PersonModel>> getPerson() async {
    await DB.init();
    List<Map<String, dynamic>> person = await DB.query(PersonModel.table);
    return person.map((item) => PersonModel.fromMap(item)).toList();
  }

  Future<bool> deletePerson(PersonModel model) async {
    await DB.init();
    bool isSaved = false;
    if (model != null) {
      int inserted = await DB.delete(PersonModel.table, model);

      isSaved = inserted == 1 ? true : false;
    }
    return isSaved;
  }
}
