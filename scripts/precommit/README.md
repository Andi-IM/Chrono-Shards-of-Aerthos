# Pre-Commit Hook Setup untuk Dart Project

Dokumentasi ini menjelaskan cara menggunakan pre-commit hook yang telah dikonfigurasi untuk project Dart ini.

## Apa itu Pre-Commit Hook?

Pre-commit hook adalah script yang dijalankan secara otomatis oleh Git sebelum setiap commit. Hook ini memastikan bahwa kode yang akan di-commit telah melalui pemeriksaan kualitas kode.

## Fitur Pre-Commit Hook

Hook yang telah dikonfigurasi akan menjalankan:

1. **dart pub get** - Memastikan dependencies terbaru
2. **dart analyze** - Melakukan static analysis untuk menemukan potential issues
3. **dart format** - Memeriksa dan memperbaiki formatting kode
4. **dart test** - Menjalankan semua unit tests

## Cara Kerja

Setiap kali Anda menjalankan `git commit`, hook akan:

1. ✅ Menjalankan `dart pub get`
2. ✅ Menjalankan `dart analyze` - jika ada error, commit akan dibatalkan
3. ✅ Memeriksa format kode dengan `dart format --set-exit-if-changed`
4. ✅ Jika format tidak sesuai, akan otomatis diformat dan commit dibatalkan
5. ✅ Menjalankan semua tests dengan `dart test`
6. ✅ Jika semua check berhasil, commit akan dilanjutkan

## File yang Dibuat

- `.git/hooks/pre-commit` - Hook utama (Windows batch script)
- `.git/hooks/pre-commit.ps1` - Versi PowerShell (backup)

## Cara Menggunakan

### 1. Commit Normal
```bash
git add .
git commit -m "Your commit message"
```

Hook akan berjalan otomatis dan:
- ✅ Jika semua check berhasil → commit akan berhasil
- ❌ Jika ada masalah → commit akan dibatalkan dengan pesan error

### 2. Jika Format Kode Tidak Sesuai

Jika hook mendeteksi masalah formatting:
```
[ERROR] Kode belum diformat dengan benar!
[INFO] Menjalankan dart format untuk memperbaiki...
[ERROR] Format telah diperbaiki. Silakan stage perubahan dan commit lagi.
```

Lakukan:
```bash
git add .  # Stage perubahan format yang telah diperbaiki
git commit -m "Your commit message"  # Commit lagi
```

### 3. Jika Ada Error dari dart analyze

Perbaiki error yang dilaporkan oleh `dart analyze`, lalu commit lagi.

### 4. Jika Tests Gagal

Perbaiki tests yang gagal, lalu commit lagi.

## Menonaktifkan Hook (Tidak Disarankan)

Jika dalam situasi darurat Anda perlu bypass hook:
```bash
git commit -m "Your message" --no-verify
```

⚠️ **Peringatan**: Menggunakan `--no-verify` akan melewati semua pemeriksaan kualitas kode.

## Troubleshooting

### Hook Tidak Berjalan
1. Pastikan file `.git/hooks/pre-commit` ada dan executable
2. Pastikan Dart SDK terinstall dan ada di PATH
3. Coba jalankan manual: `dart --version`

### Error Permission
Jika ada error permission di Windows:
```powershell
# Jalankan di PowerShell sebagai Administrator
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Dart Command Not Found
Pastikan Dart SDK sudah terinstall dan ditambahkan ke PATH:
1. Download Dart SDK dari https://dart.dev/get-dart
2. Tambahkan ke PATH environment variable
3. Restart terminal/command prompt

## Kustomisasi

Untuk memodifikasi behavior hook, edit file `.git/hooks/pre-commit`:

- **Menonaktifkan tests**: Hapus atau comment bagian `dart test`
- **Menambah pemeriksaan**: Tambahkan command baru sebelum `exit /b 0`
- **Mengubah pesan**: Edit echo statements

## Manfaat

✅ **Konsistensi Kode**: Semua kode otomatis diformat dengan standar Dart
✅ **Kualitas Kode**: Static analysis mencegah potential bugs
✅ **Reliability**: Tests memastikan functionality tidak rusak
✅ **Otomatis**: Tidak perlu ingat menjalankan checks manual
✅ **Team Collaboration**: Semua developer menggunakan standar yang sama

---

**Catatan**: Hook ini hanya berlaku untuk repository lokal. Setiap developer perlu setup sendiri atau gunakan tools seperti `pre-commit` package untuk sharing hooks.