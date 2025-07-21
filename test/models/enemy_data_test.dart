import 'package:test/test.dart';
import 'package:csoa/core/models/enemy_data.dart';
import 'package:csoa/core/models/character_data.dart';

void main() {
  group('EnemyData', () {
    test('should create EnemyData with required values', () {
      const stats = CharacterData(
        strength: 15,
        dexterity: 12,
        intelligence: 8,
        defense: 10,
        luck: 5,
        hp: 80,
        stamina: 40,
      );

      const enemyData = EnemyData(
        id: 'goblin_warrior',
        name: 'Goblin Warrior',
        level: 3,
        stats: stats,
        specialAbilities: ['slash', 'dodge'],
        aiPatternId: 'aggressive',
        xpReward: 150,
        lootTableId: 'goblin_loot',
      );

      expect(enemyData.id, equals('goblin_warrior'));
      expect(enemyData.name, equals('Goblin Warrior'));
      expect(enemyData.level, equals(3));
      expect(enemyData.stats, equals(stats));
      expect(enemyData.specialAbilities, equals(['slash', 'dodge']));
      expect(enemyData.aiPatternId, equals('aggressive'));
      expect(enemyData.xpReward, equals(150));
      expect(enemyData.lootTableId, equals('goblin_loot'));
    });

    test('should handle empty special abilities list', () {
      const stats = CharacterData();

      const enemyData = EnemyData(
        id: 'weak_slime',
        name: 'Weak Slime',
        level: 1,
        stats: stats,
        specialAbilities: [],
        aiPatternId: 'passive',
        xpReward: 10,
        lootTableId: 'slime_loot',
      );

      expect(enemyData.specialAbilities, isEmpty);
      expect(enemyData.level, equals(1));
      expect(enemyData.xpReward, equals(10));
    });

    test('should serialize to JSON correctly', () {
      const stats = CharacterData(
        strength: 20,
        dexterity: 15,
        intelligence: 10,
        defense: 18,
        luck: 8,
        hp: 120,
        stamina: 60,
      );

      const enemyData = EnemyData(
        id: 'orc_chief',
        name: 'Orc Chief',
        level: 5,
        stats: stats,
        specialAbilities: ['war_cry', 'heavy_strike', 'intimidate'],
        aiPatternId: 'boss_pattern',
        xpReward: 500,
        lootTableId: 'boss_loot',
      );

      final json = enemyData.toJson();

      expect(json['id'], equals('orc_chief'));
      expect(json['name'], equals('Orc Chief'));
      expect(json['level'], equals(5));
      expect(json['stats'], isA<Map<String, dynamic>>());
      expect(
        json['specialAbilities'],
        equals(['war_cry', 'heavy_strike', 'intimidate']),
      );
      expect(json['aiPatternId'], equals('boss_pattern'));
      expect(json['xpReward'], equals(500));
      expect(json['lootTableId'], equals('boss_loot'));
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'id': 'skeleton_archer',
        'name': 'Skeleton Archer',
        'level': 4,
        'stats': {
          'strength': 12,
          'dexterity': 18,
          'intelligence': 8,
          'defense': 10,
          'luck': 6,
          'hp': 70,
          'stamina': 45,
        },
        'specialAbilities': ['precise_shot', 'arrow_rain'],
        'aiPatternId': 'ranged_fighter',
        'xpReward': 200,
        'lootTableId': 'undead_loot',
      };

      final enemyData = EnemyData.fromJson(json);

      expect(enemyData.id, equals('skeleton_archer'));
      expect(enemyData.name, equals('Skeleton Archer'));
      expect(enemyData.level, equals(4));
      expect(enemyData.stats.strength, equals(12));
      expect(enemyData.stats.dexterity, equals(18));
      expect(
        enemyData.specialAbilities,
        equals(['precise_shot', 'arrow_rain']),
      );
      expect(enemyData.aiPatternId, equals('ranged_fighter'));
      expect(enemyData.xpReward, equals(200));
      expect(enemyData.lootTableId, equals('undead_loot'));
    });

    test('should handle level 0 and negative XP reward', () {
      const stats = CharacterData();

      const enemyData = EnemyData(
        id: 'training_dummy',
        name: 'Training Dummy',
        level: 0,
        stats: stats,
        specialAbilities: [],
        aiPatternId: 'none',
        xpReward: 0,
        lootTableId: 'no_loot',
      );

      expect(enemyData.level, equals(0));
      expect(enemyData.xpReward, equals(0));
    });

    test('should maintain immutability', () {
      const stats = CharacterData();

      const enemyData1 = EnemyData(
        id: 'test_enemy',
        name: 'Test Enemy',
        level: 1,
        stats: stats,
        specialAbilities: ['test_ability'],
        aiPatternId: 'test_pattern',
        xpReward: 100,
        lootTableId: 'test_loot',
      );

      const enemyData2 = EnemyData(
        id: 'test_enemy',
        name: 'Test Enemy',
        level: 1,
        stats: stats,
        specialAbilities: ['test_ability'],
        aiPatternId: 'test_pattern',
        xpReward: 100,
        lootTableId: 'test_loot',
      );

      expect(enemyData1.id, equals(enemyData2.id));
      expect(enemyData1.name, equals(enemyData2.name));
      expect(enemyData1.level, equals(enemyData2.level));
    });

    test('should handle JSON serialization roundtrip', () {
      const stats = CharacterData(
        strength: 16,
        dexterity: 14,
        intelligence: 12,
        defense: 15,
        luck: 7,
        hp: 90,
        stamina: 50,
      );

      const originalEnemy = EnemyData(
        id: 'roundtrip_test',
        name: 'Roundtrip Test Enemy',
        level: 3,
        stats: stats,
        specialAbilities: ['ability1', 'ability2'],
        aiPatternId: 'test_pattern',
        xpReward: 250,
        lootTableId: 'test_loot',
      );

      final json = originalEnemy.toJson();
      final deserializedEnemy = EnemyData.fromJson(json);

      expect(deserializedEnemy.id, equals(originalEnemy.id));
      expect(deserializedEnemy.name, equals(originalEnemy.name));
      expect(deserializedEnemy.level, equals(originalEnemy.level));
      expect(
        deserializedEnemy.stats.strength,
        equals(originalEnemy.stats.strength),
      );
      expect(
        deserializedEnemy.specialAbilities,
        equals(originalEnemy.specialAbilities),
      );
      expect(deserializedEnemy.aiPatternId, equals(originalEnemy.aiPatternId));
      expect(deserializedEnemy.xpReward, equals(originalEnemy.xpReward));
      expect(deserializedEnemy.lootTableId, equals(originalEnemy.lootTableId));
    });
  });
}
