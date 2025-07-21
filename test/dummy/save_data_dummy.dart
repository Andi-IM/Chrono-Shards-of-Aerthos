import 'package:csoa/core/models/save_data.dart';
import 'player_state_dummy.dart';
import 'world_state_dummy.dart';

/// Dummy data factory for SaveData model
class SaveDataDummy {
  /// Creates a new game save data
  static SaveData newGameSave() {
    return SaveData(
      gameVersion: '1.0.0',
      saveTimestamp: '2024-01-15T10:30:00Z',
      playerState: PlayerStateDummy.newPlayer(),
      worldState: WorldStateDummy.newGame(),
    );
  }

  /// Creates an early game save data
  static SaveData earlyGameSave() {
    return SaveData(
      gameVersion: '1.0.0',
      saveTimestamp: '2024-01-15T14:45:30Z',
      playerState: PlayerStateDummy.experiencedWarrior(),
      worldState: WorldStateDummy.earlyGame(),
    );
  }

  /// Creates a mid-game save data
  static SaveData midGameSave() {
    return SaveData(
      gameVersion: '1.0.1',
      saveTimestamp: '2024-01-16T09:15:45Z',
      playerState: PlayerStateDummy.powerfulMage(),
      worldState: WorldStateDummy.midGame(),
    );
  }

  /// Creates a late game save data
  static SaveData lateGameSave() {
    return SaveData(
      gameVersion: '1.0.2',
      saveTimestamp: '2024-01-17T20:22:10Z',
      playerState: PlayerStateDummy.legendaryHero(),
      worldState: WorldStateDummy.lateGame(),
    );
  }

  /// Creates a completed game save data
  static SaveData completedGameSave() {
    return SaveData(
      gameVersion: '1.0.2',
      saveTimestamp: '2024-01-18T23:59:59Z',
      playerState: PlayerStateDummy.maxLevelPlayer(),
      worldState: WorldStateDummy.gameCompleted(),
    );
  }

  /// Creates a warrior character save
  static SaveData warriorSave() {
    return SaveData(
      gameVersion: '1.0.1',
      saveTimestamp: '2024-01-15T16:30:00Z',
      playerState: PlayerStateDummy.experiencedWarrior(),
      worldState: WorldStateDummy.midGame(),
    );
  }

  /// Creates a mage character save
  static SaveData mageSave() {
    return SaveData(
      gameVersion: '1.0.1',
      saveTimestamp: '2024-01-15T18:45:15Z',
      playerState: PlayerStateDummy.powerfulMage(),
      worldState: WorldStateDummy.locationDiscovery(),
    );
  }

  /// Creates a rogue character save
  static SaveData rogueSave() {
    return SaveData(
      gameVersion: '1.0.1',
      saveTimestamp: '2024-01-15T21:10:30Z',
      playerState: PlayerStateDummy.sneakyRogue(),
      worldState: WorldStateDummy.questProgression(),
    );
  }

  /// Creates a tank character save
  static SaveData tankSave() {
    return SaveData(
      gameVersion: '1.0.1',
      saveTimestamp: '2024-01-16T12:00:00Z',
      playerState: PlayerStateDummy.mightyTank(),
      worldState: WorldStateDummy.achievementProgress(),
    );
  }

  /// Creates a hardcore mode save
  static SaveData hardcoreSave() {
    return SaveData(
      gameVersion: '1.1.0',
      saveTimestamp: '2024-01-16T15:30:45Z',
      playerState: PlayerStateDummy.experiencedWarrior(),
      worldState: WorldStateDummy.gameModes()['hardcore_mode']!,
    );
  }

  /// Creates a speedrun mode save
  static SaveData speedrunSave() {
    return SaveData(
      gameVersion: '1.1.0',
      saveTimestamp: '2024-01-16T16:45:20Z',
      playerState: PlayerStateDummy.sneakyRogue(),
      worldState: WorldStateDummy.gameModes()['speedrun_mode']!,
    );
  }

  /// Creates a New Game Plus save
  static SaveData newGamePlusSave() {
    return SaveData(
      gameVersion: '1.1.0',
      saveTimestamp: '2024-01-17T10:00:00Z',
      playerState: PlayerStateDummy.legendaryHero(),
      worldState: WorldStateDummy.gameModes()['new_game_plus']!,
    );
  }

  /// Creates a save with an injured player
  static SaveData injuredPlayerSave() {
    return SaveData(
      gameVersion: '1.0.1',
      saveTimestamp: '2024-01-15T19:30:15Z',
      playerState: PlayerStateDummy.injuredPlayer(),
      worldState: WorldStateDummy.midGame(),
    );
  }

