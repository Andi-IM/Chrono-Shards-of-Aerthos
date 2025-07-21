import 'package:json_annotation/json_annotation.dart';

part 'world_state.g.dart';

@JsonSerializable()
class WorldState {
  final Map<String, bool> flags;
  final Map<String, int> pityCounters;

  const WorldState({required this.flags, required this.pityCounters});

  factory WorldState.fromJson(Map<String, dynamic> json) =>
      _$WorldStateFromJson(json);
  Map<String, dynamic> toJson() => _$WorldStateToJson(this);
}
