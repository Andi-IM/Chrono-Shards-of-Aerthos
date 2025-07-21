// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveData _$SaveDataFromJson(Map<String, dynamic> json) => SaveData(
  gameVersion: json['gameVersion'] as String,
  saveTimestamp: json['saveTimestamp'] as String,
  playerState: PlayerState.fromJson(
    json['playerState'] as Map<String, dynamic>,
  ),
  worldState: WorldState.fromJson(json['worldState'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SaveDataToJson(SaveData instance) => <String, dynamic>{
  'gameVersion': instance.gameVersion,
  'saveTimestamp': instance.saveTimestamp,
  'playerState': instance.playerState.toJson(),
  'worldState': instance.worldState.toJson(),
};
