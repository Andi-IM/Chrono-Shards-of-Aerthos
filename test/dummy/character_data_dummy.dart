import 'package:csoa/core/models/character_data.dart';

/// Dummy data factory for CharacterData model
class CharacterDataDummy {
  /// Creates a basic warrior character with balanced stats
  static CharacterData warrior() {
    return const CharacterData(
      strength: 15,
      dexterity: 12,
      intelligence: 8,
      defense: 14,
      luck: 10,
      hp: 100,
      stamina: 80,
    );
  }

  /// Creates a mage character with high intelligence
  static CharacterData mage() {
    return const CharacterData(
      strength: 6,
      dexterity: 10,
      intelligence: 18,
      defense: 8,
      luck: 12,
      hp: 70,
      stamina: 120,
    );
  }

  /// Creates a rogue character with high dexterity
  static CharacterData rogue() {
    return const CharacterData(
      strength: 10,
      dexterity: 18,
      intelligence: 12,
      defense: 9,
      luck: 15,
      hp: 85,
      stamina: 100,
    );
  }

  /// Creates a tank character with high defense
  static CharacterData tank() {
    return const CharacterData(
      strength: 12,
      dexterity: 8,
      intelligence: 10,
      defense: 20,
      luck: 8,
      hp: 150,
      stamina: 60,
    );
  }

  /// Creates a character with minimum stats
  static CharacterData weakling() {
    return const CharacterData(
      strength: 1,
      dexterity: 1,
      intelligence: 1,
      defense: 1,
      luck: 1,
      hp: 10,
      stamina: 10,
    );
  }

  /// Creates a character with maximum reasonable stats
  static CharacterData legendary() {
    return const CharacterData(
      strength: 25,
      dexterity: 25,
      intelligence: 25,
      defense: 25,
      luck: 25,
      hp: 500,
      stamina: 300,
    );
  }

  /// Creates a character with default stats
  static CharacterData defaultStats() {
    return const CharacterData();
  }

  /// Creates a list of various character types
  static List<CharacterData> allTypes() {
    return [
      warrior(),
      mage(),
      rogue(),
      tank(),
      weakling(),
      legendary(),
      defaultStats(),
    ];
  }

  /// Creates a character from JSON for testing
  static CharacterData fromJsonExample() {
    final json = {
      'strength': 13,
      'dexterity': 14,
      'intelligence': 11,
      'defense': 12,
      'luck': 9,
      'hp': 95,
      'stamina': 85,
    };
    return CharacterData.fromJson(json);
  }
}
