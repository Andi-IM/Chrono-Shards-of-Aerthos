import 'package:csoa/core/models/player_state.dart';
import 'package:csoa/core/models/character_data.dart';
import 'package:csoa/core/models/item_stack.dart';
import 'character_data_dummy.dart';
import 'item_stack_dummy.dart';

/// Dummy data factory for PlayerState model
class PlayerStateDummy {
  /// Creates a new player character
  static PlayerState newPlayer() {
    return PlayerState(
      name: 'Hero',
      level: 1,
      xp: 0,
      hp: 100,
      maxHp: 100,
      stamina: 50,
      maxStamina: 50,
      stats: CharacterDataDummy.defaultStats(),
      inventory: ItemStackDummy.basicInventory(),
      equipment: {},
      skills: [],
      currentLocationId: 'starting_village',
    );
  }

  /// Creates an experienced warrior player
  static PlayerState experiencedWarrior() {
    return PlayerState(
      name: 'Sir Galahad',
      level: 15,
      xp: 12500,
      hp: 180,
      maxHp: 180,
      stamina: 120,
      maxStamina: 120,
      stats: CharacterDataDummy.warrior(),
      inventory: ItemStackDummy.warriorInventory(),
      equipment: {
        'weapon': 'iron_sword',
        'armor': 'plate_armor',
        'shield': 'iron_shield',
        'helmet': 'iron_helmet',
      },
      skills: ['sword_mastery', 'shield_bash', 'battle_cry', 'heavy_strike'],
      currentLocationId: 'castle_courtyard',
    );
  }

  /// Creates a powerful mage player
  static PlayerState powerfulMage() {
    return PlayerState(
      name: 'Archmage Merlin',
      level: 20,
      xp: 25000,
      hp: 120,
      maxHp: 120,
      stamina: 200,
      maxStamina: 200,
      stats: CharacterDataDummy.mage(),
      inventory: ItemStackDummy.mageInventory(),
      equipment: {
        'weapon': 'magic_staff',
        'armor': 'mage_robe',
        'accessory': 'power_ring',
        'hat': 'wizard_hat',
      },
      skills: [
        'fireball',
        'ice_shard',
        'lightning_bolt',
        'heal',
        'mana_shield',
        'teleport',
      ],
      currentLocationId: 'magic_tower',
    );
  }

  /// Creates a sneaky rogue player
  static PlayerState sneakyRogue() {
    return PlayerState(
      name: 'Shadow',
      level: 12,
      xp: 8500,
      hp: 95,
      maxHp: 95,
      stamina: 140,
      maxStamina: 140,
      stats: CharacterDataDummy.rogue(),
      inventory: ItemStackDummy.rogueInventory(),
      equipment: {
        'weapon': 'dagger',
        'armor': 'leather_armor',
        'accessory': 'lucky_charm',
        'boots': 'stealth_boots',
      },
      skills: ['stealth', 'backstab', 'lockpicking', 'poison_blade', 'dodge'],
      currentLocationId: 'thieves_den',
    );
  }

  /// Creates a tank character
  static PlayerState mightyTank() {
    return PlayerState(
      name: 'Ironwall',
      level: 18,
      xp: 18000,
      hp: 250,
      maxHp: 250,
      stamina: 80,
      maxStamina: 80,
      stats: CharacterDataDummy.tank(),
      inventory: [
        const ItemStack(id: 'tower_shield', quantity: 1),
        const ItemStack(id: 'heavy_mace', quantity: 1),
        ...ItemStackDummy.consumableStacks(),
      ],
      equipment: {
        'weapon': 'heavy_mace',
        'armor': 'full_plate',
        'shield': 'tower_shield',
        'helmet': 'great_helm',
        'gauntlets': 'iron_gauntlets',
        'boots': 'iron_boots',
      },
      skills: ['taunt', 'shield_wall', 'armor_mastery', 'intimidate'],
      currentLocationId: 'fortress_gate',
    );
  }

