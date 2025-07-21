// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'world_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorldState _$WorldStateFromJson(Map<String, dynamic> json) => WorldState(
  flags: Map<String, bool>.from(json['flags'] as Map),
  pityCounters: Map<String, int>.from(json['pityCounters'] as Map),
);

Map<String, dynamic> _$WorldStateToJson(WorldState instance) =>
    <String, dynamic>{
      'flags': instance.flags,
      'pityCounters': instance.pityCounters,
    };
