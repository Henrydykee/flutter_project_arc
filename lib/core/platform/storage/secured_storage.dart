abstract class SecuredStorage {
  Future get({String key});
  Future add({key, value});
  Future delete({key});
  Future deleteAll();
}


