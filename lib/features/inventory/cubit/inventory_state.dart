import 'package:equatable/equatable.dart';

class InventoryState extends Equatable {
  final Map<String, int> items; // eq: {'potion_id': 5}
  final int currency;

  const InventoryState({required this.items, required this.currency});

  @override
  List<Object> get props => [items, currency];
}
