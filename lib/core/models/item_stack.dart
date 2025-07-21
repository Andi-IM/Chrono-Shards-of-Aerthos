import 'package:json_annotation/json_annotation.dart';

part 'item_stack.g.dart';

@JsonSerializable()
class ItemStack {
  final String id;
  final int quantity;

  const ItemStack({required this.id, required this.quantity});

  factory ItemStack.fromJson(Map<String, dynamic> json) =>
      _$ItemStackFromJson(json);
  Map<String, dynamic> toJson() => _$ItemStackToJson(this);
}
