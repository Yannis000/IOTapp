import 'package:json_annotation/json_annotation.dart';
part 'detection.g.dart';

@JsonSerializable(checked: true, explicitToJson: true)
class Detection {
  bool isDetected;

  Detection(
      {
        required this.isDetected
      });

  factory Detection.fromJson(Map<String, dynamic> json) => _$DetectionFromJson(json);

  Map<String, dynamic> toJson() => _$DetectionToJson(this);
}