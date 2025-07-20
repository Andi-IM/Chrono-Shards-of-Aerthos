# Chrono Shards of Aerthos - Text-Based RPG (Dart CLI)

> **Genre:** Narrative RPG | Interactive Fiction | Turn-Based Combat  
> **Platform:** Command-Line (Dart CLI)  
> **Status:** In Development  

Chrono Shards of Aerthos (CSoA) adalah **game petualangan berbasis teks** yang menggabungkan eksplorasi naratif, sistem pertarungan turn-based, dan pengelolaan inventaris. Game ini dikembangkan menggunakan bahasa pemrograman Dart dan berfokus pada pengalaman **immersive narrative melalui perintah teks**.

---

## 📋 Fitur Utama (Roadmap)

| Fitur             | Status   |
|-------------------|----------|
| Sistem Navigasi   | ⏳ Belum (Milestone 1) |
| Save / Load State | ⏳ Belum (Milestone 1) |
| Combat Engine     | ⏳ Belum (Milestone 2) |
| NPC Dialog / Event| ⏳ Belum (Milestone 3) |
| Inventory / Item  | ⏳ Belum (Milestone 4)    |
| Vertical Slice    | ⏳ Belum (Milestone 4)    |

---

## 🚀 Instalasi & Menjalankan

### Prasyarat
- Dart SDK `>=3.8.1`
- Git

### Instalasi
```bash
git clone https://github.com/Andi-IM/Chrono-Shards-of-Aerthos.git
cd csoa
dart pub get

```

### Menjalankan Game

```bash
dart run

```

### Menjalankan Test & Coverage

```bash
dart test
dart test --coverage=coverage

```

----------

## 🗂️ Struktur Proyek

```
csoa/
├── bin/
│   └── csoa.dart              # Entry point aplikasi
├── lib/
│   ├── models/
│   │   ├── player_state.dart
│   │   └── world_state.dart
│   ├── services/
│   │   ├── combat_manager.dart
│   │   └── save_load_service.dart
│   └── csoa.dart              # Library utama
├── test/
│   └── unit_test.dart         # Unit tests
├── pubspec.yaml               # Dependencies
├── analysis_options.yaml      # Linting rules
└── README.md                  # Dokumentasi ini

```

----------

## ⚙️ Fitur Development

### Contoh Perintah CLI (sementara)

```bash
> look
> go north
> examine bookshelf
> inventory
> use potion
> save
> load

```

----------

## 🔨 Dependencies

```yaml
dependencies:
  args: ^2.4.0
  json_annotation: ^4.8.1

dev_dependencies:
  build_runner: ^2.4.6
  json_serializable: ^6.8.0
  test: ^1.24.0
  lints: ^5.0.0

```

----------

## 🛠️ Workflow Development (Solo Freelance)

### Progres Dikelola via GitHub Project:

-   Board: Backlog → Todo → In Progress → Review → Done
-   Milestone: MVP Iterasi 1 (The Shattered Library)
-   Reporting: Issue, Label, Automasi Progress
    

----------

## 🤝 Kontribusi

Proyek ini dikembangkan secara pribadi. Jika kamu punya feedback atau saran, silakan buka **Issue**.

----------

## 📝 Lisensi

© 2025 Andi Irham. All Rights Reserved.  
Repositori ini menggunakan lisensi open-source MIT.

----------

## 📞 Kontak

Jika ada pertanyaan atau kolaborasi:

-   Email: [andi.irhamm@gmail.com](mailto:andi.irhamm@gmail.com)
-   GitHub: [@Andi-IM](https://github.com/Andi-IM)
    
----------

**Thanks for reading. Happy coding! 🚀**