import 'dart:convert';

import 'package:csoa/core/exceptions/version_mismatch_exception.dart';
import 'package:file/memory.dart';
import 'package:csoa/core/models/save_data.dart';
import 'package:csoa/core/models/world_state.dart';
import 'package:csoa/core/services/save_load_service.dart';
import 'package:test/test.dart';

import '../../dummy/player_state_dummy.dart';

SaveData createMockSaveData({
  String version = SaveLoadService.currentGameVersion,
}) {
  var playerDummy = PlayerStateDummy.newPlayer();
  return SaveData(
    gameVersion: version,
    saveTimestamp: DateTime.now().toIso8601String(),
    playerState: playerDummy,
    worldState: WorldState(
      flags: {'intro_complete': true},
      pityCounters: {'rare_sword': 5},
    ),
  );
}

void main() {
  late MemoryFileSystem mockFileSystem;
  late SaveLoadService saveLoadService;

  setUp(() {
    mockFileSystem = MemoryFileSystem();
    saveLoadService = SaveLoadService(fileSystem: mockFileSystem);
  });

  group('SaveLoadService Tests', () {
    test('SUCCESS: saveGame harus menulis file JSON yang valid', () async {
      // Arrange
      final mockData = createMockSaveData();

      // Act
      await saveLoadService.saveGame(mockData);

      // Assert
      final file = mockFileSystem.file('savegame.json');
      expect(
        await file.exists(),
        isTrue,
        reason: 'File seharusnya sudah dibuat',
      );

      final fileContent = await file.readAsString();
      final decodedJson = jsonDecode(fileContent) as Map<String, dynamic>;

      expect(decodedJson['gameVersion'], SaveLoadService.currentGameVersion);
      expect(decodedJson['worldState']['flags']['intro_complete'], isTrue);
    });

    test(
      'SUCCESS: loadGame harus mengembalikan SaveData dari file yang valid',
      () async {
        // Arrange
        final mockData = createMockSaveData();
        final file = mockFileSystem.file('savegame.json');
        await file.writeAsString(jsonEncode(mockData.toJson()));

        // Act
        final loadedData = await saveLoadService.loadGame();

        // Assert
        expect(loadedData.gameVersion, mockData.gameVersion);
        expect(loadedData.worldState.flags['intro_complete'], isTrue);
      },
    );

    test(
      'FAILURE: loadGame harus melempar VersionMismatchException untuk versi yang salah',
      () {
        // Arrange
        final mockData = createMockSaveData(version: '0.9.0');
        final file = mockFileSystem.file('savegame.json');
        file.writeAsStringSync(jsonEncode(mockData.toJson()));

        // Act & Assert
        expect(
          () => saveLoadService.loadGame(),
          throwsA(isA<VersionMismatchException>()),
          reason: 'Harus melempar exception untuk versi yang tidak cocok',
        );
      },
    );

    test('FAILURE: loadGame harus melempar Exception jika file tidak ada', () {
      // Act & Assert
      expect(
        () => saveLoadService.loadGame(),
        throwsA(isA<Exception>()),
        reason: 'Harus melempar exception jika file tidak ditemukan',
      );
    });

    test(
      'FAILURE: loadGame harus melempar FormatException untuk JSON yang rusak',
      () {
        // Arrange
        final file = mockFileSystem.file('savegame.json');
        file.writeAsStringSync(
          '{ "gameVersion": "1.0.0", "worldState": {',
        ); // JSON tidak valid

        // Act & Assert
        expect(
          () => saveLoadService.loadGame(),
          throwsA(isA<FormatException>()),
          reason: 'Harus melempar exception untuk JSON yang formatnya salah',
        );
      },
    );

    test(
      'CONSISTENCY: Siklus save-load harus menghasilkan data yang sama',
      () async {
        // Arrange
        final originalData = createMockSaveData();

        // Act
        await saveLoadService.saveGame(originalData);
        final loadedData = await saveLoadService.loadGame();

        // Assert
        // Bandingkan field-field penting untuk memastikan konsistensi
        expect(loadedData.gameVersion, originalData.gameVersion);
        expect(
          loadedData.worldState.pityCounters,
          originalData.worldState.pityCounters,
        );
        expect(loadedData.worldState.flags, originalData.worldState.flags);
        // Lanjutkan untuk properti lain jika perlu
      },
    );
  });
}
