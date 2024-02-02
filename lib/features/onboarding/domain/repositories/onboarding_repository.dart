


abstract class OnboardingRepository {
  // Future<UserModel> getLocalUser();
  Future<String> getUser();
  Future<bool> updateFcm(String token);
  Future<bool> register(String token);
  Future<bool> unSubscribe(String deviceId);
}
