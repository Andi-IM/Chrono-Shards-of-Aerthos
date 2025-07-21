import 'package:csoa/core/models/item_stack.dart';

/// Dummy data factory for ItemStack model
class ItemStackDummy {
  /// Creates a single healing potion
  static ItemStack singleHealingPotion() {
    return const ItemStack(id: 'heal_potion', quantity: 1);
  }

  /// Creates a stack of healing potions
  static ItemStack healingPotionStack() {
    return const ItemStack(id: 'heal_potion', quantity: 5);
  }

  /// Creates a large stack of arrows
  static ItemStack arrowStack() {
    return const ItemStack(id: 'iron_arrow', quantity: 50);
  }

  /// Creates a single rare weapon
  static ItemStack legendaryWeapon() {
    return const ItemStack(id: 'excalibur', quantity: 1);
  }

  /// Creates a stack of gold coins
  static ItemStack goldCoins() {
    return const ItemStack(id: 'gold_coin', quantity: 100);
  }

  /// Creates a small stack of mana potions
  static ItemStack manaPotions() {
    return const ItemStack(id: 'mana_potion', quantity: 3);
  }

  /// Creates a stack of crafting materials
  static ItemStack ironOre() {
    return const ItemStack(id: 'iron_ore', quantity: 25);
  }

  /// Creates a single piece of armor
  static ItemStack plateArmor() {
    return const ItemStack(id: 'plate_armor', quantity: 1);
  }

  /// Creates a large stack of food items
  static ItemStack bread() {
    return const ItemStack(id: 'bread', quantity: 20);
  }

  /// Creates a stack with maximum reasonable quantity
  static ItemStack maxStack() {
    return const ItemStack(id: 'common_item', quantity: 999);
  }

  /// Creates a stack with zero quantity (edge case)
  static ItemStack emptyStack() {
    return const ItemStack(id: 'empty_item', quantity: 0);
  }

  /// Creates a stack with very large quantity
  static ItemStack massiveStack() {
    return const ItemStack(id: 'infinite_item', quantity: 1000000);
  }

  /// Creates stacks for a basic inventory
  static List<ItemStack> basicInventory() {
    return [
      singleHealingPotion(),
      manaPotions(),
      goldCoins(),
      arrowStack(),
      ironOre(),
    ];
  }

  /// Creates stacks for a warrior's inventory
  static List<ItemStack> warriorInventory() {
    return [
      const ItemStack(id: 'iron_sword', quantity: 1),
      const ItemStack(id: 'leather_armor', quantity: 1),
      const ItemStack(id: 'iron_shield', quantity: 1),
      healingPotionStack(),
      const ItemStack(id: 'repair_kit', quantity: 2),
      goldCoins(),
    ];
  }

  /// Creates stacks for a mage's inventory
  static List<ItemStack> mageInventory() {
    return [
      const ItemStack(id: 'magic_staff', quantity: 1),
      const ItemStack(id: 'mage_robe', quantity: 1),
      const ItemStack(id: 'spell_book', quantity: 3),
      manaPotions(),
      const ItemStack(id: 'mana_crystal', quantity: 10),
      const ItemStack(id: 'scroll_fireball', quantity: 5),
    ];
  }

  /// Creates stacks for a rogue's inventory
  static List<ItemStack> rogueInventory() {
    return [
      const ItemStack(id: 'dagger', quantity: 2),
      const ItemStack(id: 'leather_armor', quantity: 1),
      const ItemStack(id: 'lockpick', quantity: 15),
      const ItemStack(id: 'poison_vial', quantity: 8),
      const ItemStack(id: 'smoke_bomb', quantity: 5),
      const ItemStack(id: 'throwing_knife', quantity: 20),
    ];
  }

  /// Creates stacks for consumable items
  static List<ItemStack> consumableStacks() {
    return [
      healingPotionStack(),
      manaPotions(),
      const ItemStack(id: 'antidote', quantity: 3),
      const ItemStack(id: 'strength_potion', quantity: 2),
      const ItemStack(id: 'speed_potion', quantity: 2),
      bread(),
    ];
  }

