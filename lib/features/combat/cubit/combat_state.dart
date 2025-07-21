import 'package:equatable/equatable.dart';
import 'package:csoa/core/models/enemy_data.dart';

class CombatState extends Equatable {
  final int turn;
  final List<EnemyData> enemies;
  final Map<String, String> enemyIntentions; // eq: {'enemy_id': 'attack'}
  final bool isPlayerTurn;

  const CombatState({
    required this.turn,
    required this.enemies,
    required this.enemyIntentions,
    required this.isPlayerTurn,
  });

  @override
  List<Object> get props => [turn, enemies, enemyIntentions, isPlayerTurn];
}
