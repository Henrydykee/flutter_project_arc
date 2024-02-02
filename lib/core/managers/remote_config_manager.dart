

import 'dart:ffi';

import 'package:firebase_remote_config/firebase_remote_config.dart';

import '../platform/env_config.dart';
import '../utils/logger.dart';

class RemoteConfigManager {
  static final RemoteConfigManager instance = new RemoteConfigManager._internal();
  factory RemoteConfigManager() => instance;

  FirebaseRemoteConfig? remoteConfig;

  String get requiredVersion => remoteConfig!.getString(_getRemoteConfigName("required_version"));
  String get ad1_url => remoteConfig!.getString(_getRemoteConfigName("ad1_url"));
  String get ad2_url => remoteConfig!.getString(_getRemoteConfigName("ad2_url"));
  bool get enable_ad1 => remoteConfig!.getBool(_getRemoteConfigName("enable_ad1"));
  bool get enable_ad2 => remoteConfig!.getBool(_getRemoteConfigName("enable_ad2"));
  String get ad1_link => remoteConfig!.getString(_getRemoteConfigName("ad1_link"));
  String get ad2_link => remoteConfig!.getString(_getRemoteConfigName("ad2_link"));


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