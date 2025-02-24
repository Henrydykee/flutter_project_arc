import 'package:firebase_remote_config/firebase_remote_config.dart';
import '../platform/env_config.dart';
import '../utils/logger.dart';

class RemoteConfigManager {
  static final RemoteConfigManager instance = new RemoteConfigManager._internal();
  factory RemoteConfigManager() => instance;

  FirebaseRemoteConfig? remoteConfig;

  String get requiredVersion => remoteConfig!.getString(_getRemoteConfigName("required_version"));


  RemoteConfigManager._internal() {
    _setup();
  }

  _getRemoteConfigName(String name) {
    return EnvConfig.isStage() ? "${name}_stage" : name;
  }

  void _setup() async {
    remoteConfig = await  FirebaseRemoteConfig.instance;
    try {
      int hour = 3;
      if (EnvConfig.isStage()  || EnvConfig.isProduction() ) {
        RemoteConfigSettings remoteConfigSettings = RemoteConfigSettings( fetchTimeout: Duration(hours: hour), minimumFetchInterval: Duration(seconds: 1));
        remoteConfig?.setConfigSettings(remoteConfigSettings);
      }
      await Future.delayed(const Duration(seconds: 1));
       await remoteConfig?.fetchAndActivate();
    } catch (e) {
      logger.e(e);
    }
  }
}