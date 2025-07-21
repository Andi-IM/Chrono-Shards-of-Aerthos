// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemData _$ItemDataFromJson(Map<String, dynamic> json) => ItemData(
  id: json['id'] as String,
  name: json['name'] as String,
  type: $enumDecode(_$ItemTypeEnumMap, json['type']),
  rarity: $enumDecode(_$ItemRarityEnumMap, json['rarity']),
  effects: (json['effects'] as List<dynamic>)
      .map((e) => EffectData.fromJson(e as Map<String, dynamic>))
      .toList(),
  description: json['description'] as String,
  value: (json['value'] as num).toInt(),
);

Map<String, dynamic> _$ItemDataToJson(ItemData instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': _$ItemTypeEnumMap[instance.type]!,
  'rarity': _$ItemRarityEnumMap[instance.rarity]!,
  'effects': instance.effects.map((e) => e.toJson()).toList(),
  'description': instance.description,
  'value': instance.value,
};

const _$ItemTypeEnumMap = {
  ItemType.weapon: 'weapon',
  ItemType.armor: 'armor',
  ItemType.consumable: 'consumable',
};

const _$ItemRarityEnumMap = {
  ItemRarity.common: 'common',
  ItemRarity.uncommon: 'uncommon',
  ItemRarity.rare: 'rare',
};
