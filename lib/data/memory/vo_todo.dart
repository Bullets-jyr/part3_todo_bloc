import 'package:freezed_annotation/freezed_annotation.dart';

import 'todo_status.dart';

// class Todo {
//   Todo({
//     required this.id,
//     required this.title,
//     required this.dueDate,
//     this.status = TodoStatus.incomplete,
//   }) : createdTime = DateTime.now();
//
//   int id;
//   String title;
//   final DateTime createdTime;
//   DateTime? modifyTime;
//   DateTime dueDate;
//   TodoStatus status;
// }

part 'vo_todo.freezed.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    required int id,
    required String title,
    required DateTime dueDate,
    DateTime? modifyTime,
    required DateTime createdTime,
    required TodoStatus status,
  }) = _Todo;
}
