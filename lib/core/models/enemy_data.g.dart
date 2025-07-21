// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enemy_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnemyData _$EnemyDataFromJson(Map<String, dynamic> json) => EnemyData(
  id: json['id'] as String,
  name: json['name'] as String,
  level: (json['level'] as num).toInt(),
  stats: CharacterData.fromJson(json['stats'] as Map<String, dynamic>),
  specialAbilities: (json['specialAbilities'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  aiPatternId: json['aiPatternId'] as String,
  xpReward: (json['xpReward'] as num).toInt(),
  lootTableId: json['lootTableId'] as String,
);

Map<String, dynamic> _$EnemyDataToJson(EnemyData instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'level': instance.level,
  'stats': instance.stats.toJson(),
  'specialAbilities': instance.specialAbilities,
  'aiPatternId': instance.aiPatternId,
  'xpReward': instance.xpReward,
  'lootTableId': instance.lootTableId,
};
