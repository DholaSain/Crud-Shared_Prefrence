import 'dart:typed_data';
import 'modal.dart';

class VideoModel extends Model {
  static String table = 'vieos';

  int id;
  String videoName;
  String video;
  Uint8List thumbnail;
  String subtitle;

  VideoModel({
    this.id,
    this.videoName,
    this.video,
    this.thumbnail,
    this.subtitle,
  });

  static VideoModel fromMap(Map<String, dynamic> map) {
    return VideoModel(
      id: map['id'],
      videoName: map['videoName'].toString(),
      video: map['video'],
      thumbnail: map['thumbnail'],
      subtitle: map['subtitle'],
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': id,
      'videoName': videoName,
      'video': video,
      'thumbnail': thumbnail,
      'subtitile': subtitle,
    };

    if (id != null) {
      map['id'] = id;
    }
    return map;
  }
}