  /// Creates a save with a poor player
  static SaveData poorPlayerSave() {
    return SaveData(
      gameVersion: '1.0.0',
      saveTimestamp: '2024-01-15T11:15:30Z',
      playerState: PlayerStateDummy.poorPlayer(),
      worldState: WorldStateDummy.earlyGame(),
    );
  }

  /// Creates a save with a hoarder player
  static SaveData hoarderSave() {
    return SaveData(
      gameVersion: '1.0.2',
      saveTimestamp: '2024-01-17T14:20:45Z',
      playerState: PlayerStateDummy.hoarderPlayer(),
      worldState: WorldStateDummy.itemAndCrafting(),
    );
  }

  /// Creates a save during special events
  static SaveData specialEventSave() {
    return SaveData(
      gameVersion: '1.2.0',
      saveTimestamp: '2024-01-20T12:00:00Z',
      playerState: PlayerStateDummy.powerfulMage(),
      worldState: WorldStateDummy.specialEvents(),
    );
  }

  /// Creates a save with beta version
  static SaveData betaSave() {
    return SaveData(
      gameVersion: '0.9.5-beta',
      saveTimestamp: '2024-01-10T08:30:00Z',
      playerState: PlayerStateDummy.newPlayer(),
      worldState: WorldStateDummy.newGame(),
    );
  }

  /// Creates a save with alpha version
  static SaveData alphaSave() {
    return SaveData(
      gameVersion: '0.5.0-alpha',
      saveTimestamp: '2023-12-15T16:45:30Z',
      playerState: PlayerStateDummy.weakling(),
      worldState: WorldStateDummy.emptyWorld(),
    );
  }

  /// Creates a save with future version
  static SaveData futureSave() {
    return SaveData(
      gameVersion: '2.0.0',
      saveTimestamp: '2024-06-01T12:00:00Z',
      playerState: PlayerStateDummy.maxLevelPlayer(),
      worldState: WorldStateDummy.comprehensive(),
    );
  }

  /// Creates saves for different character classes
  static Map<String, SaveData> characterClassSaves() {
    final classes = PlayerStateDummy.characterClasses();
    final timestamp = '2024-01-16T12:00:00Z';

    return {
      'warrior': SaveData(
        gameVersion: '1.0.1',
        saveTimestamp: timestamp,
        playerState: classes['warrior']!,
        worldState: WorldStateDummy.midGame(),
      ),
      'mage': SaveData(
        gameVersion: '1.0.1',
        saveTimestamp: timestamp,
        playerState: classes['mage']!,
        worldState: WorldStateDummy.midGame(),
      ),
      'rogue': SaveData(
        gameVersion: '1.0.1',
        saveTimestamp: timestamp,
        playerState: classes['rogue']!,
        worldState: WorldStateDummy.midGame(),
      ),
      'tank': SaveData(
        gameVersion: '1.0.1',
        saveTimestamp: timestamp,
        playerState: classes['tank']!,
        worldState: WorldStateDummy.midGame(),
      ),
      'hybrid': SaveData(
        gameVersion: '1.0.1',
        saveTimestamp: timestamp,
        playerState: classes['hybrid']!,
        worldState: WorldStateDummy.midGame(),
      ),
    };
  }

  /// Creates saves for different progression stages
  static List<SaveData> progressionSaves() {
    final playerStages = PlayerStateDummy.progressionStages();
    final worldStages = WorldStateDummy.progressionStages();
    final versions = [
      '1.0.0',
      '1.0.0',
      '1.0.1',
      '1.0.1',
      '1.0.2',
      '1.0.2',
      '1.1.0',
      '1.1.0',
      '1.2.0',
    ];
    final timestamps = [
      '2024-01-15T10:00:00Z',
      '2024-01-15T11:30:00Z',
      '2024-01-15T14:15:00Z',
      '2024-01-16T09:45:00Z',
      '2024-01-16T16:20:00Z',
      '2024-01-17T12:10:00Z',
      '2024-01-17T18:30:00Z',
      '2024-01-18T14:45:00Z',
      '2024-01-18T23:59:59Z',
    ];

    final saves = <SaveData>[];
    for (int i = 0; i < playerStages.length && i < worldStages.length; i++) {
      saves.add(
        SaveData(
          gameVersion: versions[i % versions.length],
          saveTimestamp: timestamps[i % timestamps.length],
          playerState: playerStages[i],
          worldState: worldStages[i],
        ),
      );
    }

    return saves;
  }

