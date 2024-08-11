import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class Note extends HiveObject {
  @HiveField(0) // hivefield unique per class

  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final int color;

  Note({
    required this.title,
    required this.content,
    required this.color,
  });

//   Note copyWith({
//     int? id,
//     String? title,
//     String? content,
//   }) {
//     return Note(
//       id: id ?? this.id,
//       title: title ?? this.title,
//       content: content ?? this.content,
//     );
//   }
}
