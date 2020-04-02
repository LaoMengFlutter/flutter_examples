import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

//这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class User {
  User(this.name, this.age);

  final String name;
  final int age;

  factory User.fromJson(Map<String, dynamic> srcJson) =>
      _$UserFromJson(srcJson);

  toJson() => _$UserToJson(this);
}