  /// Creates saves with different timestamp formats
  static List<SaveData> timestampVariations() {
    final player = PlayerStateDummy.newPlayer();
    final world = WorldStateDummy.newGame();

    return [
      SaveData(
        gameVersion: '1.0.0',
        saveTimestamp: '2024-01-15T10:30:00Z', // ISO 8601 with Z
        playerState: player,
        worldState: world,
      ),
      SaveData(
        gameVersion: '1.0.0',
        saveTimestamp: '2024-01-15T10:30:00.000Z', // With milliseconds
        playerState: player,
        worldState: world,
      ),
      SaveData(
        gameVersion: '1.0.0',
        saveTimestamp: '2024-01-15T10:30:00+00:00', // With timezone offset
        playerState: player,
        worldState: world,
      ),
      SaveData(
        gameVersion: '1.0.0',
        saveTimestamp: '2024-01-15T10:30:00-05:00', // Different timezone
        playerState: player,
        worldState: world,
      ),
    ];
  }

  /// Creates saves with different version formats
  static List<SaveData> versionVariations() {
    final player = PlayerStateDummy.newPlayer();
    final world = WorldStateDummy.newGame();
    final timestamp = '2024-01-15T12:00:00Z';

    return [
      SaveData(
        gameVersion: '1.0.0',
        saveTimestamp: timestamp,
        playerState: player,
        worldState: world,
      ),
      SaveData(
        gameVersion: '1.0.0-beta',
        saveTimestamp: timestamp,
        playerState: player,
        worldState: world,
      ),
      SaveData(
        gameVersion: '1.0.0-alpha.1',
        saveTimestamp: timestamp,
        playerState: player,
        worldState: world,
      ),
      SaveData(
        gameVersion: '1.0.0-rc.1',
        saveTimestamp: timestamp,
        playerState: player,
        worldState: world,
      ),
      SaveData(
        gameVersion: '1.0.0+build.123',
        saveTimestamp: timestamp,
        playerState: player,
        worldState: world,
      ),
    ];
  }

  /// Creates a save from JSON for testing
  static SaveData fromJsonExample() {
    final json = {
      'gameVersion': '1.0.0-test',
      'saveTimestamp': '2024-01-15T12:00:00Z',
      'playerState': {
        'name': 'Test Player',
        'level': 5,
        'xp': 1000,
        'hp': 75,
        'maxHp': 100,
        'stamina': 60,
        'maxStamina': 80,
        'stats': {
          'strength': 10,
          'dexterity': 12,
          'intelligence': 8,
          'defense': 9,
          'luck': 11,
          'hp': 100,
          'stamina': 80,
        },
        'inventory': [
          {'id': 'test_item', 'quantity': 1},
        ],
        'equipment': {'weapon': 'test_weapon'},
        'skills': ['test_skill'],
        'currentLocationId': 'test_location',
      },
      'worldState': {
        'flags': {'test_flag': true},
        'pityCounters': {'test_counter': 5},
      },
    };
    return SaveData.fromJson(json);
  }

  /// Creates all available save types
  static List<SaveData> allSaveTypes() {
    return [
      newGameSave(),
      earlyGameSave(),
      midGameSave(),
      lateGameSave(),
      completedGameSave(),
      warriorSave(),
      mageSave(),
      rogueSave(),
      tankSave(),
      hardcoreSave(),
      speedrunSave(),
      newGamePlusSave(),
      injuredPlayerSave(),
      poorPlayerSave(),
      hoarderSave(),
      specialEventSave(),
      betaSave(),
      alphaSave(),
      futureSave(),
    ];
  }

  /// Creates edge case saves for testing
  static List<SaveData> edgeCaseSaves() {
    return [
      // Save with empty version
      SaveData(
        gameVersion: '',
        saveTimestamp: '2024-01-15T12:00:00Z',
        playerState: PlayerStateDummy.newPlayer(),
        worldState: WorldStateDummy.emptyWorld(),
      ),
      // Save with very long version
      SaveData(
        gameVersion:
            '1.0.0-very-long-version-string-with-lots-of-details-and-build-information',
        saveTimestamp: '2024-01-15T12:00:00Z',
        playerState: PlayerStateDummy.newPlayer(),
        worldState: WorldStateDummy.emptyWorld(),
      ),
      // Save with special characters in version
      SaveData(
        gameVersion: '1.0.0-special@chars#version',
        saveTimestamp: '2024-01-15T12:00:00Z',
        playerState: PlayerStateDummy.newPlayer(),
        worldState: WorldStateDummy.specialCharacterKeys(),
      ),
    ];
  }

  /// Creates saves for different scenarios
  static Map<String, SaveData> scenarioSaves() {
    return {
      'tutorial': newGameSave(),
      'first_dungeon': earlyGameSave(),
      'boss_fight': midGameSave(),
      'final_area': lateGameSave(),
      'post_game': completedGameSave(),
      'hardcore_challenge': hardcoreSave(),
      'speed_challenge': speedrunSave(),
      'collection_run': hoarderSave(),
      'minimal_run': poorPlayerSave(),
      'perfect_run': newGamePlusSave(),
    };
  }
}
