import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.g.dart';
part 'response_model.freezed.dart';

@JsonSerializable(genericArgumentFactories: true)
@freezed
class ResponseModel<T> with _$ResponseModel<T> {
  const factory ResponseModel({
    @JsonKey(name: 'status') required String? status,
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required T? data,
  }) = _ResponseModel<T>;
}
