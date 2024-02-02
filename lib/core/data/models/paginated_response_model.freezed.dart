// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedModel _$PaginatedModelFromJson(Map<String, dynamic> json) {
  return _PaginatedModel.fromJson(json);
}

/// @nodoc
mixin _$PaginatedModel {
  @JsonKey(name: 'page')
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'pages')
  int? get pages => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedModelCopyWith<PaginatedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedModelCopyWith<$Res> {
  factory $PaginatedModelCopyWith(
          PaginatedModel value, $Res Function(PaginatedModel) then) =
      _$PaginatedModelCopyWithImpl<$Res, PaginatedModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int? page,
      @JsonKey(name: 'pages') int? pages,
      @JsonKey(name: 'count') int? count});
}

/// @nodoc
class _$PaginatedModelCopyWithImpl<$Res, $Val extends PaginatedModel>
    implements $PaginatedModelCopyWith<$Res> {
  _$PaginatedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? pages = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginatedModelCopyWith<$Res>
    implements $PaginatedModelCopyWith<$Res> {
  factory _$$_PaginatedModelCopyWith(
          _$_PaginatedModel value, $Res Function(_$_PaginatedModel) then) =
      __$$_PaginatedModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int? page,
      @JsonKey(name: 'pages') int? pages,
      @JsonKey(name: 'count') int? count});
}

/// @nodoc
class __$$_PaginatedModelCopyWithImpl<$Res>
    extends _$PaginatedModelCopyWithImpl<$Res, _$_PaginatedModel>
    implements _$$_PaginatedModelCopyWith<$Res> {
  __$$_PaginatedModelCopyWithImpl(
      _$_PaginatedModel _value, $Res Function(_$_PaginatedModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? pages = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_PaginatedModel(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginatedModel implements _PaginatedModel {
  const _$_PaginatedModel(
      {@JsonKey(name: 'page') required this.page,
      @JsonKey(name: 'pages') required this.pages,
      @JsonKey(name: 'count') required this.count});

  factory _$_PaginatedModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaginatedModelFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int? page;
  @override
  @JsonKey(name: 'pages')
  final int? pages;
  @override
  @JsonKey(name: 'count')
  final int? count;

  @override
  String toString() {
    return 'PaginatedModel(page: $page, pages: $pages, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedModel &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, pages, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedModelCopyWith<_$_PaginatedModel> get copyWith =>
      __$$_PaginatedModelCopyWithImpl<_$_PaginatedModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginatedModelToJson(
      this,
    );
  }
}

abstract class _PaginatedModel implements PaginatedModel {
  const factory _PaginatedModel(
      {@JsonKey(name: 'page') required final int? page,
      @JsonKey(name: 'pages') required final int? pages,
      @JsonKey(name: 'count') required final int? count}) = _$_PaginatedModel;

  factory _PaginatedModel.fromJson(Map<String, dynamic> json) =
      _$_PaginatedModel.fromJson;

  @override
  @JsonKey(name: 'page')
  int? get page;
  @override
  @JsonKey(name: 'pages')
  int? get pages;
  @override
  @JsonKey(name: 'count')
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedModelCopyWith<_$_PaginatedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
