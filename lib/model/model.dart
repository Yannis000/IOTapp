import 'package:json_annotation/json_annotation.dart';
part 'model.g.dart';

@JsonSerializable(checked: true, explicitToJson: true)
class Model {
  int id;
  bool alarmEnabled;
  bool ledEnabled;
  bool notificationEnabled;
  double latitude;
  double longitude;


  Model(
      {required this.id,
        required this.alarmEnabled,
        required this.ledEnabled,
        required this.notificationEnabled,
        required this.latitude,
        required this.longitude
      });

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);

  Map<String, dynamic> toJson() => _$ModelToJson(this);
}