// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationRequestModel _$$_RegistrationRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_RegistrationRequestModel(
      device_id: json['device_id'] as String?,
      device_fcm: json['device_fcm'] as String?,
      ip: json['ip'] as String?,
      os_type: json['os_type'] as String?,
      os_version: json['os_version'] as String?,
      brand: json['brand'] as String?,
      model: json['model'] as String?,
    );

Map<String, dynamic> _$$_RegistrationRequestModelToJson(
        _$_RegistrationRequestModel instance) =>
    <String, dynamic>{
      'device_id': instance.device_id,
      'device_fcm': instance.device_fcm,
      'ip': instance.ip,
      'os_type': instance.os_type,
      'os_version': instance.os_version,
      'brand': instance.brand,
      'model': instance.model,
    };
