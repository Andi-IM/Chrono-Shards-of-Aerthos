import 'package:csoa/core/models/character_data.dart';
import 'package:csoa/core/models/item_stack.dart';
import 'package:json_annotation/json_annotation.dart';

part 'player_state.g.dart';

@JsonSerializable(explicitToJson: true)
class PlayerState {
  final String name;
  final int level;
  final int xp;
  final int hp;
  final int maxHp;
  final int stamina;
  final int maxStamina;
  final CharacterData stats;
  final List<ItemStack> inventory;
  final Map<String, String> equipment;
  final List<String> skills;
  final String currentLocationId;

  const PlayerState({
    this.name = "The Scribe",
    this.level = 1,
    this.xp = 0,
    required this.hp,
    required this.maxHp,
    required this.stamina,
    required this.maxStamina,
    required this.stats,
    this.inventory = const [],
    this.equipment = const {},
    this.skills = const [],
    this.currentLocationId = "starting_location",
  });

  factory PlayerState.fromJson(Map<String, dynamic> json) =>
      _$PlayerStateFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerStateToJson(this);
}
