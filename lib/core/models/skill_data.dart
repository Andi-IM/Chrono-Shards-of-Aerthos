import 'package:json_annotation/json_annotation.dart';

part 'skill_data.g.dart';

@JsonSerializable()
class SkillData {
  final String id;
  final String name;
  final int staminaCost;
  final String description;

  const SkillData({
    required this.id,
    required this.name,
    required this.staminaCost,
    required this.description,
  });

  factory SkillData.fromJson(Map<String, dynamic> json) =>
      _$SkillDataFromJson(json);
  Map<String, dynamic> toJson() => _$SkillDataToJson(this);
}
