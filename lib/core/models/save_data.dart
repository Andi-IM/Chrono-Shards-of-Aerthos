import 'package:csoa/core/models/player_state.dart';
import 'package:csoa/core/models/world_state.dart';
import 'package:json_annotation/json_annotation.dart';

part 'save_data.g.dart';

@JsonSerializable(explicitToJson: true)
class SaveData {
  final String gameVersion;
  final String saveTimestamp;
  final PlayerState playerState;
  final WorldState worldState;

  const SaveData({
    required this.gameVersion,
    required this.saveTimestamp,
    required this.playerState,
    required this.worldState,
  });

  factory SaveData.fromJson(Map<String, dynamic> json) =>
      _$SaveDataFromJson(json);
  Map<String, dynamic> toJson() => _$SaveDataToJson(this);
}
