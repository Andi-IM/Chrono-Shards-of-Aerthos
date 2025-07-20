# API Documentation

Dokumentasi API untuk library CSOA.

## 📚 Overview

Library CSOA menyediakan fungsi-fungsi utility untuk aplikasi command-line. Saat ini library ini masih dalam tahap pengembangan awal.

## 🔧 Functions

### `calculate()`

**Signature:**
```dart
int calculate()
```

**Description:**
Fungsi sederhana yang mengembalikan hasil perkalian 6 × 7.

**Returns:**
- `int`: Nilai 42 (hasil dari 6 × 7)

**Example:**
```dart
import 'package:csoa/csoa.dart';

void main() {
  int result = calculate();
  print('Result: $result'); // Output: Result: 42
}
```

**Since:** v1.0.0

---

## 🚀 Usage Examples

### Basic Usage

```dart
import 'package:csoa/csoa.dart' as csoa;

void main() {
  // Menggunakan fungsi calculate
  print('Calculation result: ${csoa.calculate()}');
}
```

### Advanced Usage

```dart
import 'package:csoa/csoa.dart';

void main(List<String> arguments) {
  // Contoh penggunaan dengan command line arguments
  if (arguments.contains('--calculate')) {
    print('Result: ${calculate()}');
  } else {
    print('Use --calculate flag to run calculation');
  }
}
```

## 🔮 Future API

Berikut adalah rencana API yang akan ditambahkan di versi mendatang:

### `greet(String name)`

**Planned Signature:**
```dart
String greet(String name)
```

**Description:**
Fungsi untuk membuat pesan sapaan.

**Parameters:**
- `name` (String): Nama yang akan disapa

**Returns:**
- `String`: Pesan sapaan

**Example:**
```dart
String message = greet('World');
print(message); // Output: Hello, World!
```

### `factorial(int number)`

**Planned Signature:**
```dart
int factorial(int number)
```

**Description:**
Menghitung faktorial dari sebuah angka.

**Parameters:**
- `number` (int): Angka yang akan dihitung faktorialnya

**Returns:**
- `int`: Hasil faktorial

**Throws:**
- `ArgumentError`: Jika number < 0

**Example:**
```dart
int result = factorial(5);
print(result); // Output: 120
```

## 📝 Notes

- Semua fungsi dalam library ini bersifat pure function (tidak memiliki side effects)
- Library ini mengikuti Dart naming conventions
- Error handling menggunakan Dart exceptions
- Dokumentasi ini akan diupdate seiring dengan penambahan fitur baru

## 🔗 Related

- [README.md](../README.md) - Dokumentasi utama proyek
- [CONTRIBUTING.md](../CONTRIBUTING.md) - Panduan kontribusi
- [CHANGELOG.md](../CHANGELOG.md) - Riwayat perubahan

---

**Last Updated:** $(date)
**Version:** 1.0.0