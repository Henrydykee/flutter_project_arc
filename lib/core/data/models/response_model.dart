

class ResponseModel<T> {
  final String? status;
  final String? message;
  final T? data;

  const ResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  /// The [fromJsonT] function converts the JSON representation of T into an instance of T.
  factory ResponseModel.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) {
    return ResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null ? null : fromJsonT(json['data']),
    );
  }
}

