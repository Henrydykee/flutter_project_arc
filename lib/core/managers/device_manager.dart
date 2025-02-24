import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';

// import '../../features/onboarding/data/models/registration_model.dart';
import '../../features/onboarding/data/models/registration_model.dart';
import '../di/di_config.dart';
import '../platform/storage/secured_storage.dart';
import '../platform/string_constants.dart';
import '../utils/logger.dart';
import '../utils/string_utils.dart';

class DeviceManager {
  static final DeviceManager instance = DeviceManager._internal();

  factory DeviceManager() => instance;
  RegistrationRequestModel? deviceModel;

  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  DeviceManager._internal() {
    _getId();
  }

  _getId() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    String ipAddress = "";

    if (Platform.isIOS) {
      deviceModel = await getiOSDeviceInfo(deviceInfoPlugin, ipAddress);
    } else if (Platform.isAndroid) {
      deviceModel = await getAndroidDeviceInfo(deviceInfoPlugin, ipAddress);
    }
  }

  Future<RegistrationRequestModel> getiOSDeviceInfo(DeviceInfoPlugin deviceInfoPlugin, String ipAddress) async {
    dynamic iosData = await deviceInfoPlugin.iosInfo;
    if (ipAddress.isEmpty) {
      ipAddress = (await _iOSGetIPAddress()) ?? '';
    }
    String deviceId =  await inject<SecuredStorage>().get(key: SecureStorageStrings.DEVICE_ID);
    if (StringUtils.isNullOrEmpty(deviceId)) {
      deviceId = iosData.identifierForVendor;
      await inject<SecuredStorage>().add(key: SecureStorageStrings.DEVICE_ID, value: deviceId);
    }
    return RegistrationRequestModel(
      osVersion: iosData.systemVersion,
      osType: AppString.IOS,
      ip: ipAddress,
      deviceId: deviceId,
      brand: iosData.model,
      model: iosData.localizedModel,
    );
  }

  Future<RegistrationRequestModel> getAndroidDeviceInfo(DeviceInfoPlugin deviceInfoPlugin, String ipAddress) async {
    dynamic androidData = await deviceInfoPlugin.androidInfo;
    String deviceId = await inject<SecuredStorage>().get(key: SecureStorageStrings.DEVICE_ID);
    if (StringUtils.isNullOrEmpty(deviceId)) {
      deviceId = androidData.androidId;
      await inject<SecuredStorage>().add(key: SecureStorageStrings.DEVICE_ID, value: deviceId);
    }

    return RegistrationRequestModel(
      osVersion: androidData.version.release,
      osType: AppString.ANDROID,
      ip: ipAddress,
      deviceId: deviceId,
      brand: androidData.brand,
      model: androidData.model,
    );
  }

  Future<String?> _iOSGetIPAddress() async {
    String? address;
    const platform = MethodChannel(MethodChannelNames.IPADDRESS);
    try {
      address = await platform.invokeMethod(ChannelMethods.GET_IPADDRESS);
    } on PlatformException catch (e) {
      logger.e("Error trying to get the device ip address $e");
      address;
    }
    return address;
  }
}
