import 'package:dartz/dartz.dart';

import '../../../../core/data/database/db_exceptions.dart';
import '../../../../core/presentation/domain/ui_exceptions.dart';
import '../../../../core/presentation/domain/usercase_typedefs.dart';
import '../../../../core/utils/error_helpers.dart';
import '../repositories/onboarding_repository.dart';

class GetUser implements UseCase< String, NoParams> {
  final OnboardingRepository _repo;

  GetUser(this._repo);

  @override
  Future<Either<UIError, String>> call([params]) async {

    try {
      final user = await _repo.getUser();
      return Right(user);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}