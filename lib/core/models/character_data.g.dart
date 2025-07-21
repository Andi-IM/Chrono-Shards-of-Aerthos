// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterData _$CharacterDataFromJson(Map<String, dynamic> json) =>
    CharacterData(
      strength: (json['strength'] as num?)?.toInt() ?? 10,
      dexterity: (json['dexterity'] as num?)?.toInt() ?? 10,
      intelligence: (json['intelligence'] as num?)?.toInt() ?? 10,
      defense: (json['defense'] as num?)?.toInt() ?? 10,
      luck: (json['luck'] as num?)?.toInt() ?? 10,
      hp: (json['hp'] as num?)?.toInt() ?? 100,
      stamina: (json['stamina'] as num?)?.toInt() ?? 50,
    );

Map<String, dynamic> _$CharacterDataToJson(CharacterData instance) =>
    <String, dynamic>{
      'strength': instance.strength,
      'dexterity': instance.dexterity,
      'intelligence': instance.intelligence,
      'defense': instance.defense,
      'luck': instance.luck,
      'hp': instance.hp,
      'stamina': instance.stamina,
    };
