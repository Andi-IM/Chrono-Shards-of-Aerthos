import 'package:test/test.dart';
import 'package:csoa/core/models/item_stack.dart';

void main() {
  group('ItemStack', () {
    test('should create ItemStack with required values', () {
      const itemStack = ItemStack(id: 'health_potion', quantity: 5);

      expect(itemStack.id, equals('health_potion'));
      expect(itemStack.quantity, equals(5));
    });

    test('should handle single item quantity', () {
      const itemStack = ItemStack(id: 'legendary_sword', quantity: 1);

      expect(itemStack.id, equals('legendary_sword'));
      expect(itemStack.quantity, equals(1));
    });

    test('should handle large quantities', () {
      const itemStack = ItemStack(id: 'arrow', quantity: 999);

      expect(itemStack.id, equals('arrow'));
      expect(itemStack.quantity, equals(999));
    });

    test('should handle zero quantity', () {
      const itemStack = ItemStack(id: 'empty_stack', quantity: 0);

      expect(itemStack.id, equals('empty_stack'));
      expect(itemStack.quantity, equals(0));
    });

    test('should handle empty string id', () {
      const itemStack = ItemStack(id: '', quantity: 10);

      expect(itemStack.id, equals(''));
      expect(itemStack.quantity, equals(10));
    });

    test('should serialize to JSON correctly', () {
      const itemStack = ItemStack(id: 'mana_potion', quantity: 3);

      final json = itemStack.toJson();

      expect(json['id'], equals('mana_potion'));
      expect(json['quantity'], equals(3));
    });

    test('should deserialize from JSON correctly', () {
      final json = {'id': 'gold_coin', 'quantity': 150};

      final itemStack = ItemStack.fromJson(json);

      expect(itemStack.id, equals('gold_coin'));
      expect(itemStack.quantity, equals(150));
    });

    test('should handle negative quantities in JSON', () {
      final json = {'id': 'debt_token', 'quantity': -5};

      final itemStack = ItemStack.fromJson(json);

      expect(itemStack.id, equals('debt_token'));
      expect(itemStack.quantity, equals(-5));
    });

    test('should maintain immutability', () {
      const itemStack1 = ItemStack(id: 'test_item', quantity: 10);

      const itemStack2 = ItemStack(id: 'test_item', quantity: 10);

      expect(itemStack1.id, equals(itemStack2.id));
      expect(itemStack1.quantity, equals(itemStack2.quantity));
    });

    test('should handle JSON serialization roundtrip', () {
      const originalStack = ItemStack(id: 'roundtrip_test', quantity: 42);

      final json = originalStack.toJson();
      final deserializedStack = ItemStack.fromJson(json);

      expect(deserializedStack.id, equals(originalStack.id));
      expect(deserializedStack.quantity, equals(originalStack.quantity));
    });

    test('should handle special characters in id', () {
      const itemStack = ItemStack(id: 'special_item_@#\$%', quantity: 1);

      expect(itemStack.id, equals('special_item_@#\$%'));
      expect(itemStack.quantity, equals(1));
    });

    test('should handle very long id strings', () {
      const longId =
          'this_is_a_very_long_item_id_that_might_be_used_in_some_cases_for_testing_purposes_and_edge_cases';
      const itemStack = ItemStack(id: longId, quantity: 1);

      expect(itemStack.id, equals(longId));
      expect(itemStack.quantity, equals(1));
    });

    test('should handle maximum integer values', () {
      const itemStack = ItemStack(
        id: 'max_stack',
        quantity: 2147483647, // Max 32-bit signed integer
      );

      expect(itemStack.id, equals('max_stack'));
      expect(itemStack.quantity, equals(2147483647));
    });

    test('should handle minimum integer values', () {
      const itemStack = ItemStack(
        id: 'min_stack',
        quantity: -2147483648, // Min 32-bit signed integer
      );

      expect(itemStack.id, equals('min_stack'));
      expect(itemStack.quantity, equals(-2147483648));
    });

    test('should handle JSON with missing fields gracefully', () {
      // This test assumes that fromJson might handle missing fields
      // The actual behavior depends on the generated code
      final json = <String, dynamic>{};

      expect(() => ItemStack.fromJson(json), throwsA(isA<Error>()));
    });

    test('should handle JSON with null values', () {
      final json = {'id': null, 'quantity': null};

      expect(() => ItemStack.fromJson(json), throwsA(isA<Error>()));
    });

    test('should handle JSON with wrong types', () {
      final json = {
        'id': 123, // Should be string
        'quantity': 'not_a_number', // Should be int
      };

      expect(() => ItemStack.fromJson(json), throwsA(isA<Error>()));
    });
  });
}
