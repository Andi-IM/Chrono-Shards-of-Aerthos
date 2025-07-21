import 'package:test/test.dart';

// Impor kelas yang akan diuji dan dependensinya
import 'package:csoa/core/models/save_data.dart';
import 'package:csoa/core/models/player_state.dart';
import 'package:csoa/core/models/world_state.dart';

import '../../dummy/all_dummy.dart';

void main() {
  group('SaveData Model Tests', () {
    // 1. Siapkan data JSON yang valid sebagai sumber kebenaran
    final characterDataDummy = CharacterDataDummy.mage();
    final inventoryDummy = ItemStackDummy.arrowStack();
    final validJsonMap = {
      'gameVersion': '1.0.0',
      'saveTimestamp': '2025-07-21T14:30:00Z',
      'playerState': {
        'name': 'Ryu',
        'level': 5,
        'xp': 150,
        'hp': 90,
        'maxHp': 100,
        'stamina': 75,
        'maxStamina': 80,
        'stats': characterDataDummy.toJson(), // Mock
        'inventory': [inventoryDummy.toJson()], // Mock
        'equipment': {'weapon': 'katana'},
        'skills': ['fireball'],
        'currentLocationId': 'shrine',
      },
      'worldState': {
        'flags': {'quest_started': true},
        'pityCounters': {'legendary_sword': 10},
      },
    };

    // 2. Siapkan instance objek Dart yang valid
    final validSaveDataObject = SaveData(
      gameVersion: '1.0.0',
      saveTimestamp: '2025-07-21T14:30:00Z',
      playerState: PlayerState(
        name: 'Ryu',
        level: 5,
        xp: 150,
        hp: 90,
        maxHp: 100,
        stamina: 75,
        maxStamina: 80,
        stats: characterDataDummy,
        inventory: [inventoryDummy],
        equipment: {'weapon': 'katana'},
        skills: ['fireball'],
        currentLocationId: 'shrine',
      ),
      worldState: const WorldState(
        flags: {'quest_started': true},
        pityCounters: {'legendary_sword': 10},
      ),
    );

    test('should correctly deserialize from a valid JSON map', () {
      // Act: Buat objek dari JSON
      final saveData = SaveData.fromJson(validJsonMap);

      // Assert: Verifikasi setiap field penting
      expect(saveData.gameVersion, '1.0.0');
      expect(saveData.saveTimestamp, '2025-07-21T14:30:00Z');
      expect(saveData.playerState.name, 'Ryu');
      expect(saveData.playerState.level, 5);
      expect(saveData.worldState.flags['quest_started'], isTrue);
      expect(saveData.worldState.pityCounters['legendary_sword'], 10);
    });

    test('should correctly serialize to a valid JSON map', () {
      // Act: Ubah objek menjadi JSON
      final json = validSaveDataObject.toJson();

      // Assert: Bandingkan hasilnya dengan JSON sumber kebenaran
      expect(json, equals(validJsonMap));
    });

    test('should remain consistent after a full toJson/fromJson cycle', () {
      // Arrange: Buat objek awal
      final originalSaveData = validSaveDataObject;

      // Act: Lakukan siklus serialisasi -> deserialisasi
      final json = originalSaveData.toJson();
      final recreatedSaveData = SaveData.fromJson(json);

      // Assert: Bandingkan field dari objek yang dibuat ulang dengan objek asli
      // Ini adalah cara paling andal untuk memastikan tidak ada data yang hilang/berubah
      expect(recreatedSaveData.gameVersion, originalSaveData.gameVersion);
      expect(recreatedSaveData.saveTimestamp, originalSaveData.saveTimestamp);
      expect(
        recreatedSaveData.playerState.level,
        originalSaveData.playerState.level,
      );
      expect(
        recreatedSaveData.playerState.equipment,
        originalSaveData.playerState.equipment,
      );
      expect(
        recreatedSaveData.worldState.flags,
        originalSaveData.worldState.flags,
      );
      expect(
        recreatedSaveData.worldState.pityCounters,
        originalSaveData.worldState.pityCounters,
      );
    });
  });
}
