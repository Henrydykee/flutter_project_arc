import 'package:dart_mappable/dart_mappable.dart';

part 'registration_model.mapper.dart';

@MappableClass()
class RegistrationRequestModel {
  final String? deviceId;
  final String? deviceFcm;
  final String? ip;
  final String? osType;
  final String? osVersion;
  final String? brand;
  final String? model;

  const RegistrationRequestModel({
    this.deviceId,
    this.deviceFcm,
    this.ip,
    this.osType,
    this.osVersion,
    this.brand,
    this.model,
  });
}
