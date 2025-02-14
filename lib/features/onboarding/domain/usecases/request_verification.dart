/// Requires [NoParams]
// class RequestEmailVerification implements UseCase<bool, NoParams> {
//   final AuthenticationRepository _repo;
//
//   RequestEmailVerification(this._repo);
//
//   @override
//   Future<Either<UIError, bool>> call([params]) async {
//     try {
//       final user = await _repo.requestEmailVerification();
//       return Right(user);
//     } on CacheFailure catch (e, s) {
//       return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
//     }
//   }
// }
