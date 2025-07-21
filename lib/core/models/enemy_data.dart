import 'package:csoa/core/models/character_data.dart';

class EnemyData {
  final String id;
  final String name;
  final CharacterData stats;

  const EnemyData({required this.id, required this.name, required this.stats});
}
