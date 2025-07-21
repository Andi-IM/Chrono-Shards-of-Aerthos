import 'package:bloc/bloc.dart';
import 'package:csoa/core/models/enemy_data.dart';
import 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(const GameStateMainMenu(version: '1.0.0'));

  void startNewGame() {
    // Logika untuk inisialisasi PlayerCubit, InventoryCubit, dll.
    // lalu emit GameStateInGame.
  }

  void enterCombat(List<EnemyData> enemies) {
    // Logika untuk membuat CombatCubit lalu emit GameStateCombat.
  }

  void exitCombat() {
    // Logika untuk kembali ke GameStateInGame setelah pertarungan selesai.
  }

  void showInventory() {
    // Logika untuk emit GameStateInventory.
  }
}