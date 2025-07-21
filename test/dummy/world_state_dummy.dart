import 'package:csoa/core/models/world_state.dart';

/// Dummy data factory for WorldState model
class WorldStateDummy {
  /// Creates a fresh new game world state
  static WorldState newGame() {
    return const WorldState(
      flags: {
        'game_started': true,
        'tutorial_completed': false,
        'first_battle_won': false,
        'intro_watched': true,
      },
      pityCounters: {
        'rare_drop_counter': 0,
        'legendary_counter': 0,
        'boss_encounter_counter': 0,
      },
    );
  }

  /// Creates a world state for early game progression
  static WorldState earlyGame() {
    return const WorldState(
      flags: {
        'game_started': true,
        'tutorial_completed': true,
        'first_battle_won': true,
        'first_level_completed': true,
        'village_discovered': true,
        'blacksmith_unlocked': true,
        'shop_unlocked': true,
        'inventory_tutorial_done': true,
      },
      pityCounters: {
        'rare_drop_counter': 5,
        'legendary_counter': 0,
        'boss_encounter_counter': 1,
        'merchant_visits': 3,
        'battles_won': 8,
      },
    );
  }

  /// Creates a world state for mid-game progression
  static WorldState midGame() {
    return const WorldState(
      flags: {
        'game_started': true,
        'tutorial_completed': true,
        'first_battle_won': true,
        'first_level_completed': true,
        'village_discovered': true,
        'blacksmith_unlocked': true,
        'shop_unlocked': true,
        'inventory_tutorial_done': true,
        'forest_explored': true,
        'cave_discovered': true,
        'first_boss_defeated': true,
        'magic_unlocked': true,
        'guild_joined': true,
        'advanced_skills_unlocked': true,
      },
      pityCounters: {
        'rare_drop_counter': 15,
        'legendary_counter': 2,
        'boss_encounter_counter': 5,
        'merchant_visits': 12,
        'battles_won': 45,
        'dungeons_cleared': 3,
        'quests_completed': 8,
      },
    );
  }

  /// Creates a world state for late game progression
  static WorldState lateGame() {
    return const WorldState(
      flags: {
        'game_started': true,
        'tutorial_completed': true,
        'first_battle_won': true,
        'first_level_completed': true,
        'village_discovered': true,
        'blacksmith_unlocked': true,
        'shop_unlocked': true,
        'inventory_tutorial_done': true,
        'forest_explored': true,
        'cave_discovered': true,
        'first_boss_defeated': true,
        'magic_unlocked': true,
        'guild_joined': true,
        'advanced_skills_unlocked': true,
        'mountain_pass_opened': true,
        'ancient_ruins_discovered': true,
        'dragon_encountered': true,
        'legendary_weapon_found': true,
        'master_rank_achieved': true,
        'final_dungeon_unlocked': true,
      },
      pityCounters: {
        'rare_drop_counter': 35,
        'legendary_counter': 8,
        'boss_encounter_counter': 15,
        'merchant_visits': 30,
        'battles_won': 150,
        'dungeons_cleared': 12,
        'quests_completed': 25,
        'secrets_found': 18,
        'achievements_unlocked': 22,
      },
    );
  }

  /// Creates a completed game world state
  static WorldState gameCompleted() {
    return const WorldState(
      flags: {
        'game_started': true,
        'tutorial_completed': true,
        'first_battle_won': true,
        'first_level_completed': true,
        'village_discovered': true,
        'blacksmith_unlocked': true,
        'shop_unlocked': true,
        'inventory_tutorial_done': true,
        'forest_explored': true,
        'cave_discovered': true,
        'first_boss_defeated': true,
        'magic_unlocked': true,
        'guild_joined': true,
        'advanced_skills_unlocked': true,
        'mountain_pass_opened': true,
        'ancient_ruins_discovered': true,
        'dragon_encountered': true,
        'legendary_weapon_found': true,
        'master_rank_achieved': true,
        'final_dungeon_unlocked': true,
        'final_boss_defeated': true,
        'game_completed': true,
        'credits_watched': true,
        'new_game_plus_unlocked': true,
      },
      pityCounters: {
        'rare_drop_counter': 50,
        'legendary_counter': 15,
        'boss_encounter_counter': 25,
        'merchant_visits': 50,
        'battles_won': 300,
        'dungeons_cleared': 20,
        'quests_completed': 50,
        'secrets_found': 35,
        'achievements_unlocked': 45,
        'playtime_hours': 120,
      },
    );
  }

