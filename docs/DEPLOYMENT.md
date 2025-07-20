# Panduan Deployment

Panduan lengkap untuk build dan deployment aplikasi CSOA.

## 🏗️ Building Application

### Development Build

Untuk development, Anda dapat langsung menjalankan aplikasi tanpa build:

```bash
# Jalankan langsung dari source
dart run

# Atau dengan arguments
dart run -- arg1 arg2
```

### Production Build

Untuk production, compile aplikasi menjadi executable:

```bash
# Compile ke native executable
dart compile exe bin/csoa.dart -o build/csoa

# Untuk Windows
dart compile exe bin/csoa.dart -o build/csoa.exe

# Untuk platform lain
dart compile exe bin/csoa.dart -o build/csoa-linux
dart compile exe bin/csoa.dart -o build/csoa-macos
```

### AOT Compilation

Untuk performa maksimal:

```bash
# Compile dengan AOT (Ahead of Time)
dart compile exe bin/csoa.dart --target-os windows -o build/csoa-windows.exe
dart compile exe bin/csoa.dart --target-os linux -o build/csoa-linux
dart compile exe bin/csoa.dart --target-os macos -o build/csoa-macos
```

## 📦 Packaging

### Create Distribution Package

1. **Buat direktori build:**
   ```bash
   mkdir -p build/dist
   ```

2. **Copy executable dan files penting:**
   ```bash
   # Windows
   copy build\csoa.exe build\dist\
   copy README.md build\dist\
   copy LICENSE build\dist\
   
   # Linux/macOS
   cp build/csoa build/dist/
   cp README.md build/dist/
   cp LICENSE build/dist/
   ```

3. **Buat archive:**
   ```bash
   # Windows (PowerShell)
   Compress-Archive -Path build\dist\* -DestinationPath csoa-v1.0.0-windows.zip
   
   # Linux/macOS
   tar -czf csoa-v1.0.0-linux.tar.gz -C build/dist .
   ```

### Docker Deployment

Buat `Dockerfile` untuk containerization:

```dockerfile
# Dockerfile
FROM dart:stable AS build

# Copy source code
WORKDIR /app
COPY pubspec.* ./
RUN dart pub get

COPY . .
RUN dart pub get --offline
RUN dart compile exe bin/csoa.dart -o bin/csoa

# Build minimal serving image
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/bin/csoa /app/bin/

# Start server
EXPOSE 8080
CMD ["/app/bin/csoa"]
```

Build dan run Docker container:

```bash
# Build image
docker build -t csoa:latest .

# Run container
docker run -it --rm csoa:latest
```

## 🚀 Deployment Strategies

### 1. Manual Deployment

**Steps:**
1. Build aplikasi untuk target platform
2. Upload executable ke server
3. Set permissions (Linux/macOS):
   ```bash
   chmod +x csoa
   ```
4. Test aplikasi:
   ```bash
   ./csoa
   ```

### 2. CI/CD dengan GitHub Actions

Buat `.github/workflows/deploy.yml`:

```yaml
name: Build and Deploy

on:
  push:
    tags:
      - 'v*'

jobs:
  build:
    runs-on: ${{ matrix.os }}
    strategy:
      matrix:
        os: [ubuntu-latest, windows-latest, macos-latest]
        include:
          - os: ubuntu-latest
            output: csoa-linux
          - os: windows-latest
            output: csoa-windows.exe
          - os: macos-latest
            output: csoa-macos
    
    steps:
    - uses: actions/checkout@v3
    
    - uses: dart-lang/setup-dart@v1
      with:
        sdk: stable
    
    - name: Install dependencies
      run: dart pub get
    
    - name: Run tests
      run: dart test
    
    - name: Build executable
      run: dart compile exe bin/csoa.dart -o ${{ matrix.output }}
    
    - name: Upload artifacts
      uses: actions/upload-artifact@v3
      with:
        name: ${{ matrix.output }}
        path: ${{ matrix.output }}

  release:
    needs: build
    runs-on: ubuntu-latest
    steps:
    - name: Download artifacts
      uses: actions/download-artifact@v3
    
    - name: Create Release
      uses: softprops/action-gh-release@v1
      with:
        files: |
          csoa-linux/csoa-linux
          csoa-windows.exe/csoa-windows.exe
          csoa-macos/csoa-macos
```

