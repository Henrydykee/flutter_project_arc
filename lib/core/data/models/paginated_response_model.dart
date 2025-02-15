import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class PaginatedModel {
  final int? page;
  final int? pages;
  final int? count;

  const PaginatedModel({
    required this.page,
    required this.pages,
    required this.count,
  });

  factory PaginatedModel.fromJson(Map<String, dynamic> json) {
    return PaginatedModel(
      page: json['page'] as int?,
      pages: json['pages'] as int?,
      count: json['count'] as int?,
    );
  }
}
