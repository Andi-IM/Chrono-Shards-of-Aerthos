# Dummy Data Models

This directory contains dummy data factories for all game models in Chrono Shards of Aerthos. These factories provide pre-configured test data for unit testing, integration testing, and development purposes.

## Overview

Each dummy factory provides static methods to create various instances of their corresponding model with realistic and edge-case data. This helps ensure comprehensive testing coverage and consistent test data across the project.

## Available Dummy Factories

### CharacterDataDummy
**File:** `character_data_dummy.dart`

Provides dummy data for character definitions including:
- **Basic Characters:** Warrior, Mage, Rogue, Tank
- **Special Characters:** Legendary hero, Weakling, Default character
- **Collections:** All character types, balanced party
- **Edge Cases:** Characters with extreme stats, empty descriptions

**Key Methods:**
- `warrior()` - Strong melee fighter
- `mage()` - Powerful spellcaster
- `rogue()` - Agile stealth character
- `tank()` - High defense character
- `legendaryHero()` - Maximum stats character
- `allCharacterTypes()` - List of all character types

### EffectDataDummy
**File:** `effect_data_dummy.dart`

Provides dummy data for game effects including:
- **Healing Effects:** Basic heal, major healing, stamina restoration
- **Buff Effects:** Strength boost, defense buff, luck enhancement
- **Debuff Effects:** Poison, weakness, various negative effects
- **Equipment Effects:** Weapon and armor enhancements
- **Collections:** Positive effects, negative effects, all effects

**Key Methods:**
- `healing()` - Basic healing effect
- `strengthBoost()` - Temporary strength increase
- `poison()` - Damage over time effect
- `positiveEffects()` - List of beneficial effects
- `negativeEffects()` - List of harmful effects

### EnemyDataDummy
**File:** `enemy_data_dummy.dart`

Provides dummy data for enemy definitions including:
- **Basic Enemies:** Goblin, Skeleton, Orc, Slime
- **Advanced Enemies:** Dark Mage, Assassin, Armored Knight
- **Boss Enemies:** Dragon Boss with high stats
- **Special Enemies:** Training Dummy for testing
- **Collections:** Enemies by level, dungeon-specific enemies

**Key Methods:**
- `goblin()` - Weak early-game enemy
- `dragonBoss()` - Powerful end-game boss
- `enemiesByLevel()` - Enemies grouped by difficulty
- `allEnemyTypes()` - Complete enemy roster
- `dungeonEnemies()` - Enemies for specific areas

### ItemDataDummy
**File:** `item_data_dummy.dart`

Provides dummy data for item definitions including:
- **Weapons:** Swords, staffs, daggers, shields
- **Armor:** Helmets, chestplates, boots, accessories
- **Consumables:** Potions, food, scrolls
- **Rarities:** Common, rare, epic, legendary items
- **Special Items:** Cursed items, zero-value items

**Key Methods:**
- `ironSword()` - Basic weapon
- `legendaryStaff()` - Powerful magical weapon
- `healingPotion()` - Basic consumable
- `itemsByRarity()` - Items grouped by rarity
- `itemsByType()` - Items grouped by category

### ItemStackDummy
**File:** `item_stack_dummy.dart`

Provides dummy data for item stacks (items with quantities) including:
- **Single Items:** Individual equipment pieces
- **Stackable Items:** Potions, arrows, crafting materials
- **Large Stacks:** Bulk quantities for testing
- **Inventory Sets:** Complete inventories for different character types
- **Edge Cases:** Zero quantities, maximum values

**Key Methods:**
- `singleItem()` - Single item stack
- `healingPotions()` - Stack of consumables
- `warriorInventory()` - Complete warrior equipment
- `merchantInventory()` - Large diverse inventory
- `edgeCases()` - Extreme quantity values

### PlayerStateDummy
**File:** `player_state_dummy.dart`

Provides dummy data for player state including:
- **Character Classes:** Warrior, Mage, Rogue, Tank builds
- **Progression Levels:** New player to legendary hero
- **Special States:** Injured, poor, max level players
- **Locations:** Players in different game areas
- **Edge Cases:** Extreme stats, empty inventories

**Key Methods:**
- `newPlayer()` - Fresh character
- `experiencedWarrior()` - Mid-level fighter
- `legendaryHero()` - End-game character
- `characterClasses()` - Different class builds
- `progressionStages()` - Various progression levels

### SaveDataDummy
**File:** `save_data_dummy.dart`

Provides dummy data for complete save files including:
- **Game Progression:** New game to completion
- **Character Saves:** Different class-specific saves
- **Game Modes:** Hardcore, speedrun, New Game Plus
- **Version Compatibility:** Different game versions
- **Special Scenarios:** Event saves, beta versions

**Key Methods:**
- `newGameSave()` - Fresh game start
- `midGameSave()` - Mid-progression save
- `completedGameSave()` - Finished game
- `characterClassSaves()` - Saves for each class
- `scenarioSaves()` - Specific game scenarios

### SkillDataDummy
**File:** `skill_data_dummy.dart`

