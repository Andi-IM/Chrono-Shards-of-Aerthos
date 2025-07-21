// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_stack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemStack _$ItemStackFromJson(Map<String, dynamic> json) => ItemStack(
  id: json['id'] as String,
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$ItemStackToJson(ItemStack instance) => <String, dynamic>{
  'id': instance.id,
  'quantity': instance.quantity,
};