### 3. Package Managers

#### Homebrew (macOS/Linux)

Buat formula untuk Homebrew:

```ruby
# csoa.rb
class Csoa < Formula
  desc "Command-line application built with Dart"
  homepage "https://github.com/username/csoa"
  url "https://github.com/username/csoa/archive/v1.0.0.tar.gz"
  sha256 "sha256_hash_here"
  license "MIT"

  depends_on "dart" => :build

  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/csoa.dart", "-o", "csoa"
    bin.install "csoa"
  end

  test do
    assert_match "42", shell_output("#{bin}/csoa")
  end
end
```

#### Chocolatey (Windows)

Buat package untuk Chocolatey:

```xml
<!-- csoa.nuspec -->
<?xml version="1.0" encoding="utf-8"?>
<package xmlns="http://schemas.microsoft.com/packaging/2015/06/nuspec.xsd">
  <metadata>
    <id>csoa</id>
    <version>1.0.0</version>
    <title>CSOA</title>
    <authors>Your Name</authors>
    <description>Command-line application built with Dart</description>
    <projectUrl>https://github.com/username/csoa</projectUrl>
    <licenseUrl>https://github.com/username/csoa/blob/main/LICENSE</licenseUrl>
    <requireLicenseAcceptance>false</requireLicenseAcceptance>
    <tags>dart cli command-line</tags>
  </metadata>
  <files>
    <file src="tools\**" target="tools" />
  </files>
</package>
```

## 🔧 Environment Configuration

### Production Environment Variables

```bash
# .env.production
ENVIRONMENT=production
LOG_LEVEL=info
DEBUG=false
```

### Configuration Management

Buat file konfigurasi untuk berbagai environment:

```dart
// lib/config.dart
class Config {
  static const String environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: 'development',
  );
  
  static const bool isProduction = environment == 'production';
  static const bool isDebug = !isProduction;
  
  static const String logLevel = String.fromEnvironment(
    'LOG_LEVEL',
    defaultValue: isProduction ? 'info' : 'debug',
  );
}
```

## 📊 Monitoring & Logging

### Basic Logging

```dart
// lib/logger.dart
import 'dart:io';

class Logger {
  static void info(String message) {
    _log('INFO', message);
  }
  
  static void error(String message, [Object? error]) {
    _log('ERROR', message);
    if (error != null) {
      _log('ERROR', error.toString());
    }
  }
  
  static void _log(String level, String message) {
    final timestamp = DateTime.now().toIso8601String();
    stdout.writeln('[$timestamp] $level: $message');
  }
}
```

### Health Check

```dart
// lib/health.dart
class HealthCheck {
  static Map<String, dynamic> getStatus() {
    return {
      'status': 'healthy',
      'timestamp': DateTime.now().toIso8601String(),
      'version': '1.0.0',
      'uptime': _getUptime(),
    };
  }
  
  static String _getUptime() {
    // Implementation untuk menghitung uptime
    return '0d 0h 0m 0s';
  }
}
```

## 🔒 Security Considerations

1. **Jangan commit secrets** ke repository
2. **Gunakan environment variables** untuk konfigurasi sensitif
3. **Validate input** dari command line arguments
4. **Set proper file permissions** pada executable
5. **Regular security updates** untuk dependencies

## 📋 Deployment Checklist

- [ ] Code sudah di-review dan tested
- [ ] Version number sudah diupdate
- [ ] CHANGELOG.md sudah diupdate
- [ ] Build berhasil untuk semua target platform
- [ ] Executable sudah ditest di environment target
- [ ] Documentation sudah diupdate
- [ ] Security scan sudah dilakukan
- [ ] Backup sudah dibuat (jika ada data)
- [ ] Rollback plan sudah disiapkan

---

**Happy Deploying! 🚀**