Provides dummy data for skill definitions including:
- **Basic Skills:** Sword strike, fireball, heal, stealth
- **Class Skills:** Warrior, mage, rogue specific abilities
- **Skill Types:** Support, debuff, utility, ultimate skills
- **Stamina Costs:** Zero cost to maximum cost skills
- **Edge Cases:** Empty descriptions, special characters

**Key Methods:**
- `swordStrike()` - Basic attack skill
- `fireball()` - Magical damage skill
- `heal()` - Restoration skill
- `skillsByCategory()` - Skills grouped by type
- `ultimateSkills()` - Powerful end-game abilities

### WorldStateDummy
**File:** `world_state_dummy.dart`

Provides dummy data for world state including:
- **Game Progression:** Early to late game states
- **Quest States:** Various quest completion levels
- **Achievements:** Different achievement progress
- **Game Modes:** Story, hardcore, speedrun modes
- **Special Events:** Seasonal events, special conditions

**Key Methods:**
- `newGame()` - Fresh world state
- `midGame()` - Partial progression
- `gameCompleted()` - Fully completed world
- `gameModes()` - Different play modes
- `specialEvents()` - Event-specific states

## Usage

### Basic Usage

```dart
import 'package:your_game/test/dummy/all_dummy.dart';

// Create a warrior character
final warrior = CharacterDataDummy.warrior();

// Create a healing potion stack
final potions = ItemStackDummy.healingPotions();

// Create a mid-game save
final save = SaveDataDummy.midGameSave();
```

### Using the AllDummy Class

```dart
import 'package:your_game/test/dummy/all_dummy.dart';

// Quick access through AllDummy
final warrior = AllDummy.character.warrior();
final potions = AllDummy.itemStack.healingPotions();
final save = AllDummy.save.midGameSave();
```

### In Unit Tests

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:your_game/test/dummy/all_dummy.dart';

void main() {
  group('Player Tests', () {
    test('should create warrior correctly', () {
      final player = PlayerStateDummy.experiencedWarrior();
      expect(player.name, 'Experienced Warrior');
      expect(player.level, 10);
    });
    
    test('should handle inventory', () {
      final inventory = ItemStackDummy.warriorInventory();
      expect(inventory.length, greaterThan(0));
    });
  });
}
```

### In Integration Tests

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:your_game/test/dummy/all_dummy.dart';

void main() {
  testWidgets('Game Save/Load Test', (tester) async {
    // Use complete save data for testing
    final saveData = SaveDataDummy.midGameSave();
    
    // Test save/load functionality
    await gameService.loadSave(saveData);
    final loadedData = await gameService.getCurrentSave();
    
    expect(loadedData.playerState.name, saveData.playerState.name);
  });
}
```

## Best Practices

### 1. Use Appropriate Dummy Data
- Use `newPlayer()` for testing new game features
- Use `experiencedWarrior()` for mid-game testing
- Use `legendaryHero()` for end-game testing
- Use edge cases for boundary testing

### 2. Combine Dummy Data
```dart
// Create a complete test scenario
final player = PlayerStateDummy.powerfulMage();
final world = WorldStateDummy.midGame();
final save = SaveData(
  gameVersion: '1.0.0',
  saveTimestamp: DateTime.now().toIso8601String(),
  playerState: player,
  worldState: world,
);
```

### 3. Test Edge Cases
```dart
// Test with extreme values
final edgeCaseItems = ItemStackDummy.edgeCases();
final maxLevelPlayer = PlayerStateDummy.maxLevelPlayer();
final emptyWorld = WorldStateDummy.emptyWorld();
```

### 4. Use Collections for Comprehensive Testing
```dart
// Test all character types
final allCharacters = CharacterDataDummy.allCharacterTypes();
for (final character in allCharacters) {
  // Test each character type
}

// Test progression stages
final progressionSaves = SaveDataDummy.progressionSaves();
for (final save in progressionSaves) {
  // Test each progression stage
}
```

## File Structure

```
test/dummy/
├── README.md                    # This documentation
├── all_dummy.dart              # Main export file
├── character_data_dummy.dart   # Character definitions
├── effect_data_dummy.dart      # Game effects
├── enemy_data_dummy.dart       # Enemy definitions
├── item_data_dummy.dart        # Item definitions
├── item_stack_dummy.dart       # Item stacks with quantities
├── player_state_dummy.dart     # Player state data
├── save_data_dummy.dart        # Complete save files
├── skill_data_dummy.dart       # Skill definitions
└── world_state_dummy.dart      # World state data
```

## Contributing

When adding new dummy data:

1. **Follow Naming Conventions:** Use descriptive method names
2. **Provide Variety:** Include basic, advanced, and edge cases
3. **Add Documentation:** Comment complex dummy data
4. **Test Your Dummies:** Ensure dummy data works in actual tests
5. **Update This README:** Add new methods to the documentation

## Notes

- All dummy data is designed to be realistic and useful for testing
- Edge cases are included to test boundary conditions
- Collections provide comprehensive test coverage
- Data is consistent across related models (e.g., player inventories match available items)
- JSON examples are provided for serialization testing