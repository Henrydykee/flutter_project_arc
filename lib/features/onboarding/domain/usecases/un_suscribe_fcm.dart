// class UnsubscribeFcm implements UseCase<bool, String> {
//   final OnboardingRepository _repo;
//
//   UnsubscribeFcm(this._repo);
//
//   @override
//   Future<Either<UIError, bool>> call([params]) async {
//     UseCase.assertParamsRequired(params);
//     try {
//       final status = await _repo.unSubscribe(params!);
//       return Right(status);
//     } on NetworkFailure catch (e, s) {
//       return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
//     }
//   }
// }
