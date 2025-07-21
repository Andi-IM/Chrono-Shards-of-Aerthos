import 'package:bloc/bloc.dart';
import 'package:csoa/core/models/character_data.dart';
import 'package:csoa/core/services/formula_engine.dart';
import 'player_state.dart';

class PlayerCubit extends Cubit<PlayerState> {
  // ignore: unused_field
  final FormulaEngine _formulaEngine;

  PlayerCubit({required FormulaEngine formulaEngine})
    : _formulaEngine = formulaEngine,
      super(
        const PlayerState(
          level: 1,
          xp: 0,
          hp: 100,
          stats: CharacterData(),
          equipment: {},
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
