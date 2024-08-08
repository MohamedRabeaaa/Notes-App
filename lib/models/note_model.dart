import 'package:hive/hive.dart';
part 'note_model.g.dart'; // .g-> genrate

@HiveType(typeId: 0) //number of object in database 0 /(0-255)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final int color;

  NoteModel({
    required this.title,
    required this.content,
    required this.color,
  });
}
