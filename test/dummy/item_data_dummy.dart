import 'package:csoa/core/models/item_data.dart';
import 'package:csoa/core/models/effect_data.dart';
import 'effect_data_dummy.dart';

/// Dummy data factory for ItemData model
class ItemDataDummy {
  /// Creates a basic iron sword
  static ItemData ironSword() {
    return ItemData(
      id: 'iron_sword',
      name: 'Iron Sword',
      type: ItemType.weapon,
      rarity: ItemRarity.common,
      effects: [
        const EffectData(
          id: 'weapon_damage',
          magnitude: 15,
          description: 'Deals 15 physical damage',
        ),
      ],
      description: 'A sturdy iron sword forged by skilled blacksmiths',
      value: 50,
    );
  }

  /// Creates a magical staff
  static ItemData magicStaff() {
    return ItemData(
      id: 'magic_staff',
      name: 'Staff of Wisdom',
      type: ItemType.weapon,
      rarity: ItemRarity.rare,
      effects: [
        const EffectData(
          id: 'magic_damage',
          magnitude: 20,
          description: 'Deals 20 magical damage',
        ),
        const EffectData(
          id: 'int_boost',
          magnitude: 5,
          description: 'Increases intelligence by 5',
        ),
      ],
      description: 'An ancient staff imbued with arcane knowledge',
      value: 200,
    );
  }

  /// Creates leather armor
  static ItemData leatherArmor() {
    return ItemData(
      id: 'leather_armor',
      name: 'Leather Armor',
      type: ItemType.armor,
      rarity: ItemRarity.common,
      effects: [
        const EffectData(
          id: 'defense_boost',
          magnitude: 8,
          description: 'Increases defense by 8',
        ),
      ],
      description: 'Basic leather armor providing modest protection',
      value: 30,
    );
  }

  /// Creates a legendary weapon
  static ItemData legendaryBlade() {
    return ItemData(
      id: 'excalibur',
      name: 'Excalibur',
      type: ItemType.weapon,
      rarity: ItemRarity.legendary,
      effects: [
        const EffectData(
          id: 'holy_damage',
          magnitude: 50,
          description: 'Deals 50 holy damage',
        ),
        const EffectData(
          id: 'str_boost',
          magnitude: 10,
          description: 'Increases strength by 10',
        ),
        const EffectData(
          id: 'luck_boost',
          magnitude: 15,
          description: 'Increases luck by 15',
        ),
      ],
      description: 'The legendary sword of kings, blessed by divine power',
      value: 10000,
    );
  }

  /// Creates a healing potion
  static ItemData healingPotion() {
    return ItemData(
      id: 'heal_potion',
      name: 'Healing Potion',
      type: ItemType.consumable,
      rarity: ItemRarity.common,
      effects: [EffectDataDummy.healing()],
      description: 'A red potion that restores health when consumed',
      value: 25,
    );
  }

  /// Creates a mana potion
  static ItemData manaPotion() {
    return ItemData(
      id: 'mana_potion',
      name: 'Mana Potion',
      type: ItemType.consumable,
      rarity: ItemRarity.common,
      effects: [EffectDataDummy.staminaRestore()],
      description: 'A blue potion that restores stamina when consumed',
      value: 20,
    );
  }

  /// Creates a rare ring
  static ItemData powerRing() {
    return ItemData(
      id: 'power_ring',
      name: 'Ring of Power',
      type: ItemType.accessory,
      rarity: ItemRarity.epic,
      effects: [
        const EffectData(
          id: 'all_stats_boost',
          magnitude: 5,
          description: 'Increases all stats by 5',
        ),
      ],
      description: 'A mysterious ring that enhances the wearer\'s abilities',
      value: 500,
    );
  }

  /// Creates a cursed item
  static ItemData cursedSword() {
    return ItemData(
      id: 'cursed_blade',
      name: 'Cursed Blade',
      type: ItemType.weapon,
      rarity: ItemRarity.rare,
      effects: [
        const EffectData(
          id: 'high_damage',
          magnitude: 35,
          description: 'Deals 35 physical damage',
        ),
        const EffectData(
          id: 'curse_effect',
          magnitude: -5,
          description: 'Reduces luck by 5 (cursed)',
        ),
      ],
      description: 'A powerful but cursed weapon that brings misfortune',
      value: 150,
    );
  }

  /// Creates an item with no effects
  static ItemData brokenSword() {
    return ItemData(
      id: 'broken_sword',
      name: 'Broken Sword',
      type: ItemType.weapon,
      rarity: ItemRarity.common,
      effects: [],
      description: 'A sword that has seen better days',
      value: 1,
    );
  }