  /// Creates a world state with quest progression
  static WorldState questProgression() {
    return const WorldState(
      flags: {
        // Main quest flags
        'main_quest_001_started': true,
        'main_quest_001_completed': true,
        'main_quest_002_started': true,
        'main_quest_002_completed': false,
        'main_quest_003_unlocked': false,

        // Side quest flags
        'side_quest_merchant_help_started': true,
        'side_quest_merchant_help_completed': true,
        'side_quest_lost_cat_started': true,
        'side_quest_lost_cat_completed': false,
        'side_quest_bandit_camp_unlocked': true,
        'side_quest_bandit_camp_started': false,

        // Hidden quest flags
        'hidden_quest_ancient_artifact_discovered': true,
        'hidden_quest_secret_passage_found': false,
      },
      pityCounters: {
        'main_quests_completed': 1,
        'side_quests_completed': 1,
        'hidden_quests_discovered': 1,
        'quest_rewards_claimed': 2,
      },
    );
  }

  /// Creates a world state with achievement progress
  static WorldState achievementProgress() {
    return const WorldState(
      flags: {
        // Combat achievements
        'achievement_first_kill': true,
        'achievement_100_kills': true,
        'achievement_1000_kills': false,
        'achievement_boss_slayer': true,
        'achievement_dragon_slayer': false,

        // Collection achievements
        'achievement_collector_bronze': true,
        'achievement_collector_silver': false,
        'achievement_collector_gold': false,
        'achievement_hoarder': false,

        // Exploration achievements
        'achievement_explorer_bronze': true,
        'achievement_explorer_silver': true,
        'achievement_explorer_gold': false,
        'achievement_secret_finder': true,

        // Skill achievements
        'achievement_master_warrior': false,
        'achievement_master_mage': false,
        'achievement_master_rogue': false,
        'achievement_jack_of_all_trades': false,
      },
      pityCounters: {
        'achievements_unlocked': 8,
        'bronze_achievements': 3,
        'silver_achievements': 1,
        'gold_achievements': 0,
        'secret_achievements': 1,
      },
    );
  }

  /// Creates a world state with location discovery
  static WorldState locationDiscovery() {
    return const WorldState(
      flags: {
        // Starting areas
        'location_starting_village': true,
        'location_training_grounds': true,
        'location_village_outskirts': true,

        // Forest areas
        'location_dark_forest_entrance': true,
        'location_dark_forest_depths': true,
        'location_forest_clearing': true,
        'location_ancient_tree': false,

        // Mountain areas
        'location_mountain_path': true,
        'location_mountain_cave': true,
        'location_mountain_peak': false,
        'location_dragon_lair': false,

        // Underground areas
        'location_old_mines': true,
        'location_underground_lake': false,
        'location_crystal_caverns': false,

        // Special areas
        'location_magic_tower': false,
        'location_ancient_ruins': false,
        'location_final_dungeon': false,
      },
      pityCounters: {
        'locations_discovered': 8,
        'secret_locations_found': 0,
        'dungeons_discovered': 2,
        'boss_lairs_found': 0,
      },
    );
  }

  /// Creates a world state with item discovery and crafting
  static WorldState itemAndCrafting() {
    return const WorldState(
      flags: {
        // Crafting unlocks
        'crafting_unlocked': true,
        'advanced_crafting_unlocked': false,
        'legendary_crafting_unlocked': false,

        // Recipe discoveries
        'recipe_iron_sword_learned': true,
        'recipe_steel_armor_learned': true,
        'recipe_healing_potion_learned': true,
        'recipe_mana_potion_learned': false,
        'recipe_legendary_blade_learned': false,

        // Item discoveries
        'rare_material_mithril_found': false,
        'rare_material_dragon_scale_found': false,
        'legendary_gem_found': false,
      },
      pityCounters: {
        'items_crafted': 15,
        'recipes_learned': 3,
        'rare_materials_found': 0,
        'legendary_items_crafted': 0,
        'crafting_failures': 2,
      },
    );
  }

  /// Creates a world state with empty flags and counters
  static WorldState emptyWorld() {
    return const WorldState(flags: {}, pityCounters: {});
  }

  /// Creates a world state with maximum pity counters
  static WorldState maxPityCounters() {
    return const WorldState(
      flags: {'pity_system_active': true, 'bad_luck_protection_enabled': true},
      pityCounters: {
        'rare_drop_counter': 99,
        'legendary_counter': 49,
        'epic_counter': 199,
        'boss_loot_counter': 25,
        'chest_opening_counter': 150,
        'failed_crafting_counter': 30,
      },
    );
  }

