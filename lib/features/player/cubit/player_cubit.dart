import 'package:bloc/bloc.dart';
import 'package:csoa/core/models/character_data.dart';
import 'package:csoa/core/models/player_state.dart';
import 'package:csoa/core/services/formula_engine.dart';

class PlayerCubit extends Cubit<PlayerState> {
  // ignore: unused_field
  final FormulaEngine _formulaEngine;

  PlayerCubit({required FormulaEngine formulaEngine})
    : _formulaEngine = formulaEngine,
      super(
        const PlayerState(
          name: "The Scribe",
          level: 1,
          xp: 0,
          hp: 100,
          maxHp: 100,
          stamina: 50,
          maxStamina: 50,
          stats: CharacterData(
            strength: 8,
            dexterity: 12,
            intelligence: 15,
            defense: 6,
            luck: 9,
            hp: 100,
            stamina: 50,
          ),
          inventory: [],
          equipment: {},
          skills: ["temporal_stutter"],
          currentLocationId: "library_entrance",
        ),
      );

  void addXp(int amount) {
    // Logika penambahan XP dan pengecekan level up akan ada di sini.
  }

  void takeDamage(int amount) {
    // Logika pengurangan HP akan ada di sini.
  }

  void equipItem(String item) {
    // Logika untuk memakai item/equipment akan ada di sini.
  }
}
