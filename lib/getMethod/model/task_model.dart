import 'package:json_annotation/json_annotation.dart';
part 'task_model.g.dart';

@JsonSerializable()
class Task {
  int albumId;
  int id;
  String title;
  String thumbnailUrl;

  Task({this.albumId, this.id, this.title, this.thumbnailUrl});

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
