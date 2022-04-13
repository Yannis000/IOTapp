// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parameters _$ParametersFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Parameters',
      json,
      ($checkedConvert) {
        final val = Parameters(
          alarmEnabled: $checkedConvert('alarmEnabled', (v) => v as bool),
          ledEnabled: $checkedConvert('ledEnabled', (v) => v as bool),
          notificationEnabled:
              $checkedConvert('notificationEnabled', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$ParametersToJson(Parameters instance) =>
    <String, dynamic>{
      'alarmEnabled': instance.alarmEnabled,
      'ledEnabled': instance.ledEnabled,
      'notificationEnabled': instance.notificationEnabled,
    };
