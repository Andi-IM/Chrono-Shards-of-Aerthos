import 'package:test/test.dart';
import 'package:csoa/core/models/item_data.dart';
import 'package:csoa/core/models/effect_data.dart';

void main() {
  group('ItemData', () {
    test('should create ItemData with required values', () {
      const effects = [
        EffectData(id: 'heal', magnitude: 50, description: 'Restores 50 HP'),
      ];

      const itemData = ItemData(
        id: 'health_potion',
        name: 'Health Potion',
        type: ItemType.consumable,
        rarity: ItemRarity.common,
        effects: effects,
        description: 'A basic healing potion',
        value: 25,
      );

      expect(itemData.id, equals('health_potion'));
      expect(itemData.name, equals('Health Potion'));
      expect(itemData.type, equals(ItemType.consumable));
      expect(itemData.rarity, equals(ItemRarity.common));
      expect(itemData.effects, equals(effects));
      expect(itemData.description, equals('A basic healing potion'));
      expect(itemData.value, equals(25));
    });

    test('should handle weapon type items', () {
      const effects = [
        EffectData(
          id: 'damage_boost',
          magnitude: 15,
          description: 'Increases damage by 15',
        ),
      ];

      const itemData = ItemData(
        id: 'iron_sword',
        name: 'Iron Sword',
        type: ItemType.weapon,
        rarity: ItemRarity.uncommon,
        effects: effects,
        description: 'A sturdy iron sword',
        value: 150,
      );

      expect(itemData.type, equals(ItemType.weapon));
      expect(itemData.rarity, equals(ItemRarity.uncommon));
      expect(itemData.value, equals(150));
    });

    test('should handle armor type items', () {
      const effects = [
        EffectData(
          id: 'defense_boost',
          magnitude: 10,
          description: 'Increases defense by 10',
        ),
      ];

      const itemData = ItemData(
        id: 'leather_armor',
        name: 'Leather Armor',
        type: ItemType.armor,
        rarity: ItemRarity.common,
        effects: effects,
        description: 'Basic leather protection',
        value: 75,
      );

      expect(itemData.type, equals(ItemType.armor));
      expect(itemData.rarity, equals(ItemRarity.common));
    });

    test('should handle rare items', () {
      const effects = [
        EffectData(
          id: 'legendary_power',
          magnitude: 100,
          description: 'Grants legendary power',
        ),
      ];

      const itemData = ItemData(
        id: 'excalibur',
        name: 'Excalibur',
        type: ItemType.weapon,
        rarity: ItemRarity.rare,
        effects: effects,
        description: 'The legendary sword',
        value: 10000,
      );

      expect(itemData.rarity, equals(ItemRarity.rare));
      expect(itemData.value, equals(10000));
    });

    test('should handle empty effects list', () {
      const itemData = ItemData(
        id: 'broken_item',
        name: 'Broken Item',
        type: ItemType.consumable,
        rarity: ItemRarity.common,
        effects: [],
        description: 'A broken item with no effects',
        value: 1,
      );

      expect(itemData.effects, isEmpty);
      expect(itemData.value, equals(1));
    });

    test('should handle multiple effects', () {
      const effects = [
        EffectData(id: 'heal', magnitude: 30, description: 'Restores 30 HP'),
        EffectData(
          id: 'stamina_boost',
          magnitude: 20,
          description: 'Restores 20 stamina',
        ),
        EffectData(
          id: 'strength_buff',
          magnitude: 5,
          description: 'Temporarily increases strength by 5',
        ),
      ];

      const itemData = ItemData(
        id: 'super_potion',
        name: 'Super Potion',
        type: ItemType.consumable,
        rarity: ItemRarity.rare,
        effects: effects,
        description: 'A powerful multi-effect potion',
        value: 200,
      );

      expect(itemData.effects.length, equals(3));
      expect(itemData.effects[0].id, equals('heal'));
      expect(itemData.effects[1].id, equals('stamina_boost'));
      expect(itemData.effects[2].id, equals('strength_buff'));
    });

    test('should serialize to JSON correctly', () {
      const effects = [
        EffectData(
          id: 'fire_damage',
          magnitude: 25,
          description: 'Deals 25 fire damage',
        ),
      ];

      const itemData = ItemData(
        id: 'fire_sword',
        name: 'Fire Sword',
        type: ItemType.weapon,
        rarity: ItemRarity.uncommon,
        effects: effects,
        description: 'A sword imbued with fire',
        value: 300,
      );

      final json = itemData.toJson();

      expect(json['id'], equals('fire_sword'));
      expect(json['name'], equals('Fire Sword'));
      expect(json['type'], equals('weapon'));
      expect(json['rarity'], equals('uncommon'));
      expect(json['effects'], isA<List>());
      expect(json['description'], equals('A sword imbued with fire'));
      expect(json['value'], equals(300));
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'id': 'magic_shield',
        'name': 'Magic Shield',
        'type': 'armor',
        'rarity': 'rare',
        'effects': [
          {
            'id': 'magic_resist',
            'magnitude': 20,
            'description': 'Provides 20 magic resistance',
          },
        ],
        'description': 'A shield that protects against magic',
        'value': 500,
      };

      final itemData = ItemData.fromJson(json);

      expect(itemData.id, equals('magic_shield'));
      expect(itemData.name, equals('Magic Shield'));
      expect(itemData.type, equals(ItemType.armor));
      expect(itemData.rarity, equals(ItemRarity.rare));
      expect(itemData.effects.length, equals(1));
      expect(itemData.effects[0].id, equals('magic_resist'));
      expect(
        itemData.description,
        equals('A shield that protects against magic'),
      );
      expect(itemData.value, equals(500));
    });

    test('should handle zero value items', () {
      const itemData = ItemData(
        id: 'worthless_junk',
        name: 'Worthless Junk',
        type: ItemType.consumable,
        rarity: ItemRarity.common,
        effects: [],
        description: 'Completely worthless',
        value: 0,
      );

      expect(itemData.value, equals(0));
    });

    test('should maintain immutability', () {
      const effects = [
        EffectData(
          id: 'test_effect',
          magnitude: 10,
          description: 'Test effect',
        ),
      ];

      const itemData1 = ItemData(
        id: 'test_item',
        name: 'Test Item',
        type: ItemType.consumable,
        rarity: ItemRarity.common,
        effects: effects,
        description: 'Test description',
        value: 50,
      );

      const itemData2 = ItemData(
        id: 'test_item',
        name: 'Test Item',
        type: ItemType.consumable,
        rarity: ItemRarity.common,
        effects: effects,
        description: 'Test description',
        value: 50,
      );

      expect(itemData1.id, equals(itemData2.id));
      expect(itemData1.name, equals(itemData2.name));
      expect(itemData1.type, equals(itemData2.type));
      expect(itemData1.rarity, equals(itemData2.rarity));
    });

    test('should handle JSON serialization roundtrip', () {
      const effects = [
        EffectData(
          id: 'roundtrip_effect',
          magnitude: 42,
          description: 'Roundtrip test effect',
        ),
      ];

      const originalItem = ItemData(
        id: 'roundtrip_item',
        name: 'Roundtrip Item',
        type: ItemType.weapon,
        rarity: ItemRarity.uncommon,
        effects: effects,
        description: 'Testing JSON roundtrip',
        value: 123,
      );

      final json = originalItem.toJson();
      final deserializedItem = ItemData.fromJson(json);

      expect(deserializedItem.id, equals(originalItem.id));
      expect(deserializedItem.name, equals(originalItem.name));
      expect(deserializedItem.type, equals(originalItem.type));
      expect(deserializedItem.rarity, equals(originalItem.rarity));
      expect(
        deserializedItem.effects.length,
        equals(originalItem.effects.length),
      );
      expect(deserializedItem.description, equals(originalItem.description));
      expect(deserializedItem.value, equals(originalItem.value));
    });
  });

  group('ItemType enum', () {
    test('should have correct values', () {
      expect(ItemType.values.length, equals(5));
      expect(ItemType.values, contains(ItemType.weapon));
      expect(ItemType.values, contains(ItemType.armor));
      expect(ItemType.values, contains(ItemType.consumable));
    });
  });

  group('ItemRarity enum', () {
    test('should have correct values', () {
      expect(ItemRarity.values.length, equals(5));
      expect(ItemRarity.values, contains(ItemRarity.common));
      expect(ItemRarity.values, contains(ItemRarity.uncommon));
      expect(ItemRarity.values, contains(ItemRarity.rare));
    });
  });
}
