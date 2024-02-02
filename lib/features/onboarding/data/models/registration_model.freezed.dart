// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationRequestModel _$RegistrationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RegistrationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RegistrationRequestModel {
  String? get device_id => throw _privateConstructorUsedError;
  String? get device_fcm => throw _privateConstructorUsedError;
  String? get ip => throw _privateConstructorUsedError;
  String? get os_type => throw _privateConstructorUsedError;
  String? get os_version => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationRequestModelCopyWith<RegistrationRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationRequestModelCopyWith<$Res> {
  factory $RegistrationRequestModelCopyWith(RegistrationRequestModel value,
          $Res Function(RegistrationRequestModel) then) =
      _$RegistrationRequestModelCopyWithImpl<$Res, RegistrationRequestModel>;
  @useResult
  $Res call(
      {String? device_id,
      String? device_fcm,
      String? ip,
      String? os_type,
      String? os_version,
      String? brand,
      String? model});
}

/// @nodoc
class _$RegistrationRequestModelCopyWithImpl<$Res,
        $Val extends RegistrationRequestModel>
    implements $RegistrationRequestModelCopyWith<$Res> {
  _$RegistrationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device_id = freezed,
    Object? device_fcm = freezed,
    Object? ip = freezed,
    Object? os_type = freezed,
    Object? os_version = freezed,
    Object? brand = freezed,
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      device_id: freezed == device_id
          ? _value.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as String?,
      device_fcm: freezed == device_fcm
          ? _value.device_fcm
          : device_fcm // ignore: cast_nullable_to_non_nullable
              as String?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      os_type: freezed == os_type
          ? _value.os_type
          : os_type // ignore: cast_nullable_to_non_nullable
              as String?,
      os_version: freezed == os_version
          ? _value.os_version
          : os_version // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationRequestModelCopyWith<$Res>
    implements $RegistrationRequestModelCopyWith<$Res> {
  factory _$$_RegistrationRequestModelCopyWith(
          _$_RegistrationRequestModel value,
          $Res Function(_$_RegistrationRequestModel) then) =
      __$$_RegistrationRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? device_id,
      String? device_fcm,
      String? ip,
      String? os_type,
      String? os_version,
      String? brand,
      String? model});
}

/// @nodoc
class __$$_RegistrationRequestModelCopyWithImpl<$Res>
    extends _$RegistrationRequestModelCopyWithImpl<$Res,
        _$_RegistrationRequestModel>
    implements _$$_RegistrationRequestModelCopyWith<$Res> {
  __$$_RegistrationRequestModelCopyWithImpl(_$_RegistrationRequestModel _value,
      $Res Function(_$_RegistrationRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device_id = freezed,
    Object? device_fcm = freezed,
    Object? ip = freezed,
    Object? os_type = freezed,
    Object? os_version = freezed,
    Object? brand = freezed,
    Object? model = freezed,
  }) {
    return _then(_$_RegistrationRequestModel(
      device_id: freezed == device_id
          ? _value.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as String?,
      device_fcm: freezed == device_fcm
          ? _value.device_fcm
          : device_fcm // ignore: cast_nullable_to_non_nullable
              as String?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      os_type: freezed == os_type
          ? _value.os_type
          : os_type // ignore: cast_nullable_to_non_nullable
              as String?,
      os_version: freezed == os_version
          ? _value.os_version
          : os_version // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationRequestModel implements _RegistrationRequestModel {
  const _$_RegistrationRequestModel(
      {this.device_id,
      this.device_fcm,
      this.ip,
      this.os_type,
      this.os_version,
      this.brand,
      this.model});

  factory _$_RegistrationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationRequestModelFromJson(json);

  @override
  final String? device_id;
  @override
  final String? device_fcm;
  @override
  final String? ip;
  @override
  final String? os_type;
  @override
  final String? os_version;
  @override
  final String? brand;
  @override
  final String? model;

  @override
  String toString() {
    return 'RegistrationRequestModel(device_id: $device_id, device_fcm: $device_fcm, ip: $ip, os_type: $os_type, os_version: $os_version, brand: $brand, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationRequestModel &&
            (identical(other.device_id, device_id) ||
                other.device_id == device_id) &&
            (identical(other.device_fcm, device_fcm) ||
                other.device_fcm == device_fcm) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.os_type, os_type) || other.os_type == os_type) &&
            (identical(other.os_version, os_version) ||
                other.os_version == os_version) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, device_id, device_fcm, ip,
      os_type, os_version, brand, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationRequestModelCopyWith<_$_RegistrationRequestModel>
      get copyWith => __$$_RegistrationRequestModelCopyWithImpl<
          _$_RegistrationRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationRequestModelToJson(
      this,
    );
  }
}

abstract class _RegistrationRequestModel implements RegistrationRequestModel {
  const factory _RegistrationRequestModel(
      {final String? device_id,
      final String? device_fcm,
      final String? ip,
      final String? os_type,
      final String? os_version,
      final String? brand,
      final String? model}) = _$_RegistrationRequestModel;

  factory _RegistrationRequestModel.fromJson(Map<String, dynamic> json) =
      _$_RegistrationRequestModel.fromJson;

  @override
  String? get device_id;
  @override
  String? get device_fcm;
  @override
  String? get ip;
  @override
  String? get os_type;
  @override
  String? get os_version;
  @override
  String? get brand;
  @override
  String? get model;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationRequestModelCopyWith<_$_RegistrationRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
