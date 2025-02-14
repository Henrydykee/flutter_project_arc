import 'package:flutter/material.dart';
import '../../../../core/presentation/state/provider_state.dart';
import '../../domain/usecases/onboarding_usecase.dart';

class OnboardingProvider with ChangeNotifier, ProviderState {
  OnboardingUseCases useCases;

  OnboardingProvider(this.useCases) {}

  void _setState({loading = false, isReady = false, hasError = false, errorMsg = '', payload}) {
    update(loading: loading, hasErr: hasError, errorMsg: errorMsg, ready: isReady, statePayload: payload);
    notifyListeners();
  }

  Future getUser() async {
    _setState(loading: true, payload: null);
    notifyListeners();
    // Either<UIError, UserObject>? response = await useCases.getUser();
    // response?.fold((l) {
    //   _setState(loading: false, hasError: true, errorMsg: l.message, payload: null);
    //   notifyListeners();
    // }, (r) {
    //   print(r.toString());
    //   _setState(loading: false, hasError: false, errorMsg: r.toString(), payload: r.toString());
    //   notifyListeners();
    // });
  }
}
