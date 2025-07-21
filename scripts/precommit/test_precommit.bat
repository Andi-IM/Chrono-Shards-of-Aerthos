@echo off
REM Script untuk menguji pre-commit hook secara manual
REM Jalankan script ini untuk memastikan pre-commit hook berfungsi dengan baik

echo ========================================
echo Testing Pre-Commit Hook
echo ========================================
echo.

echo Menjalankan pre-commit hook...
echo.

call ".git\hooks\pre-commit"

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo [SUCCESS] Pre-commit hook berhasil!
    echo ========================================
    echo.
    echo Hook siap digunakan. Setiap kali Anda melakukan commit,
    echo pemeriksaan berikut akan dijalankan otomatis:
    echo - dart pub get
    echo - dart analyze
    echo - dart format
    echo - dart test
    echo.
) else (
    echo.
    echo ========================================
    echo [ERROR] Pre-commit hook gagal!
    echo ========================================
    echo.
    echo Perbaiki masalah di atas sebelum melakukan commit.
    echo.
)

echo Tekan Enter untuk keluar...
pause >nul