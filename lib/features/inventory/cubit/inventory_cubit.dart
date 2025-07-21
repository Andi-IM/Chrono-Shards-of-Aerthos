import 'package:bloc/bloc.dart';
import 'package:csoa/core/services/content_manager.dart';
import 'inventory_state.dart';

class InventoryCubit extends Cubit<InventoryState> {
  // ignore: unused_field
  final ContentManager _contentManager;

  InventoryCubit({required ContentManager contentManager})
    : _contentManager = contentManager,
      super(const InventoryState(items: {}, currency: 0));

  void addItem(String itemId, int quantity) {
    // Logika penambahan item ke inventaris.
  }

  void useItem(String itemId) {
    // Logika penggunaan item dari inventaris.
  }
}
