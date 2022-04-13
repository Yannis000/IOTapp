import 'package:json_annotation/json_annotation.dart';
part 'parameters.g.dart';

@JsonSerializable(checked: true, explicitToJson: true)
class Parameters {
  bool alarmEnabled;
  bool ledEnabled;
  bool notificationEnabled;


  Parameters(
      {
        required this.alarmEnabled,
        required this.ledEnabled,
        required this.notificationEnabled,
      });

  factory Parameters.fromJson(Map<String, dynamic> json) => _$ParametersFromJson(json);

  Map<String, dynamic> toJson() => _$ParametersToJson(this);
}