  /// Creates a legendary hero
  static PlayerState legendaryHero() {
    return PlayerState(
      name: 'The Chosen One',
      level: 50,
      xp: 125000,
      hp: 500,
      maxHp: 500,
      stamina: 300,
      maxStamina: 300,
      stats: CharacterDataDummy.legendary(),
      inventory: [
        const ItemStack(id: 'excalibur', quantity: 1),
        const ItemStack(id: 'dragon_scale_armor', quantity: 1),
        const ItemStack(id: 'crown_of_kings', quantity: 1),
        ...ItemStackDummy.questItems(),
        ...ItemStackDummy.craftingMaterials(),
      ],
      equipment: {
        'weapon': 'excalibur',
        'armor': 'dragon_scale_armor',
        'helmet': 'crown_of_kings',
        'accessory': 'ring_of_power',
        'cloak': 'cloak_of_shadows',
        'boots': 'boots_of_speed',
      },
      skills: [
        'divine_strike',
        'holy_light',
        'dragon_breath',
        'time_stop',
        'resurrection',
        'ultimate_power',
        'master_of_all',
        'legendary_presence',
      ],
      currentLocationId: 'throne_room',
    );
  }

  /// Creates a player with minimal stats (weakling)
  static PlayerState weakling() {
    return PlayerState(
      name: 'Newbie',
      level: 1,
      xp: 0,
      hp: 10,
      maxHp: 10,
      stamina: 10,
      maxStamina: 10,
      stats: CharacterDataDummy.weakling(),
      inventory: [
        const ItemStack(id: 'rusty_dagger', quantity: 1),
        const ItemStack(id: 'torn_cloth', quantity: 1),
      ],
      equipment: {'weapon': 'rusty_dagger', 'armor': 'torn_cloth'},
      skills: [],
      currentLocationId: 'tutorial_area',
    );
  }

  /// Creates a player with damaged health
  static PlayerState injuredPlayer() {
    return PlayerState(
      name: 'Wounded Warrior',
      level: 10,
      xp: 5000,
      hp: 25, // Low HP
      maxHp: 150,
      stamina: 30, // Low stamina
      maxStamina: 100,
      stats: CharacterDataDummy.warrior(),
      inventory: ItemStackDummy.consumableStacks(),
      equipment: {'weapon': 'iron_sword', 'armor': 'damaged_armor'},
      skills: ['sword_mastery', 'first_aid'],
      currentLocationId: 'battlefield',
    );
  }

  /// Creates a player with empty inventory
  static PlayerState poorPlayer() {
    return PlayerState(
      name: 'Penniless Pete',
      level: 5,
      xp: 1000,
      hp: 75,
      maxHp: 75,
      stamina: 60,
      maxStamina: 60,
      stats: const CharacterData(
        strength: 8,
        dexterity: 10,
        intelligence: 12,
        defense: 6,
        luck: 15, // High luck to find items
        hp: 75,
        stamina: 60,
      ),
      inventory: [], // Empty inventory
      equipment: {}, // No equipment
      skills: ['scavenging', 'survival'],
      currentLocationId: 'abandoned_village',
    );
  }

  /// Creates a player with maximum level
  static PlayerState maxLevelPlayer() {
    return PlayerState(
      name: 'Maximus',
      level: 100,
      xp: 1000000,
      hp: 999,
      maxHp: 999,
      stamina: 999,
      maxStamina: 999,
      stats: const CharacterData(
        strength: 99,
        dexterity: 99,
        intelligence: 99,
        defense: 99,
        luck: 99,
        hp: 999,
        stamina: 999,
      ),
      inventory: ItemStackDummy.merchantInventory(),
      equipment: {
        'weapon': 'ultimate_weapon',
        'armor': 'ultimate_armor',
        'helmet': 'ultimate_helmet',
        'accessory': 'ultimate_ring',
        'cloak': 'ultimate_cloak',
        'boots': 'ultimate_boots',
        'gauntlets': 'ultimate_gauntlets',
        'belt': 'ultimate_belt',
      },
      skills: [
        'master_swordsman',
        'archmage',
        'shadow_master',
        'divine_protection',
        'ultimate_technique',
        'omniscience',
        'immortality',
        'reality_manipulation',
      ],
      currentLocationId: 'realm_of_gods',
    );
  }

