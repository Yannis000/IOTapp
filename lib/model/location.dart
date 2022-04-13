import 'package:json_annotation/json_annotation.dart';
part 'location.g.dart';

@JsonSerializable(checked: true, explicitToJson: true)
class Location {
  double latitude;
  double longitude;


  Location(
      {
        required this.latitude,
        required this.longitude
      });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}