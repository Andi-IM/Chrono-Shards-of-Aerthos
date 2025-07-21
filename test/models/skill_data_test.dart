import 'package:test/test.dart';
import 'package:csoa/core/models/skill_data.dart';

void main() {
  group('SkillData', () {
    test('should create SkillData with required values', () {
      const skillData = SkillData(
        id: 'fireball',
        name: 'Fireball',
        staminaCost: 15,
        description: 'Launches a ball of fire at the enemy',
      );

      expect(skillData.id, equals('fireball'));
      expect(skillData.name, equals('Fireball'));
      expect(skillData.staminaCost, equals(15));
      expect(
        skillData.description,
        equals('Launches a ball of fire at the enemy'),
      );
    });

    test('should handle zero stamina cost skills', () {
      const skillData = SkillData(
        id: 'basic_attack',
        name: 'Basic Attack',
        staminaCost: 0,
        description: 'A simple attack that costs no stamina',
      );

      expect(skillData.staminaCost, equals(0));
      expect(skillData.id, equals('basic_attack'));
      expect(skillData.name, equals('Basic Attack'));
    });

    test('should handle high stamina cost skills', () {
      const skillData = SkillData(
        id: 'ultimate_blast',
        name: 'Ultimate Blast',
        staminaCost: 100,
        description: 'The most powerful attack, drains all stamina',
      );

      expect(skillData.staminaCost, equals(100));
      expect(skillData.name, equals('Ultimate Blast'));
    });

    test('should handle negative stamina cost (stamina restoration)', () {
      const skillData = SkillData(
        id: 'meditation',
        name: 'Meditation',
        staminaCost: -20,
        description: 'Restores stamina instead of consuming it',
      );

      expect(skillData.staminaCost, equals(-20));
      expect(
        skillData.description,
        equals('Restores stamina instead of consuming it'),
      );
    });

    test('should handle empty strings', () {
      const skillData = SkillData(
        id: '',
        name: '',
        staminaCost: 5,
        description: '',
      );

      expect(skillData.id, equals(''));
      expect(skillData.name, equals(''));
      expect(skillData.description, equals(''));
      expect(skillData.staminaCost, equals(5));
    });

    test('should handle long descriptions', () {
      const longDescription =
          'This is a very long skill description that explains in great detail what the skill does, how it works, its history, and all the intricate mechanics involved in its execution. It goes on and on with extensive lore and technical details.';

      const skillData = SkillData(
        id: 'complex_spell',
        name: 'Complex Spell',
        staminaCost: 50,
        description: longDescription,
      );

      expect(skillData.description, equals(longDescription));
      expect(skillData.description.length, greaterThan(100));
    });

    test('should handle special characters in names and descriptions', () {
      const skillData = SkillData(
        id: 'special_skill_@#\$',
        name: 'Skill with Special Characters: !@#\$%^&*()',
        staminaCost: 25,
        description:
            'Description with special chars: áéíóú, ñ, ç, and symbols: ★☆♦♠',
      );

      expect(skillData.id, equals('special_skill_@#\$'));
      expect(
        skillData.name,
        equals('Skill with Special Characters: !@#\$%^&*()'),
      );
      expect(skillData.description, contains('áéíóú'));
      expect(skillData.description, contains('★☆♦♠'));
    });

    test('should serialize to JSON correctly', () {
      const skillData = SkillData(
        id: 'ice_shard',
        name: 'Ice Shard',
        staminaCost: 12,
        description: 'Shoots a sharp shard of ice',
      );

      final json = skillData.toJson();

      expect(json['id'], equals('ice_shard'));
      expect(json['name'], equals('Ice Shard'));
      expect(json['staminaCost'], equals(12));
      expect(json['description'], equals('Shoots a sharp shard of ice'));
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'id': 'lightning_bolt',
        'name': 'Lightning Bolt',
        'staminaCost': 20,
        'description': 'Strikes the enemy with lightning',
      };

      final skillData = SkillData.fromJson(json);

      expect(skillData.id, equals('lightning_bolt'));
      expect(skillData.name, equals('Lightning Bolt'));
      expect(skillData.staminaCost, equals(20));
      expect(skillData.description, equals('Strikes the enemy with lightning'));
    });

    test('should handle healing skills', () {
      const skillData = SkillData(
        id: 'heal',
        name: 'Heal',
        staminaCost: 10,
        description: 'Restores health to the caster or ally',
      );

      expect(skillData.id, equals('heal'));
      expect(skillData.name, equals('Heal'));
      expect(skillData.staminaCost, equals(10));
      expect(skillData.description, contains('Restores health'));
    });

    test('should handle buff skills', () {
      const skillData = SkillData(
        id: 'strength_boost',
        name: 'Strength Boost',
        staminaCost: 8,
        description: 'Temporarily increases strength by 50%',
      );

      expect(skillData.id, equals('strength_boost'));
      expect(skillData.name, equals('Strength Boost'));
      expect(skillData.description, contains('increases strength'));
    });

    test('should handle debuff skills', () {
      const skillData = SkillData(
        id: 'weakness_curse',
        name: 'Weakness Curse',
        staminaCost: 15,
        description: 'Reduces enemy attack power for 3 turns',
      );

      expect(skillData.id, equals('weakness_curse'));
      expect(skillData.name, equals('Weakness Curse'));
      expect(skillData.description, contains('Reduces enemy'));
    });

    test('should handle utility skills', () {
      const skillData = SkillData(
        id: 'teleport',
        name: 'Teleport',
        staminaCost: 30,
        description: 'Instantly move to a different location',
      );

      expect(skillData.id, equals('teleport'));
      expect(skillData.name, equals('Teleport'));
      expect(skillData.description, contains('move to a different location'));
    });

    test('should maintain immutability', () {
      const skillData1 = SkillData(
        id: 'test_skill',
        name: 'Test Skill',
        staminaCost: 10,
        description: 'A test skill',
      );

      const skillData2 = SkillData(
        id: 'test_skill',
        name: 'Test Skill',
        staminaCost: 10,
        description: 'A test skill',
      );

      expect(skillData1.id, equals(skillData2.id));
      expect(skillData1.name, equals(skillData2.name));
      expect(skillData1.staminaCost, equals(skillData2.staminaCost));
      expect(skillData1.description, equals(skillData2.description));
    });

    test('should handle JSON serialization roundtrip', () {
      const originalSkill = SkillData(
        id: 'roundtrip_skill',
        name: 'Roundtrip Test Skill',
        staminaCost: 42,
        description: 'Testing JSON serialization roundtrip functionality',
      );

      final json = originalSkill.toJson();
      final deserializedSkill = SkillData.fromJson(json);

      expect(deserializedSkill.id, equals(originalSkill.id));
      expect(deserializedSkill.name, equals(originalSkill.name));
      expect(deserializedSkill.staminaCost, equals(originalSkill.staminaCost));
      expect(deserializedSkill.description, equals(originalSkill.description));
    });

    test('should handle maximum integer stamina cost', () {
      const skillData = SkillData(
        id: 'max_cost_skill',
        name: 'Maximum Cost Skill',
        staminaCost: 2147483647, // Max 32-bit signed integer
        description: 'A skill with maximum possible stamina cost',
      );

      expect(skillData.staminaCost, equals(2147483647));
    });

    test('should handle minimum integer stamina cost', () {
      const skillData = SkillData(
        id: 'min_cost_skill',
        name: 'Minimum Cost Skill',
        staminaCost: -2147483648, // Min 32-bit signed integer
        description: 'A skill with minimum possible stamina cost',
      );

      expect(skillData.staminaCost, equals(-2147483648));
    });

    test('should handle skills with numeric names', () {
      const skillData = SkillData(
        id: 'skill_001',
        name: '001 - First Skill',
        staminaCost: 5,
        description: 'Skill with numeric identifier in name',
      );

      expect(skillData.id, equals('skill_001'));
      expect(skillData.name, equals('001 - First Skill'));
    });

    test('should handle multiline descriptions', () {
      const multilineDescription =
          'Line 1: Basic effect\nLine 2: Advanced effect\nLine 3: Special conditions';

      const skillData = SkillData(
        id: 'multiline_skill',
        name: 'Multiline Skill',
        staminaCost: 25,
        description: multilineDescription,
      );

      expect(skillData.description, equals(multilineDescription));
      expect(skillData.description, contains('\n'));
    });
  });
}
