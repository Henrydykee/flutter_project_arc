import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_model.g.dart';
part 'registration_model.freezed.dart';

@freezed
class RegistrationRequestModel with _$RegistrationRequestModel {
  const factory RegistrationRequestModel({
    String? device_id,
    String? device_fcm,
    String? ip,
    String? os_type,
    String? os_version,
    String? brand,
    String? model,
  }) = _RegistrationRequestModel;

  factory RegistrationRequestModel.fromJson(Map json) =>
      _$RegistrationRequestModelFromJson(
          Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
