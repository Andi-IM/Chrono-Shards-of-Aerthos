// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkillData _$SkillDataFromJson(Map<String, dynamic> json) => SkillData(
  id: json['id'] as String,
  name: json['name'] as String,
  staminaCost: (json['staminaCost'] as num).toInt(),
  description: json['description'] as String,
);

Map<String, dynamic> _$SkillDataToJson(SkillData instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'staminaCost': instance.staminaCost,
  'description': instance.description,
};
