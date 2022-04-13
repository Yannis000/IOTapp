import 'dart:collection';

import 'package:firebase_database/firebase_database.dart';
import 'package:iot/model/detection.dart';
import 'package:iot/model/location.dart';
import 'package:iot/model/parameters.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable(checked: true, explicitToJson: true)
class Model {
  String? name;
  Parameters parameters;
  List<String>? history;
  Detection detection;
  Location location;


  Model(
      {this.name,
        this.history,
        required this.detection,
        required this.parameters,
        required this.location,
      });

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);

  Map<String, dynamic> toJson() => _$ModelToJson(this);

  Model.fromSnapshot(DataSnapshot snapshot) :
        name = snapshot.key,
        history = snapshot.value["history"],
        detection = snapshot.value["detection"],
        location = snapshot.value["location"],
        parameters = snapshot.value["parameters"];
}