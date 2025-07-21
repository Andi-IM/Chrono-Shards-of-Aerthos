import 'package:test/test.dart';
import 'package:csoa/core/models/player_state.dart';
import 'package:csoa/core/models/character_data.dart';
import 'package:csoa/core/models/item_stack.dart';

void main() {
  group('PlayerState', () {
    test('should create PlayerState with required values', () {
      const stats = CharacterData(
        strength: 15,
        dexterity: 12,
        intelligence: 18,
        defense: 14,
        luck: 10,
        hp: 100,
        stamina: 50,
      );

      const inventory = [
        ItemStack(id: 'health_potion', quantity: 3),
        ItemStack(id: 'mana_potion', quantity: 2),
      ];

      const equipment = {'weapon': 'iron_sword', 'armor': 'leather_armor'};

      const skills = ['fireball', 'heal', 'shield'];

      const playerState = PlayerState(
        name: 'Hero',
        level: 5,
        xp: 1250,
        hp: 85,
        maxHp: 100,
        stamina: 40,
        maxStamina: 50,
        stats: stats,
        inventory: inventory,
        equipment: equipment,
        skills: skills,
        currentLocationId: 'town_square',
      );

      expect(playerState.name, equals('Hero'));
      expect(playerState.level, equals(5));
      expect(playerState.xp, equals(1250));
      expect(playerState.hp, equals(85));
      expect(playerState.maxHp, equals(100));
      expect(playerState.stamina, equals(40));
      expect(playerState.maxStamina, equals(50));
      expect(playerState.stats, equals(stats));
      expect(playerState.inventory, equals(inventory));
      expect(playerState.equipment, equals(equipment));
      expect(playerState.skills, equals(skills));
      expect(playerState.currentLocationId, equals('town_square'));
    });

    test('should create PlayerState with default values', () {
      const stats = CharacterData();

      const playerState = PlayerState(
        hp: 100,
        maxHp: 100,
        stamina: 50,
        maxStamina: 50,
        stats: stats,
      );

      expect(playerState.name, equals('The Scribe'));
      expect(playerState.level, equals(1));
      expect(playerState.xp, equals(0));
      expect(playerState.inventory, isEmpty);
      expect(playerState.equipment, isEmpty);
      expect(playerState.skills, isEmpty);
      expect(playerState.currentLocationId, equals('starting_location'));
    });

    test('should handle empty inventory', () {
      const stats = CharacterData();

      const playerState = PlayerState(
        hp: 100,
        maxHp: 100,
        stamina: 50,
        maxStamina: 50,
        stats: stats,
        inventory: [],
      );

      expect(playerState.inventory, isEmpty);
    });

    test('should handle empty equipment', () {
      const stats = CharacterData();

      const playerState = PlayerState(
        hp: 100,
        maxHp: 100,
        stamina: 50,
        maxStamina: 50,
        stats: stats,
        equipment: {},
      );

      expect(playerState.equipment, isEmpty);
    });

    test('should handle empty skills', () {
      const stats = CharacterData();

      const playerState = PlayerState(
        hp: 100,
        maxHp: 100,
        stamina: 50,
        maxStamina: 50,
        stats: stats,
        skills: [],
      );

      expect(playerState.skills, isEmpty);
    });

    test('should handle level 0 and negative XP', () {
      const stats = CharacterData();

      const playerState = PlayerState(
        level: 0,
        xp: -100,
        hp: 50,
        maxHp: 100,
        stamina: 25,
        maxStamina: 50,
        stats: stats,
      );

      expect(playerState.level, equals(0));
      expect(playerState.xp, equals(-100));
    });

    test('should handle HP and stamina edge cases', () {
      const stats = CharacterData();

      const playerState = PlayerState(
        hp: 0, // Dead player
        maxHp: 100,
        stamina: 0, // Exhausted player
        maxStamina: 50,
        stats: stats,
      );

      expect(playerState.hp, equals(0));
      expect(playerState.stamina, equals(0));
    });

    test('should handle HP exceeding maxHp', () {
      const stats = CharacterData();

      const playerState = PlayerState(
        hp: 150, // Over-healed
        maxHp: 100,
        stamina: 75, // Over-energized
        maxStamina: 50,
        stats: stats,
      );

      expect(playerState.hp, equals(150));
      expect(playerState.stamina, equals(75));
    });

    test('should serialize to JSON correctly', () {
      const stats = CharacterData(
        strength: 20,
        dexterity: 15,
        intelligence: 12,
        defense: 18,
        luck: 8,
        hp: 120,
        stamina: 60,
      );

      const inventory = [
        ItemStack(id: 'sword', quantity: 1),
        ItemStack(id: 'potion', quantity: 5),
      ];

      const equipment = {
        'weapon': 'legendary_sword',
        'armor': 'dragon_scale_armor',
        'accessory': 'magic_ring',
      };

      const skills = ['slash', 'fireball', 'heal', 'teleport'];

      const playerState = PlayerState(
        name: 'Legendary Hero',
        level: 10,
        xp: 5000,
        hp: 95,
        maxHp: 120,
        stamina: 55,
        maxStamina: 60,
        stats: stats,
        inventory: inventory,
        equipment: equipment,
        skills: skills,
        currentLocationId: 'dragon_lair',
      );

      final json = playerState.toJson();

      expect(json['name'], equals('Legendary Hero'));
      expect(json['level'], equals(10));
      expect(json['xp'], equals(5000));
      expect(json['hp'], equals(95));
      expect(json['maxHp'], equals(120));
      expect(json['stamina'], equals(55));
      expect(json['maxStamina'], equals(60));
      expect(json['stats'], isA<Map<String, dynamic>>());
      expect(json['inventory'], isA<List>());
      expect(json['equipment'], isA<Map<String, dynamic>>());
      expect(json['skills'], equals(['slash', 'fireball', 'heal', 'teleport']));
      expect(json['currentLocationId'], equals('dragon_lair'));
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'name': 'Test Hero',
        'level': 7,
        'xp': 2500,
        'hp': 80,
        'maxHp': 110,
        'stamina': 45,
        'maxStamina': 55,
        'stats': {
          'strength': 16,
          'dexterity': 14,
          'intelligence': 13,
          'defense': 15,
          'luck': 9,
          'hp': 110,
          'stamina': 55,
        },
        'inventory': [
          {'id': 'health_potion', 'quantity': 3},
          {'id': 'mana_crystal', 'quantity': 1},
        ],
        'equipment': {'weapon': 'steel_sword', 'armor': 'chain_mail'},
        'skills': ['double_strike', 'magic_missile'],
        'currentLocationId': 'forest_clearing',
      };

      final playerState = PlayerState.fromJson(json);

      expect(playerState.name, equals('Test Hero'));
      expect(playerState.level, equals(7));
      expect(playerState.xp, equals(2500));
      expect(playerState.hp, equals(80));
      expect(playerState.maxHp, equals(110));
      expect(playerState.stamina, equals(45));
      expect(playerState.maxStamina, equals(55));
      expect(playerState.stats.strength, equals(16));
      expect(playerState.inventory.length, equals(2));
      expect(playerState.inventory[0].id, equals('health_potion'));
      expect(playerState.equipment['weapon'], equals('steel_sword'));
      expect(playerState.skills, equals(['double_strike', 'magic_missile']));
      expect(playerState.currentLocationId, equals('forest_clearing'));
    });

    test('should handle large inventory', () {
      const stats = CharacterData();

      final largeInventory = List.generate(
        100,
        (index) => ItemStack(id: 'item_$index', quantity: index + 1),
      );

      final playerState = PlayerState(
        hp: 100,
        maxHp: 100,
        stamina: 50,
        maxStamina: 50,
        stats: stats,
        inventory: largeInventory,
      );

      expect(playerState.inventory.length, equals(100));
      expect(playerState.inventory[0].id, equals('item_0'));
      expect(playerState.inventory[99].id, equals('item_99'));
    });

    test('should handle complex equipment setup', () {
      const stats = CharacterData();

      const complexEquipment = {
        'main_hand': 'legendary_sword',
        'off_hand': 'magic_shield',
        'head': 'crown_of_wisdom',
        'chest': 'dragon_scale_armor',
        'legs': 'boots_of_speed',
        'ring_1': 'ring_of_power',
        'ring_2': 'ring_of_protection',
        'necklace': 'amulet_of_life',
      };

      const playerState = PlayerState(
        hp: 100,
        maxHp: 100,
        stamina: 50,
        maxStamina: 50,
        stats: stats,
        equipment: complexEquipment,
      );

      expect(playerState.equipment.length, equals(8));
      expect(playerState.equipment['main_hand'], equals('legendary_sword'));
      expect(playerState.equipment['necklace'], equals('amulet_of_life'));
    });

    test('should maintain immutability', () {
      const stats = CharacterData();

      const playerState1 = PlayerState(
        name: 'Test',
        hp: 100,
        maxHp: 100,
        stamina: 50,
        maxStamina: 50,
        stats: stats,
      );

      const playerState2 = PlayerState(
        name: 'Test',
        hp: 100,
        maxHp: 100,
        stamina: 50,
        maxStamina: 50,
        stats: stats,
      );

      expect(playerState1.name, equals(playerState2.name));
      expect(playerState1.level, equals(playerState2.level));
      expect(playerState1.hp, equals(playerState2.hp));
    });

    test('should handle JSON serialization roundtrip', () {
      const stats = CharacterData(
        strength: 18,
        dexterity: 16,
        intelligence: 14,
        defense: 17,
        luck: 11,
        hp: 130,
        stamina: 65,
      );

      const inventory = [ItemStack(id: 'roundtrip_item', quantity: 42)];

      const equipment = {'weapon': 'roundtrip_weapon'};

      const skills = ['roundtrip_skill'];

      const originalPlayer = PlayerState(
        name: 'Roundtrip Hero',
        level: 8,
        xp: 3200,
        hp: 105,
        maxHp: 130,
        stamina: 60,
        maxStamina: 65,
        stats: stats,
        inventory: inventory,
        equipment: equipment,
        skills: skills,
        currentLocationId: 'roundtrip_location',
      );

      final json = originalPlayer.toJson();
      final deserializedPlayer = PlayerState.fromJson(json);

      expect(deserializedPlayer.name, equals(originalPlayer.name));
      expect(deserializedPlayer.level, equals(originalPlayer.level));
      expect(deserializedPlayer.xp, equals(originalPlayer.xp));
      expect(deserializedPlayer.hp, equals(originalPlayer.hp));
      expect(deserializedPlayer.maxHp, equals(originalPlayer.maxHp));
      expect(deserializedPlayer.stamina, equals(originalPlayer.stamina));
      expect(deserializedPlayer.maxStamina, equals(originalPlayer.maxStamina));
      expect(
        deserializedPlayer.stats.strength,
        equals(originalPlayer.stats.strength),
      );
      expect(
        deserializedPlayer.inventory.length,
        equals(originalPlayer.inventory.length),
      );
      expect(
        deserializedPlayer.equipment['weapon'],
        equals(originalPlayer.equipment['weapon']),
      );
      expect(deserializedPlayer.skills, equals(originalPlayer.skills));
      expect(
        deserializedPlayer.currentLocationId,
        equals(originalPlayer.currentLocationId),
      );
    });
  });
}
