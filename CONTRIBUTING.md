# Panduan Kontribusi

Terima kasih atas minat Anda untuk berkontribusi pada proyek CSOA! Dokumen ini berisi panduan untuk membantu Anda memulai.

## 🚀 Memulai Kontribusi

### 1. Setup Environment

1. Fork repository ini
2. Clone fork Anda:
   ```bash
   git clone https://github.com/username/csoa.git
   cd csoa
   ```
3. Install dependencies:
   ```bash
   dart pub get
   ```

### 2. Membuat Branch

Buat branch baru untuk fitur atau perbaikan Anda:
```bash
git checkout -b feature/nama-fitur
# atau
git checkout -b fix/nama-bug
```

## 📝 Standar Coding

### Code Style

- Gunakan `dart format` untuk formatting otomatis
- Ikuti [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- Gunakan nama variabel dan fungsi yang deskriptif
- Tambahkan komentar untuk logika yang kompleks

### Contoh Code Style:

```dart
// ✅ Good
int calculateFactorial(int number) {
  if (number < 0) {
    throw ArgumentError('Number must be non-negative');
  }
  
  int result = 1;
  for (int i = 1; i <= number; i++) {
    result *= i;
  }
  return result;
}

// ❌ Bad
int calc(int n) {
  int r = 1;
  for (int i = 1; i <= n; i++) r *= i;
  return r;
}
```

## 🧪 Testing

### Menulis Test

- Setiap fungsi public harus memiliki test
- Gunakan nama test yang deskriptif
- Test edge cases dan error conditions
- Gunakan `group()` untuk mengelompokkan test terkait

### Contoh Test:

```dart
import 'package:test/test.dart';
import 'package:csoa/csoa.dart';

void main() {
  group('Calculator tests', () {
    test('should return 42 for calculate()', () {
      expect(calculate(), equals(42));
    });
    
    test('should handle negative numbers', () {
      expect(() => calculateFactorial(-1), throwsArgumentError);
    });
  });
}
```

### Menjalankan Test

```bash
# Jalankan semua test
dart test

# Jalankan test dengan coverage
dart test --coverage=coverage

# Jalankan test spesifik
dart test test/csoa_test.dart
```

## 📋 Checklist Sebelum Submit

Sebelum membuat Pull Request, pastikan:

- [ ] Code sudah diformat dengan `dart format .`
- [ ] Tidak ada warning dari `dart analyze`
- [ ] Semua test passing dengan `dart test`
- [ ] Menambahkan test untuk fitur baru
- [ ] Update dokumentasi jika diperlukan
- [ ] Commit message mengikuti konvensi

## 💬 Commit Message Convention

Gunakan format berikut untuk commit message:

```
type(scope): description

[optional body]

[optional footer]
```

### Types:
- `feat`: fitur baru
- `fix`: perbaikan bug
- `docs`: perubahan dokumentasi
- `style`: perubahan formatting, tidak mengubah logika
- `refactor`: refactoring code
- `test`: menambah atau memperbaiki test
- `chore`: maintenance tasks

### Contoh:
```
feat(calculator): add factorial calculation function

fix(test): correct expected value in calculate test

docs(readme): update installation instructions
```

## 🔄 Pull Request Process

1. Push branch Anda ke fork:
   ```bash
   git push origin feature/nama-fitur
   ```

2. Buat Pull Request di GitHub dengan:
   - Judul yang jelas dan deskriptif
   - Deskripsi yang menjelaskan perubahan
   - Link ke issue terkait (jika ada)
   - Screenshot (jika ada perubahan UI)

3. Tunggu review dan feedback

4. Lakukan perubahan yang diminta (jika ada)

5. Setelah approved, PR akan di-merge

## 🐛 Melaporkan Bug

Jika menemukan bug, buat issue dengan informasi:

- Deskripsi bug yang jelas
- Langkah untuk reproduce
- Expected vs actual behavior
- Environment (OS, Dart version, dll)
- Code snippet (jika relevan)

## 💡 Mengusulkan Fitur

Untuk mengusulkan fitur baru:

1. Buat issue dengan label "enhancement"
2. Jelaskan use case dan benefit
3. Diskusikan implementasi dengan maintainer
4. Tunggu approval sebelum mulai coding

## 📞 Bantuan

Jika butuh bantuan:

- Buat issue dengan label "question"
- Diskusi di GitHub Discussions (jika tersedia)
- Contact maintainer

---

Terima kasih atas kontribusi Anda! 🙏