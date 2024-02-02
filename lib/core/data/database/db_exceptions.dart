abstract class Failure {
  final String message;
  final dynamic data;
  const Failure(this.message, {this.data});

  @override
  String toString() => message;
}

class DBFailure extends Failure {
  DBFailure(String message) : super(message);
}

class NetworkFailure extends Failure {
  NetworkFailure(String message) : super(message);
}

class CacheFailure {
  final String message;
  CacheFailure(this.message);
}
