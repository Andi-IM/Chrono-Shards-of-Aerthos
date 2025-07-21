import 'package:csoa/core/models/effect_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_data.g.dart';

enum ItemType { weapon, armor, consumable, accessory, misc }

enum ItemRarity { common, uncommon, rare, legendary, epic }

@JsonSerializable(explicitToJson: true)
class ItemData {
  final String id;
  final String name;
  final ItemType type;
  final ItemRarity rarity;
  final List<EffectData> effects;
  final String description;
  final int value;

  const ItemData({
    required this.id,
    required this.name,
    required this.type,
    required this.rarity,
    required this.effects,
    required this.description,
    required this.value,
  });

  factory ItemData.fromJson(Map<String, dynamic> json) =>
      _$ItemDataFromJson(json);
  Map<String, dynamic> toJson() => _$ItemDataToJson(this);
}