  /// Creates a world state with special events
  static WorldState specialEvents() {
    return const WorldState(
      flags: {
        // Seasonal events
        'event_winter_festival_active': false,
        'event_summer_celebration_active': false,
        'event_harvest_moon_active': true,

        // Special encounters
        'special_merchant_encountered': true,
        'wandering_mage_met': false,
        'mysterious_stranger_helped': true,

        // World events
        'dragon_attack_survived': false,
        'village_festival_participated': true,
        'eclipse_witnessed': false,
      },
      pityCounters: {
        'special_events_triggered': 3,
        'seasonal_events_participated': 1,
        'rare_encounters': 2,
        'world_events_witnessed': 1,
      },
    );
  }

  /// Creates world states for different game modes
  static Map<String, WorldState> gameModes() {
    return {
      'story_mode': midGame(),
      'hardcore_mode': WorldState(
        flags: const {
          'hardcore_mode_active': true,
          'permadeath_enabled': true,
          'save_scumming_disabled': true,
          'difficulty_nightmare': true,
        },
        pityCounters: const {
          'deaths': 0,
          'close_calls': 5,
          'hardcore_achievements': 2,
        },
      ),
      'speedrun_mode': WorldState(
        flags: const {
          'speedrun_mode_active': true,
          'timer_running': true,
          'cutscenes_skipped': true,
          'optimal_route_taken': true,
        },
        pityCounters: const {
          'speedrun_time_seconds': 3600,
          'resets_used': 3,
          'personal_best_beaten': 1,
        },
      ),
      'new_game_plus': WorldState(
        flags: const {
          'new_game_plus_active': true,
          'previous_save_imported': true,
          'bonus_content_unlocked': true,
          'legacy_items_available': true,
        },
        pityCounters: const {
          'playthroughs_completed': 1,
          'legacy_points': 500,
          'bonus_achievements': 5,
        },
      ),
    };
  }

  /// Creates world states for different progression stages
  static List<WorldState> progressionStages() {
    return [newGame(), earlyGame(), midGame(), lateGame(), gameCompleted()];
  }

  /// Creates a world state from JSON for testing
  static WorldState fromJsonExample() {
    final json = {
      'flags': {'test_flag_1': true, 'test_flag_2': false, 'test_flag_3': true},
      'pityCounters': {
        'test_counter_1': 10,
        'test_counter_2': 25,
        'test_counter_3': 0,
      },
    };
    return WorldState.fromJson(json);
  }

  /// Creates world states with extreme values for testing
  static List<WorldState> extremeValues() {
    return [
      emptyWorld(),
      maxPityCounters(),
      WorldState(
        flags: const {'extreme_test': true},
        pityCounters: const {
          'max_int_counter': 2147483647,
          'min_int_counter': -2147483648,
          'zero_counter': 0,
        },
      ),
    ];
  }

  /// Creates world states with special characters in keys
  static WorldState specialCharacterKeys() {
    return const WorldState(
      flags: {
        'flag_with_underscore': true,
        'flag-with-dash': false,
        'flag.with.dots': true,
        'flag@special#chars': false,
        '': true, // Empty string key
      },
      pityCounters: {
        'counter_with_underscore': 10,
        'counter-with-dash': 20,
        'counter.with.dots': 30,
        'counter@special#chars': 40,
        '': 50, // Empty string key
      },
    );
  }

  /// Creates a comprehensive world state with all features
  static WorldState comprehensive() {
    return const WorldState(
      flags: {
        // Game progression
        'game_started': true,
        'tutorial_completed': true,
        'game_completed': false,

        // Locations
        'village_discovered': true,
        'forest_explored': true,
        'dungeon_cleared': true,

        // Quests
        'main_quest_active': true,
        'side_quests_available': true,

        // Features
        'crafting_unlocked': true,
        'trading_unlocked': true,
        'magic_unlocked': true,

        // Achievements
        'first_achievement_unlocked': true,
        'milestone_reached': true,
      },
      pityCounters: {
        // Drop counters
        'rare_drop_counter': 25,
        'legendary_counter': 5,
        'epic_counter': 45,

        // Activity counters
        'battles_won': 100,
        'quests_completed': 15,
        'items_crafted': 30,

        // Progress counters
        'locations_discovered': 12,
        'achievements_unlocked': 8,
        'secrets_found': 6,
      },
    );
  }
}
