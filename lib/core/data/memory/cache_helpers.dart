import 'dart:async';


class InMemory {
  static final InMemory instance = new InMemory._internal();
  bool hasSession = false;
  bool isFirstInstance = false;
  bool requiresPin = false;
  String? oldFcmToken;
  String? uploadedAddress;
  bool? selfActivated;
  bool? two_factor_enabled;
  String? username;

  StreamController<Map<String, dynamic>> messageReceived =
      StreamController.broadcast();
  factory InMemory() => instance;
  InMemory._internal();

  close() {
    messageReceived.close();
  }

}
