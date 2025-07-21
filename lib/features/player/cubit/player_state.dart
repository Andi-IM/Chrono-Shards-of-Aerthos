import 'package:equatable/equatable.dart';
import 'package:csoa/core/models/character_data.dart';

class PlayerState extends Equatable {
  final int level;
  final int xp;
  final int hp;
  final CharacterData stats;
  final Map<String, String> equipment; // eq: {'weapon': 'sword_id'}

  const PlayerState({
    required this.level,
    required this.xp,
    required this.hp,
    required this.stats,
    required this.equipment,
  });

  @override
  List<Object> get props => [level, xp, hp, stats, equipment];
}
