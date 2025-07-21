// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'effect_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EffectData _$EffectDataFromJson(Map<String, dynamic> json) => EffectData(
  id: json['id'] as String,
  magnitude: (json['magnitude'] as num).toInt(),
  description: json['description'] as String,
);

Map<String, dynamic> _$EffectDataToJson(EffectData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'magnitude': instance.magnitude,
      'description': instance.description,
    };
