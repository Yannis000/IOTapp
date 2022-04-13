// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Model',
      json,
      ($checkedConvert) {
        final val = Model(
          name: $checkedConvert('name', (v) => v as String?),
          history: $checkedConvert('history',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          detection: $checkedConvert('detection',
              (v) => Detection.fromJson(v as Map<String, dynamic>)),
          parameters: $checkedConvert('parameters',
              (v) => Parameters.fromJson(v as Map<String, dynamic>)),
          location: $checkedConvert(
              'location', (v) => Location.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'name': instance.name,
      'parameters': instance.parameters.toJson(),
      'history': instance.history,
      'detection': instance.detection.toJson(),
      'location': instance.location.toJson(),
    };
