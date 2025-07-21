import 'package:test/test.dart';

// Import all model tests
import 'character_data_test.dart' as character_data_test;
import 'effect_data_test.dart' as effect_data_test;
import 'enemy_data_test.dart' as enemy_data_test;
import 'item_data_test.dart' as item_data_test;
import 'item_stack_test.dart' as item_stack_test;
import 'player_state_test.dart' as player_state_test;
import 'skill_data_test.dart' as skill_data_test;
import 'world_state_test.dart' as world_state_test;

void main() {
  group('All Models Tests', () {
    group('CharacterData Tests', character_data_test.main);
    group('EffectData Tests', effect_data_test.main);
    group('EnemyData Tests', enemy_data_test.main);
    group('ItemData Tests', item_data_test.main);
    group('ItemStack Tests', item_stack_test.main);
    group('PlayerState Tests', player_state_test.main);
    group('SkillData Tests', skill_data_test.main);
    group('WorldState Tests', world_state_test.main);
  });
}
