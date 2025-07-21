import 'package:test/test.dart';
import 'package:csoa/core/models/world_state.dart';

void main() {
  group('WorldState', () {
    test('should create WorldState with required values', () {
      const flags = {
        'tutorial_completed': true,
        'boss_defeated': false,
        'secret_found': true,
      };

      const pityCounters = {
        'rare_drop_counter': 5,
        'legendary_counter': 0,
        'event_counter': 12,
      };

      const worldState = WorldState(flags: flags, pityCounters: pityCounters);

      expect(worldState.flags, equals(flags));
      expect(worldState.pityCounters, equals(pityCounters));
    });

    test('should handle empty flags and pity counters', () {
      const worldState = WorldState(flags: {}, pityCounters: {});

      expect(worldState.flags, isEmpty);
      expect(worldState.pityCounters, isEmpty);
    });

    test('should handle only boolean flags', () {
      const flags = {
        'flag1': true,
        'flag2': false,
        'flag3': true,
        'flag4': false,
      };

      const worldState = WorldState(flags: flags, pityCounters: {});

      expect(worldState.flags['flag1'], isTrue);
      expect(worldState.flags['flag2'], isFalse);
      expect(worldState.flags['flag3'], isTrue);
      expect(worldState.flags['flag4'], isFalse);
    });

    test('should handle various pity counter values', () {
      const pityCounters = {
        'zero_counter': 0,
        'positive_counter': 42,
        'negative_counter': -5,
        'large_counter': 999999,
      };

      const worldState = WorldState(flags: {}, pityCounters: pityCounters);

      expect(worldState.pityCounters['zero_counter'], equals(0));
      expect(worldState.pityCounters['positive_counter'], equals(42));
      expect(worldState.pityCounters['negative_counter'], equals(-5));
      expect(worldState.pityCounters['large_counter'], equals(999999));
    });

    test('should handle game progression flags', () {
      const flags = {
        'game_started': true,
        'intro_watched': true,
        'first_battle_won': true,
        'first_level_completed': false,
        'mid_game_reached': false,
        'final_boss_unlocked': false,
        'game_completed': false,
      };

      const worldState = WorldState(flags: flags, pityCounters: {});

      expect(worldState.flags['game_started'], isTrue);
      expect(worldState.flags['game_completed'], isFalse);
    });

    test('should handle quest and achievement flags', () {
      const flags = {
        'quest_main_001_completed': true,
        'quest_side_001_available': true,
        'quest_side_001_completed': false,
        'achievement_first_kill': true,
        'achievement_collector': false,
        'achievement_speedrun': false,
      };

      const worldState = WorldState(flags: flags, pityCounters: {});

      expect(worldState.flags['quest_main_001_completed'], isTrue);
      expect(worldState.flags['achievement_first_kill'], isTrue);
      expect(worldState.flags['achievement_speedrun'], isFalse);
    });

    test('should handle loot and drop pity counters', () {
      const pityCounters = {
        'rare_weapon_pity': 15,
        'rare_armor_pity': 8,
        'legendary_item_pity': 45,
        'epic_drop_pity': 23,
        'boss_loot_pity': 3,
      };

      const worldState = WorldState(flags: {}, pityCounters: pityCounters);

      expect(worldState.pityCounters['rare_weapon_pity'], equals(15));
      expect(worldState.pityCounters['legendary_item_pity'], equals(45));
    });

    test('should serialize to JSON correctly', () {
      const flags = {'serialization_test': true, 'json_test_flag': false};

      const pityCounters = {'serialization_counter': 100, 'json_counter': 200};

      const worldState = WorldState(flags: flags, pityCounters: pityCounters);

      final json = worldState.toJson();

      expect(json['flags'], isA<Map<String, dynamic>>());
      expect(json['pityCounters'], isA<Map<String, dynamic>>());
      expect(json['flags']['serialization_test'], isTrue);
      expect(json['flags']['json_test_flag'], isFalse);
      expect(json['pityCounters']['serialization_counter'], equals(100));
      expect(json['pityCounters']['json_counter'], equals(200));
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'flags': {
          'deserialization_test': true,
          'from_json_flag': false,
          'another_flag': true,
        },
        'pityCounters': {
          'deserialization_counter': 150,
          'from_json_counter': 75,
          'another_counter': 0,
        },
      };

      final worldState = WorldState.fromJson(json);

      expect(worldState.flags['deserialization_test'], isTrue);
      expect(worldState.flags['from_json_flag'], isFalse);
      expect(worldState.flags['another_flag'], isTrue);
      expect(worldState.pityCounters['deserialization_counter'], equals(150));
      expect(worldState.pityCounters['from_json_counter'], equals(75));
      expect(worldState.pityCounters['another_counter'], equals(0));
    });

    test('should handle large number of flags', () {
      final flags = <String, bool>{};
      for (int i = 0; i < 100; i++) {
        flags['flag_$i'] = i % 2 == 0; // Even indices true, odd false
      }

      final worldState = WorldState(flags: flags, pityCounters: const {});

      expect(worldState.flags.length, equals(100));
      expect(worldState.flags['flag_0'], isTrue);
      expect(worldState.flags['flag_1'], isFalse);
      expect(worldState.flags['flag_50'], isTrue);
      expect(worldState.flags['flag_99'], isFalse);
    });

    test('should handle large number of pity counters', () {
      final pityCounters = <String, int>{};
      for (int i = 0; i < 50; i++) {
        pityCounters['counter_$i'] = i * 10;
      }

      final worldState = WorldState(flags: {}, pityCounters: pityCounters);

      expect(worldState.pityCounters.length, equals(50));
      expect(worldState.pityCounters['counter_0'], equals(0));
      expect(worldState.pityCounters['counter_10'], equals(100));
      expect(worldState.pityCounters['counter_49'], equals(490));
    });

    test('should handle special characters in keys', () {
      const flags = {
        'flag_with_underscore': true,
        'flag-with-dash': false,
        'flag.with.dots': true,
        'flag@special#chars': false,
      };

      const pityCounters = {
        'counter_with_underscore': 10,
        'counter-with-dash': 20,
        'counter.with.dots': 30,
        'counter@special#chars': 40,
      };

      const worldState = WorldState(flags: flags, pityCounters: pityCounters);

      expect(worldState.flags['flag_with_underscore'], isTrue);
      expect(worldState.flags['flag-with-dash'], isFalse);
      expect(worldState.flags['flag.with.dots'], isTrue);
      expect(worldState.flags['flag@special#chars'], isFalse);
      expect(worldState.pityCounters['counter_with_underscore'], equals(10));
      expect(worldState.pityCounters['counter@special#chars'], equals(40));
    });

    test('should maintain immutability', () {
      const flags = {'test_flag': true};
      const pityCounters = {'test_counter': 42};

      const worldState1 = WorldState(flags: flags, pityCounters: pityCounters);

      const worldState2 = WorldState(flags: flags, pityCounters: pityCounters);

      expect(worldState1.flags, equals(worldState2.flags));
      expect(worldState1.pityCounters, equals(worldState2.pityCounters));
    });

    test('should handle JSON serialization roundtrip', () {
      const flags = {
        'roundtrip_flag_1': true,
        'roundtrip_flag_2': false,
        'roundtrip_flag_3': true,
      };

      const pityCounters = {
        'roundtrip_counter_1': 123,
        'roundtrip_counter_2': 456,
        'roundtrip_counter_3': 0,
      };

      const originalWorldState = WorldState(
        flags: flags,
        pityCounters: pityCounters,
      );

      final json = originalWorldState.toJson();
      final deserializedWorldState = WorldState.fromJson(json);

      expect(deserializedWorldState.flags, equals(originalWorldState.flags));
      expect(
        deserializedWorldState.pityCounters,
        equals(originalWorldState.pityCounters),
      );
      expect(deserializedWorldState.flags['roundtrip_flag_1'], isTrue);
      expect(deserializedWorldState.flags['roundtrip_flag_2'], isFalse);
      expect(
        deserializedWorldState.pityCounters['roundtrip_counter_1'],
        equals(123),
      );
      expect(
        deserializedWorldState.pityCounters['roundtrip_counter_3'],
        equals(0),
      );
    });

    test('should handle extreme pity counter values', () {
      const pityCounters = {
        'max_int': 2147483647, // Max 32-bit signed integer
        'min_int': -2147483648, // Min 32-bit signed integer
        'zero': 0,
      };

      const worldState = WorldState(flags: {}, pityCounters: pityCounters);

      expect(worldState.pityCounters['max_int'], equals(2147483647));
      expect(worldState.pityCounters['min_int'], equals(-2147483648));
      expect(worldState.pityCounters['zero'], equals(0));
    });

    test('should handle empty string keys', () {
      const flags = {'': true, 'normal_flag': false};

      const pityCounters = {'': 100, 'normal_counter': 200};

      const worldState = WorldState(flags: flags, pityCounters: pityCounters);

      expect(worldState.flags[''], isTrue);
      expect(worldState.flags['normal_flag'], isFalse);
      expect(worldState.pityCounters[''], equals(100));
      expect(worldState.pityCounters['normal_counter'], equals(200));
    });
  });
}
