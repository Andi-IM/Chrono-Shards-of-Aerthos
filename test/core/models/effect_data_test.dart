import 'package:test/test.dart';
import 'package:csoa/core/models/effect_data.dart';

void main() {
  group('EffectData', () {
    test('should create EffectData with required values', () {
      const effectData = EffectData(
        id: 'heal_potion',
        magnitude: 50,
        description: 'Restores 50 HP',
      );

      expect(effectData.id, equals('heal_potion'));
      expect(effectData.magnitude, equals(50));
      expect(effectData.description, equals('Restores 50 HP'));
    });

    test('should serialize to JSON correctly', () {
      const effectData = EffectData(
        id: 'strength_boost',
        magnitude: 10,
        description: 'Increases strength by 10',
      );

      final json = effectData.toJson();

      expect(json['id'], equals('strength_boost'));
      expect(json['magnitude'], equals(10));
      expect(json['description'], equals('Increases strength by 10'));
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'id': 'fire_damage',
        'magnitude': 25,
        'description': 'Deals 25 fire damage',
      };

      final effectData = EffectData.fromJson(json);

      expect(effectData.id, equals('fire_damage'));
      expect(effectData.magnitude, equals(25));
      expect(effectData.description, equals('Deals 25 fire damage'));
    });

    test('should handle negative magnitude values', () {
      const effectData = EffectData(
        id: 'poison',
        magnitude: -5,
        description: 'Reduces HP by 5 per turn',
      );

      expect(effectData.magnitude, equals(-5));
      expect(effectData.id, equals('poison'));
      expect(effectData.description, equals('Reduces HP by 5 per turn'));
    });

    test('should handle zero magnitude values', () {
      const effectData = EffectData(
        id: 'null_effect',
        magnitude: 0,
        description: 'No effect',
      );

      expect(effectData.magnitude, equals(0));
      expect(effectData.id, equals('null_effect'));
      expect(effectData.description, equals('No effect'));
    });

    test('should handle empty strings', () {
      const effectData = EffectData(id: '', magnitude: 1, description: '');

      expect(effectData.id, equals(''));
      expect(effectData.magnitude, equals(1));
      expect(effectData.description, equals(''));
    });

    test('should maintain immutability', () {
      const effectData1 = EffectData(
        id: 'test',
        magnitude: 10,
        description: 'Test effect',
      );
      const effectData2 = EffectData(
        id: 'test',
        magnitude: 10,
        description: 'Test effect',
      );

      expect(effectData1.id, equals(effectData2.id));
      expect(effectData1.magnitude, equals(effectData2.magnitude));
      expect(effectData1.description, equals(effectData2.description));
    });

    test('should handle JSON serialization roundtrip', () {
      const originalEffect = EffectData(
        id: 'roundtrip_test',
        magnitude: 42,
        description: 'Testing JSON roundtrip',
      );

      final json = originalEffect.toJson();
      final deserializedEffect = EffectData.fromJson(json);

      expect(deserializedEffect.id, equals(originalEffect.id));
      expect(deserializedEffect.magnitude, equals(originalEffect.magnitude));
      expect(
        deserializedEffect.description,
        equals(originalEffect.description),
      );
    });
  });
}
