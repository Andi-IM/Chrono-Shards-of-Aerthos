# Model Tests Documentation

This directory contains comprehensive test cases for all models in the `lib/core/models` folder of the Chrono Shards of Aerthos game.

## Test Files Overview

### 1. `character_data_test.dart`
Tests for the `CharacterData` model which represents character statistics.

**Test Coverage:**
- Default and custom value initialization
- JSON serialization and deserialization
- Handling partial JSON data
- Immutability verification
- Edge cases for stat values

### 2. `effect_data_test.dart`
Tests for the `EffectData` model which represents item and skill effects.

**Test Coverage:**
- Basic initialization with required values
- JSON serialization/deserialization
- Handling negative and zero magnitudes
- Empty string descriptions
- Immutability and JSON roundtrip

### 3. `enemy_data_test.dart`
Tests for the `EnemyData` model which represents enemy characters.

**Test Coverage:**
- Required value initialization
- Empty special abilities handling
- JSON serialization and deserialization
- Edge cases (level 0, negative XP)
- Immutability verification

### 4. `item_data_test.dart`
Tests for the `ItemData` model and related enums (`ItemType`, `ItemRarity`).

**Test Coverage:**
- Initialization with required values
- Different item types (weapon, armor) and rarities
- Empty and multiple effects lists
- JSON serialization/deserialization
- Zero-value items
- Enum value testing

### 5. `item_stack_test.dart`
Tests for the `ItemStack` model which represents inventory items with quantities.

**Test Coverage:**
- Basic initialization
- Various quantity values (single, large, zero, negative)
- Empty and special character IDs
- JSON serialization/deserialization
- Error handling for invalid JSON
- Edge cases with maximum/minimum values

### 6. `player_state_test.dart`
Tests for the `PlayerState` model which represents the player's current state.

**Test Coverage:**
- Initialization with required and default values
- Empty collections (inventory, equipment, skills)
- Edge cases for level, XP, HP, and stamina
- JSON serialization/deserialization
- Large inventory and complex equipment
- Immutability verification

### 7. `skill_data_test.dart`
Tests for the `SkillData` model which represents player skills.

**Test Coverage:**
- Basic initialization
- Various stamina cost values (zero, high, negative)
- String handling (empty, long, special characters)
- Different skill types (healing, buff, debuff, utility)
- JSON serialization/deserialization
- Edge cases and multiline descriptions

### 8. `world_state_test.dart`
Tests for the `WorldState` model which represents global game state.

**Test Coverage:**
- Flag and pity counter initialization
- Empty collections handling
- Game progression flags
- Quest and achievement flags
- Loot and drop pity counters
- Large number of flags/counters
- Special characters in keys
- Extreme values and edge cases

### 9. `all_models_test.dart`
A comprehensive test runner that imports and executes all model tests in organized groups.

## Running the Tests

### Run All Model Tests
```bash
dart test test/models/
```

### Run All Tests with Detailed Output
```bash
dart test test/models/ --reporter=expanded
```

### Run Specific Model Test
```bash
dart test test/models/character_data_test.dart
```

### Run All Tests via the Comprehensive Runner
```bash
dart test test/models/all_models_test.dart
```

## Test Structure

Each test file follows a consistent structure:

1. **Basic Functionality Tests**: Verify core model behavior
2. **JSON Serialization Tests**: Ensure proper to/from JSON conversion
3. **Edge Case Tests**: Handle boundary conditions and unusual inputs
4. **Immutability Tests**: Verify objects maintain their state
5. **Error Handling Tests**: Test invalid inputs and error conditions

## Test Coverage Goals

- **Functionality**: All public methods and properties
- **Serialization**: Complete JSON roundtrip testing
- **Edge Cases**: Boundary values, empty collections, special characters
- **Error Handling**: Invalid inputs, missing data, type mismatches
- **Immutability**: Object state consistency

## Best Practices Implemented

1. **Descriptive Test Names**: Each test clearly describes what it's testing
2. **Comprehensive Coverage**: Multiple scenarios for each model feature
3. **Edge Case Testing**: Boundary conditions and unusual inputs
4. **JSON Roundtrip Testing**: Ensures serialization integrity
5. **Error Condition Testing**: Validates proper error handling
6. **Organized Structure**: Logical grouping of related tests

## Dependencies

All tests use the standard Dart `test` package:
```yaml
dev_dependencies:
  test: ^1.21.0
```

## Notes

- Tests are designed to be independent and can run in any order
- Each test file can be run individually or as part of the complete suite
- All models are tested for both positive and negative scenarios
- JSON serialization is thoroughly tested to ensure data integrity
- Edge cases and error conditions are comprehensively covered