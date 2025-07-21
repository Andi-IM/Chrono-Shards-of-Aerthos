import 'package:bloc/bloc.dart';
import 'package:csoa/core/models/enemy_data.dart';
import 'package:csoa/core/services/formula_engine.dart';
import 'package:csoa/features/player/cubit/player_cubit.dart';
import 'combat_state.dart';

class CombatCubit extends Cubit<CombatState> {
  // ignore: unused_field
  final FormulaEngine _formulaEngine;
  // ignore: unused_field
  final PlayerCubit _playerCubit;

  CombatCubit({
    required FormulaEngine formulaEngine,
    required PlayerCubit playerCubit,
    required List<EnemyData> enemies,
  })  : _formulaEngine = formulaEngine,
        _playerCubit = playerCubit,
        super(CombatState(
          turn: 1,
          enemies: enemies,
          enemyIntentions: {},
          isPlayerTurn: true,
        ));

  void playerAttack(String targetId) {
    // Logika serangan pemain ke target.
  }

  void playerDodge() {
    // Logika pemain melakukan dodge.
  }

  void resolveTurn() {
    // Logika untuk menyelesaikan giliran dan memulai giliran baru.
  }
}