  /// Creates stacks for crafting materials
  static List<ItemStack> craftingMaterials() {
    return [
      ironOre(),
      const ItemStack(id: 'wood_plank', quantity: 30),
      const ItemStack(id: 'leather_strip', quantity: 15),
      const ItemStack(id: 'magic_crystal', quantity: 5),
      const ItemStack(id: 'gem_ruby', quantity: 2),
      const ItemStack(id: 'thread', quantity: 40),
    ];
  }

  /// Creates stacks for quest items
  static List<ItemStack> questItems() {
    return [
      const ItemStack(id: 'ancient_key', quantity: 1),
      const ItemStack(id: 'dragon_scale', quantity: 3),
      const ItemStack(id: 'magic_orb', quantity: 1),
      const ItemStack(id: 'royal_seal', quantity: 1),
      const ItemStack(id: 'mysterious_letter', quantity: 1),
    ];
  }

  /// Creates stacks with special characters in IDs
  static List<ItemStack> specialCharacterItems() {
    return [
      const ItemStack(id: 'item_with_underscore', quantity: 1),
      const ItemStack(id: 'item-with-dash', quantity: 2),
      const ItemStack(id: 'item.with.dots', quantity: 3),
      const ItemStack(id: 'item@special#chars', quantity: 4),
      const ItemStack(id: 'item with spaces', quantity: 5),
    ];
  }

  /// Creates stacks with very long IDs
  static List<ItemStack> longIdItems() {
    return [
      const ItemStack(
        id: 'this_is_a_very_long_item_id_that_might_be_used_for_testing_purposes_and_edge_cases',
        quantity: 1,
      ),
      const ItemStack(
        id: 'another_extremely_long_identifier_for_an_item_that_could_potentially_cause_issues',
        quantity: 2,
      ),
    ];
  }

  /// Creates stacks with empty string ID (edge case)
  static ItemStack emptyIdStack() {
    return const ItemStack(id: '', quantity: 1);
  }

  /// Creates stacks with extreme quantities
  static List<ItemStack> extremeQuantities() {
    return [
      emptyStack(), // 0 quantity
      const ItemStack(id: 'single_item', quantity: 1),
      massiveStack(), // Very large quantity
      const ItemStack(id: 'max_int_item', quantity: 2147483647), // Max int
    ];
  }

  /// Creates a complete merchant inventory
  static List<ItemStack> merchantInventory() {
    return [
      ...warriorInventory(),
      ...mageInventory(),
      ...consumableStacks(),
      ...craftingMaterials(),
      goldCoins(),
      const ItemStack(id: 'rare_gem', quantity: 1),
      const ItemStack(id: 'epic_weapon', quantity: 1),
    ];
  }

  /// Creates stacks from JSON for testing
  static ItemStack fromJsonExample() {
    final json = {'id': 'test_item_stack', 'quantity': 42};
    return ItemStack.fromJson(json);
  }

  /// Creates stacks for different scenarios
  static Map<String, List<ItemStack>> scenarioInventories() {
    return {
      'starting_player': basicInventory(),
      'experienced_warrior': warriorInventory(),
      'powerful_mage': mageInventory(),
      'sneaky_rogue': rogueInventory(),
      'merchant_shop': merchantInventory(),
      'quest_items': questItems(),
      'crafting_materials': craftingMaterials(),
      'consumables_only': consumableStacks(),
    };
  }

  /// Creates stacks for testing edge cases
  static List<ItemStack> edgeCaseStacks() {
    return [
      emptyStack(),
      emptyIdStack(),
      maxStack(),
      massiveStack(),
      ...specialCharacterItems(),
      ...longIdItems(),
      ...extremeQuantities(),
    ];
  }

  /// Creates a random selection of item stacks
  static List<ItemStack> randomSelection() {
    return [
      healingPotionStack(),
      arrowStack(),
      goldCoins(),
      legendaryWeapon(),
      ironOre(),
      bread(),
      manaPotions(),
      plateArmor(),
    ];
  }
}
