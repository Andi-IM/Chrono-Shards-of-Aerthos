@echo off
REM Script untuk mengelola pre-commit hook
REM Dapat digunakan untuk mengaktifkan atau menonaktifkan hook

setlocal enabledelayedexpansion

echo ========================================
echo Pre-Commit Hook Manager
echo ========================================
echo.

set "hook_file=.git\hooks\pre-commit"
set "hook_disabled=.git\hooks\pre-commit.disabled"

REM Cek status hook saat ini
if exist "%hook_file%" (
    set "status=AKTIF"
    set "action=nonaktifkan"
    set "action_code=disable"
) else if exist "%hook_disabled%" (
    set "status=NONAKTIF"
    set "action=aktifkan"
    set "action_code=enable"
) else (
    echo [ERROR] Pre-commit hook tidak ditemukan!
    echo Pastikan Anda sudah menjalankan setup terlebih dahulu.
    goto :end
)

echo Status saat ini: %status%
echo.
echo Pilihan:
echo 1. %action% pre-commit hook
echo 2. Test pre-commit hook
echo 3. Keluar
echo.
set /p "choice=Masukkan pilihan (1-3): "

if "%choice%"=="1" goto :%action_code%
if "%choice%"=="2" goto :test
if "%choice%"=="3" goto :end

echo Pilihan tidak valid!
goto :end

:enable
echo.
echo Mengaktifkan pre-commit hook...
if exist "%hook_disabled%" (
    move "%hook_disabled%" "%hook_file%" >nul
    echo [SUCCESS] Pre-commit hook telah diaktifkan!
    echo Hook akan berjalan otomatis pada setiap commit.
) else (
    echo [ERROR] File hook yang dinonaktifkan tidak ditemukan!
)
goto :end

:disable
echo.
echo Menonaktifkan pre-commit hook...
if exist "%hook_file%" (
    move "%hook_file%" "%hook_disabled%" >nul
    echo [SUCCESS] Pre-commit hook telah dinonaktifkan!
    echo Hook tidak akan berjalan pada commit berikutnya.
    echo.
    echo PERINGATAN: Menonaktifkan hook dapat menurunkan kualitas kode.
    echo Pastikan untuk menjalankan pemeriksaan manual:
    echo - dart analyze
    echo - dart format .
    echo - dart test
) else (
    echo [ERROR] File hook aktif tidak ditemukan!
)
goto :end

:test
echo.
echo Menguji pre-commit hook...
echo.
if exist "%hook_file%" (
    call "%hook_file%"
    if !errorlevel! equ 0 (
        echo.
        echo [SUCCESS] Pre-commit hook berfungsi dengan baik!
    ) else (
        echo.
        echo [ERROR] Pre-commit hook mengalami masalah!
    )
) else (
    echo [ERROR] Pre-commit hook tidak aktif!
    echo Aktifkan terlebih dahulu dengan memilih opsi 1.
)
goto :end

:end
echo.
echo Tekan Enter untuk keluar...
pause >nul