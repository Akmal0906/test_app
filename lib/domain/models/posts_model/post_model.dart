import 'package:json_annotation/json_annotation.dart';
part 'post_model.g.dart';
@JsonSerializable()
class PostModel{
  final int userId;
  final int id;
  final String title;
  final String body;
  PostModel({required this.id,required this.userId,required this.body,required this.title});
  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);
  Map<String, dynamic> toJson() => _$PostModelToJson(this);

}