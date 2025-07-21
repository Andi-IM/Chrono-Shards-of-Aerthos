import 'package:json_annotation/json_annotation.dart';

part 'character_data.g.dart';

@JsonSerializable(explicitToJson: true)
class CharacterData {
  final int strength;
  final int dexterity;
  final int intelligence;
  final int defense;
  final int luck;
  final int hp;
  final int stamina;

  const CharacterData({
    this.strength = 10,
    this.dexterity = 10,
    this.intelligence = 10,
    this.defense = 10,
    this.luck = 10,
    this.hp = 100,
    this.stamina = 50,
  });

  factory CharacterData.fromJson(Map<String, dynamic> json) =>
      _$CharacterDataFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterDataToJson(this);
}
