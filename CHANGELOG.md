# Changelog

Semua perubahan penting pada proyek ini akan didokumentasikan dalam file ini.

Format berdasarkan [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
dan proyek ini mengikuti [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Dokumentasi starter lengkap
- Template GitHub untuk issues dan pull requests
- CI/CD pipeline dengan GitHub Actions
- Panduan kontribusi (CONTRIBUTING.md)
- Dokumentasi API (docs/API.md)
- Panduan deployment (docs/DEPLOYMENT.md)
- File .gitignore yang komprehensif
- MIT License

### Changed
- README.md diperbaharui dengan dokumentasi lengkap
- Struktur proyek lebih terorganisir

## [1.0.0] - 2024-01-01

### Added
- Initial version
- Basic command-line application structure
- Entry point di `bin/csoa.dart`
- Library code di `lib/csoa.dart`
- Unit test di `test/csoa_test.dart`
- Fungsi `calculate()` yang mengembalikan 42
- Konfigurasi pubspec.yaml dengan dependencies dasar
- Konfigurasi linting dengan analysis_options.yaml

### Dependencies
- Dart SDK ^3.8.1
- lints ^5.0.0 (dev dependency)
- test ^1.24.0 (dev dependency)

---

## Format Changelog

### Types of changes
- **Added** untuk fitur baru
- **Changed** untuk perubahan pada fitur yang sudah ada
- **Deprecated** untuk fitur yang akan dihapus
- **Removed** untuk fitur yang sudah dihapus
- **Fixed** untuk perbaikan bug
- **Security** untuk perbaikan keamanan

### Versioning
- **MAJOR** version untuk perubahan yang tidak kompatibel dengan API sebelumnya
- **MINOR** version untuk penambahan fitur yang kompatibel dengan versi sebelumnya
- **PATCH** version untuk perbaikan bug yang kompatibel dengan versi sebelumnya
