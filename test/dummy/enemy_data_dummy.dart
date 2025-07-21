import 'package:csoa/core/models/enemy_data.dart';
import 'package:csoa/core/models/character_data.dart';

/// Dummy data factory for EnemyData model
class EnemyDataDummy {
  /// Creates a basic goblin enemy
  static EnemyData goblin() {
    return EnemyData(
      id: 'goblin_001',
      name: 'Goblin Warrior',
      level: 3,
      stats: const CharacterData(
        strength: 8,
        dexterity: 12,
        intelligence: 5,
        defense: 6,
        luck: 7,
        hp: 45,
        stamina: 30,
      ),
      specialAbilities: ['quick_strike', 'dodge'],
      aiPatternId: 'aggressive',
      xpReward: 25,
      lootTableId: 'goblin_loot',
    );
  }

  /// Creates a skeleton enemy
  static EnemyData skeleton() {
    return EnemyData(
      id: 'skeleton_001',
      name: 'Undead Skeleton',
      level: 5,
      stats: const CharacterData(
        strength: 10,
        dexterity: 8,
        intelligence: 3,
        defense: 12,
        luck: 2,
        hp: 60,
        stamina: 40,
      ),
      specialAbilities: ['bone_throw', 'undead_resilience'],
      aiPatternId: 'defensive',
      xpReward: 40,
      lootTableId: 'skeleton_loot',
    );
  }

  /// Creates a powerful orc enemy
  static EnemyData orc() {
    return EnemyData(
      id: 'orc_001',
      name: 'Orc Berserker',
      level: 8,
      stats: const CharacterData(
        strength: 18,
        dexterity: 6,
        intelligence: 4,
        defense: 14,
        luck: 5,
        hp: 120,
        stamina: 80,
      ),
      specialAbilities: ['berserker_rage', 'heavy_slam', 'intimidate'],
      aiPatternId: 'berserker',
      xpReward: 75,
      lootTableId: 'orc_loot',
    );
  }

  /// Creates a magical enemy
  static EnemyData darkMage() {
    return EnemyData(
      id: 'dark_mage_001',
      name: 'Dark Sorcerer',
      level: 12,
      stats: const CharacterData(
        strength: 6,
        dexterity: 10,
        intelligence: 20,
        defense: 8,
        luck: 14,
        hp: 80,
        stamina: 150,
      ),
      specialAbilities: ['fireball', 'dark_bolt', 'mana_drain', 'teleport'],
      aiPatternId: 'caster',
      xpReward: 120,
      lootTableId: 'mage_loot',
    );
  }

  /// Creates a boss enemy
  static EnemyData dragonBoss() {
    return EnemyData(
      id: 'dragon_boss_001',
      name: 'Ancient Red Dragon',
      level: 25,
      stats: const CharacterData(
        strength: 30,
        dexterity: 15,
        intelligence: 18,
        defense: 25,
        luck: 12,
        hp: 500,
        stamina: 300,
      ),
      specialAbilities: [
        'fire_breath',
        'wing_attack',
        'tail_sweep',
        'dragon_roar',
        'flame_aura',
        'aerial_dive',
      ],
      aiPatternId: 'boss_dragon',
      xpReward: 1000,
      lootTableId: 'dragon_treasure',
    );
  }

  /// Creates a weak training dummy
  static EnemyData trainingDummy() {
    return EnemyData(
      id: 'dummy_001',
      name: 'Training Dummy',
      level: 1,
      stats: const CharacterData(
        strength: 1,
        dexterity: 1,
        intelligence: 1,
        defense: 5,
        luck: 1,
        hp: 20,
        stamina: 10,
      ),
      specialAbilities: [],
      aiPatternId: 'passive',
      xpReward: 5,
      lootTableId: 'training_loot',
    );
  }

  /// Creates a fast assassin enemy
  static EnemyData assassin() {
    return EnemyData(
      id: 'assassin_001',
      name: 'Shadow Assassin',
      level: 10,
      stats: const CharacterData(
        strength: 12,
        dexterity: 22,
        intelligence: 14,
        defense: 8,
        luck: 18,
        hp: 70,
        stamina: 120,
      ),
      specialAbilities: ['stealth', 'backstab', 'poison_blade', 'shadow_step'],
      aiPatternId: 'stealth',
      xpReward: 90,
      lootTableId: 'assassin_loot',
    );
  }

  /// Creates a heavily armored knight enemy
  static EnemyData armoredKnight() {
    return EnemyData(
      id: 'knight_001',
      name: 'Corrupted Knight',
      level: 15,
      stats: const CharacterData(
        strength: 16,
        dexterity: 8,
        intelligence: 10,
        defense: 22,
        luck: 6,
        hp: 180,
        stamina: 100,
      ),
      specialAbilities: ['shield_bash', 'heavy_strike', 'armor_repair'],
      aiPatternId: 'tank',
      xpReward: 150,
      lootTableId: 'knight_loot',
    );
  }

  /// Creates an enemy with no special abilities
  static EnemyData basicSlime() {
    return EnemyData(
      id: 'slime_001',
      name: 'Green Slime',
      level: 2,
      stats: const CharacterData(
        strength: 4,
        dexterity: 3,
        intelligence: 1,
        defense: 2,
        luck: 8,
        hp: 25,
        stamina: 20,
      ),
      specialAbilities: [],
      aiPatternId: 'simple',
      xpReward: 15,
      lootTableId: 'slime_loot',
    );
  }

  /// Creates a list of low-level enemies
  static List<EnemyData> lowLevelEnemies() {
    return [trainingDummy(), basicSlime(), goblin()];
  }

  /// Creates a list of mid-level enemies
  static List<EnemyData> midLevelEnemies() {
    return [skeleton(), orc(), assassin()];
  }

  /// Creates a list of high-level enemies
  static List<EnemyData> highLevelEnemies() {
    return [darkMage(), armoredKnight()];
  }

  /// Creates a list of boss enemies
  static List<EnemyData> bossEnemies() {
    return [dragonBoss()];
  }

  /// Creates a list of all enemy types
  static List<EnemyData> allEnemies() {
    return [
      ...lowLevelEnemies(),
      ...midLevelEnemies(),
      ...highLevelEnemies(),
      ...bossEnemies(),
    ];
  }

  /// Creates an enemy from JSON for testing
  static EnemyData fromJsonExample() {
    final json = {
      'id': 'test_enemy',
      'name': 'Test Monster',
      'level': 7,
      'stats': {
        'strength': 12,
        'dexterity': 10,
        'intelligence': 8,
        'defense': 11,
        'luck': 9,
        'hp': 85,
        'stamina': 60,
      },
      'specialAbilities': ['test_ability_1', 'test_ability_2'],
      'aiPatternId': 'test_pattern',
      'xpReward': 50,
      'lootTableId': 'test_loot',
    };
    return EnemyData.fromJson(json);
  }

  /// Creates enemies for specific dungeon areas
  static Map<String, List<EnemyData>> dungeonEnemies() {
    return {
      'forest': [goblin(), basicSlime()],
      'crypt': [skeleton(), darkMage()],
      'mountains': [orc(), armoredKnight()],
      'shadow_realm': [assassin()],
      'dragon_lair': [dragonBoss()],
    };
  }
}
