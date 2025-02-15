
import 'package:new_project/core/platform/storage/secured_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../utils/logger.dart';


class SecuredStorageImpl extends SecuredStorage {
  static final SecuredStorageImpl _singleton =
      SecuredStorageImpl._internal();

  var securedStorage;

  factory SecuredStorageImpl() => _singleton;

  SecuredStorageImpl._internal() {
    securedStorage = const FlutterSecureStorage();
  }

  @override
  Future get({String? key}) async {
    assert(key != null);
    dynamic value;
    try {
      value = await securedStorage.read(key: key);
    } catch (e) {
      logger.e("Error retrieving data from secured storage");
    }
    return value;
  }

  @override
  Future add({key, value}) async {
    try {
      await securedStorage.write(key: key, value: value);
    } catch (e) {
      logger.e("Error persisting data to secured storage");
    }
  }

  @override
  Future delete({key}) async {
    await securedStorage.delete(key: key);
  }

  @override
  Future deleteAll() async {
    await securedStorage.deleteAll();
  }
}
