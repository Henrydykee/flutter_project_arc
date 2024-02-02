

import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../../../features/onboarding/presentation/state/onboarding_provider.dart';
import '../../di/di_config.dart';

class ProviderInitializer {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider<OnboardingProvider>(create: (_) => OnboardingProvider(inject())),
    // ChangeNotifierProvider<AuthenticationProvider>(create: (_) => AuthenticationProvider(inject())),
    // ChangeNotifierProvider<TransactionProvider>(create: (_) => TransactionProvider(inject())),
    // ChangeNotifierProvider<CardProvider>(create: (_) => CardProvider(inject())),
    // ChangeNotifierProvider<NotificationProvider>(create: (_) => NotificationProvider(inject())),
  ];
}
