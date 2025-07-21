import 'package:test/test.dart';
import 'package:csoa/core/models/character_data.dart';

void main() {
  group('CharacterData', () {
    test('should create CharacterData with default values', () {
      const characterData = CharacterData();

      expect(characterData.strength, equals(10));
      expect(characterData.dexterity, equals(10));
      expect(characterData.intelligence, equals(10));
      expect(characterData.defense, equals(10));
      expect(characterData.luck, equals(10));
      expect(characterData.hp, equals(100));
      expect(characterData.stamina, equals(50));
    });

    test('should create CharacterData with custom values', () {
      const characterData = CharacterData(
        strength: 15,
        dexterity: 12,
        intelligence: 18,
        defense: 14,
        luck: 8,
        hp: 120,
        stamina: 60,
      );

      expect(characterData.strength, equals(15));
      expect(characterData.dexterity, equals(12));
      expect(characterData.intelligence, equals(18));
      expect(characterData.defense, equals(14));
      expect(characterData.luck, equals(8));
      expect(characterData.hp, equals(120));
      expect(characterData.stamina, equals(60));
    });

    test('should serialize to JSON correctly', () {
      const characterData = CharacterData(
        strength: 15,
        dexterity: 12,
        intelligence: 18,
        defense: 14,
        luck: 8,
        hp: 120,
        stamina: 60,
      );

      final json = characterData.toJson();

      expect(json['strength'], equals(15));
      expect(json['dexterity'], equals(12));
      expect(json['intelligence'], equals(18));
      expect(json['defense'], equals(14));
      expect(json['luck'], equals(8));
      expect(json['hp'], equals(120));
      expect(json['stamina'], equals(60));
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'strength': 15,
        'dexterity': 12,
        'intelligence': 18,
        'defense': 14,
        'luck': 8,
        'hp': 120,
        'stamina': 60,
      };

      final characterData = CharacterData.fromJson(json);

      expect(characterData.strength, equals(15));
      expect(characterData.dexterity, equals(12));
      expect(characterData.intelligence, equals(18));
      expect(characterData.defense, equals(14));
      expect(characterData.luck, equals(8));
      expect(characterData.hp, equals(120));
      expect(characterData.stamina, equals(60));
    });

    test('should handle partial JSON with default values', () {
      final json = {'strength': 20, 'hp': 150};

      final characterData = CharacterData.fromJson(json);

      expect(characterData.strength, equals(20));
      expect(characterData.hp, equals(150));
      // Default values should be used for missing fields
      expect(characterData.dexterity, equals(10));
      expect(characterData.intelligence, equals(10));
      expect(characterData.defense, equals(10));
      expect(characterData.luck, equals(10));
      expect(characterData.stamina, equals(50));
    });

    test('should maintain immutability', () {
      const characterData1 = CharacterData(strength: 15);
      const characterData2 = CharacterData(strength: 15);

      expect(characterData1.strength, equals(characterData2.strength));
      expect(characterData1.dexterity, equals(characterData2.dexterity));
    });
  });
}
