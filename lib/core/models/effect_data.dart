import 'package:json_annotation/json_annotation.dart';

part 'effect_data.g.dart';

@JsonSerializable()
class EffectData {
  final String id;
  final int magnitude;
  final String description;

  const EffectData({
    required this.id,
    required this.magnitude,
    required this.description,
  });

  factory EffectData.fromJson(Map<String, dynamic> json) =>
      _$EffectDataFromJson(json);
  Map<String, dynamic> toJson() => _$EffectDataToJson(this);
}
