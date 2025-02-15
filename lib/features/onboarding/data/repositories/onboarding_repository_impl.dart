import '../../domain/repositories/onboarding_repository.dart';
import '../datasources/onboard_remote_datasource.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  // ignore: unused_field
  final OnboardingRemoteDataSource _remoteDataSource;

  OnboardingRepositoryImpl(
    this._remoteDataSource,
  ) {}

  @override
  Future<String> getUser() async {
   // UserObject user = await guardedApiCall<UserObject>(() => _remoteDataSource.getUser(), source: "getUser");
   //  if (user != null) {
   //    inject<SharedPreferences>().setString("fullname", "${user.firstName} ${user.lastName}");
   //    inject<LocalStorage>().setItem("User", jsonEncode(user.toJson()));
   //  }
   //  return user;
    return "";
  }

  @override
  Future<bool> register(String token) {

    throw UnimplementedError();
  }

  @override
  Future<bool> unSubscribe(String deviceId) {
    throw UnimplementedError();
  }

  @override
  Future<bool> updateFcm(String token) {
    throw UnimplementedError();
  }
}
