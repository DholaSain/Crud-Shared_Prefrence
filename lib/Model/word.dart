import 'package:crud_shared/Model/modal.dart';

class WordModel extends Model {
  static String table = 'words';

  int id;
  String words;
  dynamic translations;

  WordModel({
    this.id,
    this.words,
    this.translations,
  });

  static WordModel fromMap(Map<String, dynamic> map) {
    return WordModel(
      id: map["id"],
      words: map['words'].toString(),
      translations: map['translations'].toString(),
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': id,
      'words': words,
      'translations': translations,
    };

    if (id != null) {
      map['id'] = id;
    }
    return map;
  }
}
