import 'package:equatable/equatable.dart';
import 'package:csoa/features/combat/cubit/combat_cubit.dart';
import 'package:csoa/features/inventory/cubit/inventory_cubit.dart';
import 'package:csoa/features/player/cubit/player_cubit.dart';

abstract class GameState extends Equatable {
  const GameState();
  @override
  List<Object?> get props => [];
}

class GameStateMainMenu extends GameState {
  final String version;
  const GameStateMainMenu({required this.version});
  @override
  List<Object?> get props => [version];
}

class GameStateInGame extends GameState {
  final PlayerCubit playerCubit;
  final InventoryCubit inventoryCubit;
  const GameStateInGame({
    required this.playerCubit,
    required this.inventoryCubit,
  });
  @override
  List<Object?> get props => [playerCubit, inventoryCubit];
}

class GameStateCombat extends GameState {
  final CombatCubit combatCubit;
  const GameStateCombat({required this.combatCubit});
  @override
  List<Object?> get props => [combatCubit];
}

class GameStateInventory extends GameState {
  final InventoryCubit inventoryCubit;
  const GameStateInventory({required this.inventoryCubit});
  @override
  List<Object?> get props => [inventoryCubit];
}
