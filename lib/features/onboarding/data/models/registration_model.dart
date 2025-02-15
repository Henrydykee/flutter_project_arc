import 'package:freezed_annotation/freezed_annotation.dart';


@freezed
class RegistrationRequestModel {
  final String? device_id;
  final String? device_fcm;
  final String? ip;
  final String? os_type;
  final String? os_version;
  final String? brand;
  final String? model;

  const RegistrationRequestModel({
    this.device_id,
    this.device_fcm,
    this.ip,
    this.os_type,
    this.os_version,
    this.brand,
    this.model,
  });

  factory RegistrationRequestModel.fromJson(Map<String, dynamic> json) {
    return RegistrationRequestModel(
      device_id: json['device_id'] as String?,
      device_fcm: json['device_fcm'] as String?,
      ip: json['ip'] as String?,
      os_type: json['os_type'] as String?,
      os_version: json['os_version'] as String?,
      brand: json['brand'] as String?,
      model: json['model'] as String?,
    );
  }
}