  /// Creates a valuable gem
  static ItemData diamond() {
    return ItemData(
      id: 'diamond',
      name: 'Perfect Diamond',
      type: ItemType.misc,
      rarity: ItemRarity.legendary,
      effects: [],
      description: 'A flawless diamond of incredible value',
      value: 5000,
    );
  }

  /// Creates a list of weapons
  static List<ItemData> weapons() {
    return [
      ironSword(),
      magicStaff(),
      legendaryBlade(),
      cursedSword(),
      brokenSword(),
    ];
  }

  /// Creates a list of armor pieces
  static List<ItemData> armor() {
    return [
      leatherArmor(),
      ItemData(
        id: 'chain_mail',
        name: 'Chain Mail',
        type: ItemType.armor,
        rarity: ItemRarity.uncommon,
        effects: [
          const EffectData(
            id: 'defense_boost',
            magnitude: 12,
            description: 'Increases defense by 12',
          ),
        ],
        description: 'Interlocked metal rings providing good protection',
        value: 80,
      ),
      ItemData(
        id: 'plate_armor',
        name: 'Plate Armor',
        type: ItemType.armor,
        rarity: ItemRarity.rare,
        effects: [
          const EffectData(
            id: 'defense_boost',
            magnitude: 20,
            description: 'Increases defense by 20',
          ),
          const EffectData(
            id: 'dex_penalty',
            magnitude: -3,
            description: 'Reduces dexterity by 3 (heavy)',
          ),
        ],
        description: 'Heavy plate armor offering maximum protection',
        value: 300,
      ),
    ];
  }

  /// Creates a list of consumables
  static List<ItemData> consumables() {
    return [
      healingPotion(),
      manaPotion(),
      ItemData(
        id: 'antidote',
        name: 'Antidote',
        type: ItemType.consumable,
        rarity: ItemRarity.common,
        effects: [
          const EffectData(
            id: 'cure_poison',
            magnitude: 1,
            description: 'Cures poison effects',
          ),
        ],
        description: 'A green liquid that neutralizes toxins',
        value: 15,
      ),
    ];
  }

  /// Creates a list of accessories
  static List<ItemData> accessories() {
    return [
      powerRing(),
      ItemData(
        id: 'lucky_charm',
        name: 'Lucky Charm',
        type: ItemType.accessory,
        rarity: ItemRarity.uncommon,
        effects: [
          const EffectData(
            id: 'luck_boost',
            magnitude: 8,
            description: 'Increases luck by 8',
          ),
        ],
        description: 'A small trinket that brings good fortune',
        value: 100,
      ),
    ];
  }

  /// Creates a list of miscellaneous items
  static List<ItemData> miscItems() {
    return [
      diamond(),
      ItemData(
        id: 'gold_coin',
        name: 'Gold Coin',
        type: ItemType.misc,
        rarity: ItemRarity.common,
        effects: [],
        description: 'A shiny gold coin used as currency',
        value: 10,
      ),
      ItemData(
        id: 'ancient_scroll',
        name: 'Ancient Scroll',
        type: ItemType.misc,
        rarity: ItemRarity.epic,
        effects: [],
        description: 'A mysterious scroll with unknown writings',
        value: 750,
      ),
    ];
  }

  /// Creates a list of all item types
  static List<ItemData> allItems() {
    return [
      ...weapons(),
      ...armor(),
      ...consumables(),
      ...accessories(),
      ...miscItems(),
    ];
  }

  /// Creates items grouped by rarity
  static Map<ItemRarity, List<ItemData>> itemsByRarity() {
    final items = allItems();
    final Map<ItemRarity, List<ItemData>> grouped = {};

    for (final rarity in ItemRarity.values) {
      grouped[rarity] = items.where((item) => item.rarity == rarity).toList();
    }

    return grouped;
  }

  /// Creates items grouped by type
  static Map<ItemType, List<ItemData>> itemsByType() {
    final items = allItems();
    final Map<ItemType, List<ItemData>> grouped = {};

    for (final type in ItemType.values) {
      grouped[type] = items.where((item) => item.type == type).toList();
    }

    return grouped;
  }

  /// Creates an item from JSON for testing
  static ItemData fromJsonExample() {
    final json = {
      'id': 'test_item',
      'name': 'Test Item',
      'type': 'weapon',
      'rarity': 'uncommon',
      'effects': [
        {
          'id': 'test_effect',
          'magnitude': 10,
          'description': 'Test effect description',
        },
      ],
      'description': 'An item created for testing purposes',
      'value': 100,
    };
    return ItemData.fromJson(json);
  }

  /// Creates a zero-value item
  static ItemData worthlessItem() {
    return ItemData(
      id: 'worthless_junk',
      name: 'Worthless Junk',
      type: ItemType.misc,
      rarity: ItemRarity.common,
      effects: [],
      description: 'Completely worthless item',
      value: 0,
    );
  }
}
