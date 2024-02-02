// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResponseModel<T> {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  T? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponseModelCopyWith<T, ResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<T, $Res> {
  factory $ResponseModelCopyWith(
          ResponseModel<T> value, $Res Function(ResponseModel<T>) then) =
      _$ResponseModelCopyWithImpl<T, $Res, ResponseModel<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') T? data});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<T, $Res, $Val extends ResponseModel<T>>
    implements $ResponseModelCopyWith<T, $Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseModelCopyWith<T, $Res>
    implements $ResponseModelCopyWith<T, $Res> {
  factory _$$_ResponseModelCopyWith(
          _$_ResponseModel<T> value, $Res Function(_$_ResponseModel<T>) then) =
      __$$_ResponseModelCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') T? data});
}

/// @nodoc
class __$$_ResponseModelCopyWithImpl<T, $Res>
    extends _$ResponseModelCopyWithImpl<T, $Res, _$_ResponseModel<T>>
    implements _$$_ResponseModelCopyWith<T, $Res> {
  __$$_ResponseModelCopyWithImpl(
      _$_ResponseModel<T> _value, $Res Function(_$_ResponseModel<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ResponseModel<T>(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_ResponseModel<T> implements _ResponseModel<T> {
  const _$_ResponseModel(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data});

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final T? data;

  @override
  String toString() {
    return 'ResponseModel<$T>(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseModel<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseModelCopyWith<T, _$_ResponseModel<T>> get copyWith =>
      __$$_ResponseModelCopyWithImpl<T, _$_ResponseModel<T>>(this, _$identity);
}

abstract class _ResponseModel<T> implements ResponseModel<T> {
  const factory _ResponseModel(
      {@JsonKey(name: 'status') required final String? status,
      @JsonKey(name: 'message') required final String? message,
      @JsonKey(name: 'data') required final T? data}) = _$_ResponseModel<T>;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  T? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseModelCopyWith<T, _$_ResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
