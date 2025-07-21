import 'character_data_dummy.dart';
import 'effect_data_dummy.dart';
import 'enemy_data_dummy.dart';
import 'item_data_dummy.dart';
import 'item_stack_dummy.dart';
import 'player_state_dummy.dart';
import 'save_data_dummy.dart';
import 'skill_data_dummy.dart';
import 'world_state_dummy.dart';

/// Main export file for all dummy data factories
///
/// This file provides easy access to all dummy data factories
/// for testing purposes in the Chrono Shards of Aerthos game.

// Export all dummy data factories
export 'character_data_dummy.dart';
export 'effect_data_dummy.dart';
export 'enemy_data_dummy.dart';
export 'item_data_dummy.dart';
export 'item_stack_dummy.dart';
export 'player_state_dummy.dart';
export 'save_data_dummy.dart';
export 'skill_data_dummy.dart';
export 'world_state_dummy.dart';

/// Quick access to all dummy factories
class AllDummy {
  /// Character data dummy factory
  static const character = CharacterDataDummy;

  /// Effect data dummy factory
  static const effect = EffectDataDummy;

  /// Enemy data dummy factory
  static const enemy = EnemyDataDummy;

  /// Item data dummy factory
  static const item = ItemDataDummy;

  /// Item stack dummy factory
  static const itemStack = ItemStackDummy;

  /// Player state dummy factory
  static const player = PlayerStateDummy;

  /// Save data dummy factory
  static const save = SaveDataDummy;

  /// Skill data dummy factory
  static const skill = SkillDataDummy;

  /// World state dummy factory
  static const world = WorldStateDummy;
}
