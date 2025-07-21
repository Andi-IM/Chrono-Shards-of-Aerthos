// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerState _$PlayerStateFromJson(Map<String, dynamic> json) => PlayerState(
  name: json['name'] as String? ?? "The Scribe",
  level: (json['level'] as num?)?.toInt() ?? 1,
  xp: (json['xp'] as num?)?.toInt() ?? 0,
  hp: (json['hp'] as num).toInt(),
  maxHp: (json['maxHp'] as num).toInt(),
  stamina: (json['stamina'] as num).toInt(),
  maxStamina: (json['maxStamina'] as num).toInt(),
  stats: CharacterData.fromJson(json['stats'] as Map<String, dynamic>),
  inventory:
      (json['inventory'] as List<dynamic>?)
          ?.map((e) => ItemStack.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  equipment:
      (json['equipment'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ) ??
      const {},
  skills:
      (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  currentLocationId:
      json['currentLocationId'] as String? ?? "starting_location",
);

Map<String, dynamic> _$PlayerStateToJson(PlayerState instance) =>
    <String, dynamic>{
      'name': instance.name,
      'level': instance.level,
      'xp': instance.xp,
      'hp': instance.hp,
      'maxHp': instance.maxHp,
      'stamina': instance.stamina,
      'maxStamina': instance.maxStamina,
      'stats': instance.stats.toJson(),
      'inventory': instance.inventory.map((e) => e.toJson()).toList(),
      'equipment': instance.equipment,
      'skills': instance.skills,
      'currentLocationId': instance.currentLocationId,
    };
