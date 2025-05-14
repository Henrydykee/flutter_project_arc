import '../../../../core/di/di_config.dart';
import '../../data/datasources/onboard_remote_datasource.dart';
import '../../data/repositories/onboarding_repository_impl.dart';
import '../repositories/onboarding_repository.dart';
import '../usecases/get_user.dart';
import '../usecases/onboarding_usecase.dart';

Future<void> onboardingInjector() async {
  inject.registerLazySingleton<OnboardingRemoteDataSource>(() => OnboardingRemoteDataSourceImpl(inject()));
  inject.registerLazySingleton<OnboardingRepository>(() => OnboardingRepositoryImpl(inject()));
  inject.registerLazySingleton<GetUser>(() => GetUser(inject()));
  inject.registerLazySingleton<OnboardingUseCases>(
      () => OnboardingUseCases(
          inject(),
      )
  );
}
