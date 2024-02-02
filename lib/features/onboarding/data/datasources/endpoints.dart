class OnboardingEndpoints {
  static String updateFcm(String deviceId) => "user/device/$deviceId";

  static String unSubscribe(String deviceId) => "user/device/deactivate/$deviceId";
  static String register = "user/device";
  static String getUser = "user/get-user";
}
