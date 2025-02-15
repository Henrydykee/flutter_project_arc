import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';
import 'core/data/enums/type_enums.dart';
import 'core/di/di_config.dart';
import 'core/platform/env_config.dart';
import 'package:new_project/core/platform/string_constants.dart' as Constants;

import 'core/presentation/state/provider_initializer.dart';
import 'features/onboarding/presentation/pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  EnvConfig(
      flavor: Env.STAGING,
      values: EnvVar(
        baseUrl: Constants.STAGING_BASE_URL,
      ));
  // await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await initInjectors();
  runApp(newproject());
}

class newproject extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MultiProvider(
        providers: ProviderInitializer.providers,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
          },
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                fontFamily: 'Syne',
                useMaterial3: false,
                appBarTheme: const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light)
            ),
            home: SplashScreen(),
          ),
        ),
      ),
    );
  }
}

