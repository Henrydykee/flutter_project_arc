// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'registration_model.dart';

class RegistrationRequestModelMapper
    extends ClassMapperBase<RegistrationRequestModel> {
  RegistrationRequestModelMapper._();

  static RegistrationRequestModelMapper? _instance;
  static RegistrationRequestModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = RegistrationRequestModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegistrationRequestModel';

  static String? _$deviceId(RegistrationRequestModel v) => v.deviceId;
  static const Field<RegistrationRequestModel, String> _f$deviceId =
      Field('deviceId', _$deviceId, opt: true);
  static String? _$deviceFcm(RegistrationRequestModel v) => v.deviceFcm;
  static const Field<RegistrationRequestModel, String> _f$deviceFcm =
      Field('deviceFcm', _$deviceFcm, opt: true);
  static String? _$ip(RegistrationRequestModel v) => v.ip;
  static const Field<RegistrationRequestModel, String> _f$ip =
      Field('ip', _$ip, opt: true);
  static String? _$osType(RegistrationRequestModel v) => v.osType;
  static const Field<RegistrationRequestModel, String> _f$osType =
      Field('osType', _$osType, opt: true);
  static String? _$osVersion(RegistrationRequestModel v) => v.osVersion;
  static const Field<RegistrationRequestModel, String> _f$osVersion =
      Field('osVersion', _$osVersion, opt: true);
  static String? _$brand(RegistrationRequestModel v) => v.brand;
  static const Field<RegistrationRequestModel, String> _f$brand =
      Field('brand', _$brand, opt: true);
  static String? _$model(RegistrationRequestModel v) => v.model;
  static const Field<RegistrationRequestModel, String> _f$model =
      Field('model', _$model, opt: true);

  @override
  final MappableFields<RegistrationRequestModel> fields = const {
    #deviceId: _f$deviceId,
    #deviceFcm: _f$deviceFcm,
    #ip: _f$ip,
    #osType: _f$osType,
    #osVersion: _f$osVersion,
    #brand: _f$brand,
    #model: _f$model,
  };

  static RegistrationRequestModel _instantiate(DecodingData data) {
    return RegistrationRequestModel(
        deviceId: data.dec(_f$deviceId),
        deviceFcm: data.dec(_f$deviceFcm),
        ip: data.dec(_f$ip),
        osType: data.dec(_f$osType),
        osVersion: data.dec(_f$osVersion),
        brand: data.dec(_f$brand),
        model: data.dec(_f$model));
  }

  @override
  final Function instantiate = _instantiate;

  static RegistrationRequestModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RegistrationRequestModel>(map);
  }

  static RegistrationRequestModel fromJson(String json) {
    return ensureInitialized().decodeJson<RegistrationRequestModel>(json);
  }
}

mixin RegistrationRequestModelMappable {
  String toJson() {
    return RegistrationRequestModelMapper.ensureInitialized()
        .encodeJson<RegistrationRequestModel>(this as RegistrationRequestModel);
  }

  Map<String, dynamic> toMap() {
    return RegistrationRequestModelMapper.ensureInitialized()
        .encodeMap<RegistrationRequestModel>(this as RegistrationRequestModel);
  }

  RegistrationRequestModelCopyWith<RegistrationRequestModel,
          RegistrationRequestModel, RegistrationRequestModel>
      get copyWith => _RegistrationRequestModelCopyWithImpl(
          this as RegistrationRequestModel, $identity, $identity);
  @override
  String toString() {
    return RegistrationRequestModelMapper.ensureInitialized()
        .stringifyValue(this as RegistrationRequestModel);
  }

  @override
  bool operator ==(Object other) {
    return RegistrationRequestModelMapper.ensureInitialized()
        .equalsValue(this as RegistrationRequestModel, other);
  }

  @override
  int get hashCode {
    return RegistrationRequestModelMapper.ensureInitialized()
        .hashValue(this as RegistrationRequestModel);
  }
}

extension RegistrationRequestModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegistrationRequestModel, $Out> {
  RegistrationRequestModelCopyWith<$R, RegistrationRequestModel, $Out>
      get $asRegistrationRequestModel => $base
          .as((v, t, t2) => _RegistrationRequestModelCopyWithImpl(v, t, t2));
}

abstract class RegistrationRequestModelCopyWith<
    $R,
    $In extends RegistrationRequestModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? deviceId,
      String? deviceFcm,
      String? ip,
      String? osType,
      String? osVersion,
      String? brand,
      String? model});
  RegistrationRequestModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RegistrationRequestModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegistrationRequestModel, $Out>
    implements
        RegistrationRequestModelCopyWith<$R, RegistrationRequestModel, $Out> {
  _RegistrationRequestModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegistrationRequestModel> $mapper =
      RegistrationRequestModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? deviceId = $none,
          Object? deviceFcm = $none,
          Object? ip = $none,
          Object? osType = $none,
          Object? osVersion = $none,
          Object? brand = $none,
          Object? model = $none}) =>
      $apply(FieldCopyWithData({
        if (deviceId != $none) #deviceId: deviceId,
        if (deviceFcm != $none) #deviceFcm: deviceFcm,
        if (ip != $none) #ip: ip,
        if (osType != $none) #osType: osType,
        if (osVersion != $none) #osVersion: osVersion,
        if (brand != $none) #brand: brand,
        if (model != $none) #model: model
      }));
  @override
  RegistrationRequestModel $make(CopyWithData data) => RegistrationRequestModel(
      deviceId: data.get(#deviceId, or: $value.deviceId),
      deviceFcm: data.get(#deviceFcm, or: $value.deviceFcm),
      ip: data.get(#ip, or: $value.ip),
      osType: data.get(#osType, or: $value.osType),
      osVersion: data.get(#osVersion, or: $value.osVersion),
      brand: data.get(#brand, or: $value.brand),
      model: data.get(#model, or: $value.model));

  @override
  RegistrationRequestModelCopyWith<$R2, RegistrationRequestModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RegistrationRequestModelCopyWithImpl($value, $cast, t);
}
