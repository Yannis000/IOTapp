// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Detection _$DetectionFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Detection',
      json,
      ($checkedConvert) {
        final val = Detection(
          isDetected: $checkedConvert('isDetected', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$DetectionToJson(Detection instance) => <String, dynamic>{
      'isDetected': instance.isDetected,
    };