  /// Creates a player in different game locations
  static Map<String, PlayerState> playersInLocations() {
    return {
      'starting_village': newPlayer(),
      'dark_forest': experiencedWarrior(),
      'magic_academy': powerfulMage(),
      'thieves_guild': sneakyRogue(),
      'mountain_fortress': mightyTank(),
      'final_dungeon': legendaryHero(),
    };
  }

  /// Creates players at different progression stages
  static List<PlayerState> progressionStages() {
    return [
      newPlayer(),
      weakling(),
      injuredPlayer(),
      experiencedWarrior(),
      powerfulMage(),
      sneakyRogue(),
      mightyTank(),
      legendaryHero(),
      maxLevelPlayer(),
    ];
  }

  /// Creates a player with large inventory
  static PlayerState hoarderPlayer() {
    return PlayerState(
      name: 'Pack Rat',
      level: 25,
      xp: 35000,
      hp: 200,
      maxHp: 200,
      stamina: 150,
      maxStamina: 150,
      stats: CharacterDataDummy.warrior(),
      inventory: [
        ...ItemStackDummy.merchantInventory(),
        ...ItemStackDummy.craftingMaterials(),
        ...ItemStackDummy.questItems(),
        ...ItemStackDummy.consumableStacks(),
        const ItemStack(id: 'random_junk_1', quantity: 99),
        const ItemStack(id: 'random_junk_2', quantity: 99),
        const ItemStack(id: 'random_junk_3', quantity: 99),
      ],
      equipment: {
        'weapon': 'legendary_sword',
        'armor': 'enchanted_armor',
        'accessory': 'storage_ring',
      },
      skills: ['inventory_mastery', 'item_identification', 'merchant'],
      currentLocationId: 'storage_warehouse',
    );
  }

  /// Creates a player from JSON for testing
  static PlayerState fromJsonExample() {
    final json = {
      'name': 'Test Player',
      'level': 10,
      'xp': 5000,
      'hp': 100,
      'maxHp': 120,
      'stamina': 80,
      'maxStamina': 100,
      'stats': {
        'strength': 12,
        'dexterity': 14,
        'intelligence': 10,
        'defense': 11,
        'luck': 13,
        'hp': 120,
        'stamina': 100,
      },
      'inventory': [
        {'id': 'test_item_1', 'quantity': 5},
        {'id': 'test_item_2', 'quantity': 1},
      ],
      'equipment': {'weapon': 'test_weapon', 'armor': 'test_armor'},
      'skills': ['test_skill_1', 'test_skill_2'],
      'currentLocationId': 'test_location',
    };
    return PlayerState.fromJson(json);
  }

  /// Creates players for different character classes
  static Map<String, PlayerState> characterClasses() {
    return {
      'warrior': experiencedWarrior(),
      'mage': powerfulMage(),
      'rogue': sneakyRogue(),
      'tank': mightyTank(),
      'hybrid': PlayerState(
        name: 'Versatile Hero',
        level: 15,
        xp: 12000,
        hp: 140,
        maxHp: 140,
        stamina: 120,
        maxStamina: 120,
        stats: const CharacterData(
          strength: 12,
          dexterity: 12,
          intelligence: 12,
          defense: 12,
          luck: 12,
          hp: 140,
          stamina: 120,
        ),
        inventory: ItemStackDummy.randomSelection(),
        equipment: {
          'weapon': 'versatile_weapon',
          'armor': 'balanced_armor',
          'accessory': 'adaptation_ring',
        },
        skills: [
          'sword_strike',
          'magic_missile',
          'stealth',
          'shield_block',
          'adaptability',
        ],
        currentLocationId: 'crossroads',
      ),
    };
  }

  /// Creates edge case players for testing
  static List<PlayerState> edgeCases() {
    return [
      poorPlayer(),
      weakling(),
      injuredPlayer(),
      hoarderPlayer(),
      maxLevelPlayer(),
      // Player with zero XP but high level (edge case)
      PlayerState(
        name: 'Anomaly',
        level: 50,
        xp: 0, // Zero XP at high level
        hp: 1,
        maxHp: 1,
        stamina: 1,
        maxStamina: 1,
        stats: CharacterDataDummy.weakling(),
        inventory: [],
        equipment: {},
        skills: [],
        currentLocationId: 'void',
      ),
    ];
  }
}
