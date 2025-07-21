import 'dart:convert';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:csoa/core/exceptions/version_mismatch_exception.dart';
import 'package:csoa/core/models/save_data.dart';

/// Layanan terpusat untuk menangani penulisan dan pembacaan state game.
class SaveLoadService {
  static const currentGameVersion = "1.0.0";
  static const String _fileName = 'savegame.json';
  final FileSystem fileSystem;

  const SaveLoadService({this.fileSystem = const LocalFileSystem()});

  /// Menyimpan objek [data] ke file [_fileName].
  /// Mengenkapsulasi semua logika I/O dan serialisasi.
  Future<void> saveGame(SaveData data) async {
    try {
      final file = fileSystem.file(_fileName);
      final jsonString = JsonEncoder.withIndent(' ').convert(data.toJson());
      await file.writeAsString(jsonString);
      print('Succes saved game to file $_fileName');
    } catch (e) {
      print('Terjadi kesalahan saat menyimpan game: $e');
      rethrow;
    }
  }

  /// Memuat state game dari file [_fileName].
  /// Melakukan validasi versi sebelum mengembalikan data.
  ///
  /// Melempar [VersionMismatchException] jika versi tidak cocok.
  /// Melempar [FileNotFoundException] jika file tidak ditemukan.
  Future<SaveData> loadGame() async {
    try {
      final file = fileSystem.file(_fileName);
      if (!await file.exists()) {
        throw FileSystemException('Save file not found.', file.path);
      }

      final jsonString = await file.readAsString();
      final Map<String, dynamic> decodedJson = jsonDecode(jsonString);

      final String fileVersion =
          decodedJson['gameVersion'] as String? ?? '0.0.0';

      if (fileVersion != currentGameVersion) {
        throw VersionMismatchException(
          expectedVersion: currentGameVersion,
          foundVersion: fileVersion,
        );
      }

      final saveData = SaveData.fromJson(decodedJson);
      print('Game berhasil dimuat dari $_fileName');
      return saveData;
    } on FileSystemException {
      print('File simpanan tidak ditemukan: $_fileName');
      throw Exception('File simpanan tidak ditemukan.');
    } catch (e) {
      print('Terjadi kesalahan saat memuat game: $e');
      rethrow;
    }
  }
}
