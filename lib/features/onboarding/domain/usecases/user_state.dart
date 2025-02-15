
/// Requires [NoParams]
// class UserState implements UseCase<UserModel, NoParams> {
//   final OnboardingRepository _repo;
//
//   UserState(this._repo);
//
//   @override
//   Future<Either<UIError, UserModel>> call([params]) async {
//     try {
//       final user = await _repo.getLocalUser();
//
//       return Right(user);
//     } on CacheFailure catch (e, s) {
//       return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
//     }
//   }
// }
