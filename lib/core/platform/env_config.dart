

import '../data/enums/type_enums.dart';

class EnvVar {
  EnvVar({
    required this.baseUrl,
  });

  final String baseUrl;
}

class EnvConfig {
  final Env? flavor;
  final EnvVar? values;
  static EnvConfig? _mInstance;

  EnvConfig._internal(this.flavor, this.values);

  factory EnvConfig({required Env flavor, required EnvVar? values}) =>
      _mInstance = EnvConfig._internal(flavor, values);

  static EnvConfig? get instance => _mInstance;

  static bool isProduction() => _mInstance?.flavor == Env.PRODUCTION;
  static bool isStage() => _mInstance?.flavor == Env.STAGING;
  static bool get isStageEnv => String.fromEnvironment('ENV') == "STAGING";
}
