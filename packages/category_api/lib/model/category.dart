import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  String? id;
  String? name;
  String? imgUrl;

  Category({
    this.id,
    this.name,
    this.imgUrl,
  });

  factory Category.fromJson(String id, Map<String, dynamic> json) =>
      _$CategoryFromJson(json)..id = id;
}
