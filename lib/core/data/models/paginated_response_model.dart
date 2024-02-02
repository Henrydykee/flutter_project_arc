import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_response_model.g.dart';
part 'paginated_response_model.freezed.dart';

@freezed
class PaginatedModel with _$PaginatedModel {
  const factory PaginatedModel({
    @JsonKey(name: 'page') required int? page,
    @JsonKey(name: 'pages') required int? pages,
    @JsonKey(name: 'count') required int? count,
  }) = _PaginatedModel;

  factory PaginatedModel.fromJson(Map json) => _$PaginatedModelFromJson(
      Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}