import 'package:csoa/core/models/character_data.dart';
import 'package:json_annotation/json_annotation.dart';
part 'enemy_data.g.dart';

@JsonSerializable(explicitToJson: true)
class EnemyData {
  final String id;
  final String name;
  final int level;
  final CharacterData stats;
  final List<String> specialAbilities;
  final String aiPatternId;
  final int xpReward;
  final String lootTableId;

  const EnemyData({
    required this.id,
    required this.name,
    required this.level,
    required this.stats,
    required this.specialAbilities,
    required this.aiPatternId,
    required this.xpReward,
    required this.lootTableId,
  });

  factory EnemyData.fromJson(Map<String, dynamic> json) =>
      _$EnemyDataFromJson(json);
  Map<String, dynamic> toJson() => _$EnemyDataToJson(this);
}
