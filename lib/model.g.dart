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
          id: $checkedConvert('id', (v) => v as int),
          alarmEnabled: $checkedConvert('alarmEnabled', (v) => v as bool),
          ledEnabled: $checkedConvert('ledEnabled', (v) => v as bool),
          notificationEnabled:
              $checkedConvert('notificationEnabled', (v) => v as bool),
          latitude: $checkedConvert('latitude', (v) => (v as num).toDouble()),
          longitude: $checkedConvert('longitude', (v) => (v as num).toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'id': instance.id,
      'alarmEnabled': instance.alarmEnabled,
      'ledEnabled': instance.ledEnabled,
      'notificationEnabled': instance.notificationEnabled,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
