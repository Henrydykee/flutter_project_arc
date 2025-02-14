
// ignore_for_file: unused_field

import '../../../../core/data/datasources/remote_datasource_base.dart';
import '../../../../core/data/network/network_service.dart';
import '../models/registration_model.dart';

abstract class OnboardingRemoteDataSource extends RemoteDataSource {
  Future<bool> updateFcm(RegistrationRequestModel model);
  Future<bool> unSubscribe(String deviceId);
  Future<bool> register(RegistrationRequestModel model);
 Future<String?> getUser();
}



class OnboardingRemoteDataSourceImpl implements OnboardingRemoteDataSource {
  final NetworkService _networkService;
  OnboardingRemoteDataSourceImpl(this._networkService);

  @override
  void dispose() {
  }

  @override
  Future<String?> getUser() async {
      // NetworkServiceResponse response = await _networkService.get(
      //   OnboardingEndpoints.getUser,
      // );
      // final data = handleNetworkResponse(response);
      // return ResponseModel<UserObject>(message: data["message"], status: data["status"], data: UserObject.fromJson(data["data"]))
      //     .data;
    return "";
  }

  @override
  Future<bool> register(RegistrationRequestModel model) {
    throw UnimplementedError();
  }

  @override
  Future<bool> unSubscribe(String deviceId) {
    throw UnimplementedError();
  }

  @override
  Future<bool> updateFcm(RegistrationRequestModel model) {
    throw UnimplementedError();
  }

}

