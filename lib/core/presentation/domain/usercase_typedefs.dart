import 'package:dartz/dartz.dart';

import 'ui_exceptions.dart';

/// All Usecases must implement this.
/// [Type] is the data type the usecase will
/// return on the Right() side when successfull.
/// [Params] is type of parameter the usecase
/// will use (usually a dataclass holding
/// all needed parameters
abstract class UseCase<Type, Params> {
  Future<Either<UIError, Type>>? call([Params? params]);

  /// Call this method to make sure that a Usecase that will use
  /// a Params is called with a non-null argument. Needed because
  /// the optional nature of `params` means it might be inadvertently
  /// forgotten when required.
  static void assertParamsRequired(dynamic p) {
    if (p == null) {
      throw Exception('Missing required params for Usecase');
    }
  }
}

// Usecase Right() type for whne it returns nothing
class VoidType {
  const VoidType();
}

/// Since Usecases must specify a params type, use this type
/// for when it actually takes no parameters
class NoParams {
  const NoParams();
}
