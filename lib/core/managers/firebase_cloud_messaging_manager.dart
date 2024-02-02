// import 'dart:convert';
// import 'dart:io';
//
// ;
//
// class FirebaseCloudMessagingManager {
//   static final FirebaseCloudMessagingManager instance = new FirebaseCloudMessagingManager._internal();
//   factory FirebaseCloudMessagingManager() => instance;
//   FirebaseCloudMessagingManager._internal() {}
//
//   final FirebaseMessaging _fcmInstance = FirebaseMessaging.instance;
//
//   Future<void> registerFirebaseCloudMessaging() async {
//     try {
//       if (Platform.isIOS) {
//         await _iOSPermissions();
//       } else {
//         await _initFirebaseToken();
//       }
//     } catch (e) {
//       logger.e(e);
//       if (kDebugMode) logger.e("Error registering firebase: ${e.toString()}");
//     }
//   }
//
//   Future<void> _initFirebaseToken() async {
//     try {
//       final String? token = await _fcmInstance.getToken();
//       if (token != null) {
//         Object? existingToken = inject<SharedPreferences>().get(SPref.FCM_TOKEN);
//         bool? sent = inject<SharedPreferences>().get(SPref.SENT_FCM) as bool?;
//         if (existingToken == null || sent != null) {
//           await inject<SharedPreferences>().setString(SPref.FCM_TOKEN, token);
//           await _sendTokenToServer(token);
//         }
//         FirebaseMessaging.instance
//             .subscribeToTopic("getEquityNotification_string")
//             .catchError(
//               (_) => logger.e(_.toString()),
//         );
//         _listenToToken();
//         _configureNotificationEvents();
//       }
//     } catch (e) {
//     }
//   }
//
//   Future<void> _iOSPermissions() async {
//     _fcmInstance .requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );
//     _initFirebaseToken();
//   }
//
//   void _listenToToken() {
//     // In case the token changes, update cache and server
//     _fcmInstance.onTokenRefresh.listen((token) async {
//       inject<InMemory>().oldFcmToken =
//           inject<SharedPreferences>().getString(SPref.FCM_TOKEN);
//       await inject<SharedPreferences>().setString(SPref.FCM_TOKEN, token);
//       await _sendTokenToServer(token, update: true);
//     });
//   }
//
//   // Push Message Payload is different on iOS
//   Map<String, dynamic> _convertMessageForIOS(Map<String, dynamic> message) {
//     if (Platform.isIOS) {
//       Map<String, dynamic> iosMessage;
//       if (message["aps"] != null) {
//         iosMessage = {
//           "notification": message["aps"]["alert"],
//           "data": message,
//         };
//       } else {
//         iosMessage = {
//           "notification": message["notification"],
//           "data": message["payload"] ?? message,
//         };
//       }
//       message = iosMessage;
//     }
//     return message;
//   }
//
//   void pushMessage(Map<String, dynamic> message, {required bool fromBackground}) {
//     // Sometimes, data object varies
//     if (message["data"] != null && message["data"]["payload"] != null) {
//       message["data"] = jsonDecode(message["data"]["payload"].toString());
//     }
//     message = _convertMessageForIOS(message);
//     if (kDebugMode) logger.i('pushMessage => $message');
//   }
//
//   void _configureNotificationEvents() {
//     try {
//       FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
//       FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
//         AlertView(
//           message.data["notification"]['title'],
//           bodyMessage: message.data["notification"]['body'],
//         ).show();
//         logger.i("On notification received $message");
//         pushMessage(message.data, fromBackground: false);
//         inject<InMemory>().messageReceived.add(message.data);
//       });
//       FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
//         pushMessage(message.data, fromBackground: true);
//         if (kDebugMode) logger.i('On resume: Payload $message');
//       });
//       FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//         pushMessage(message.data, fromBackground: true);
//         if (kDebugMode) logger.i('On resume: Payload $message');
//       });
//     } catch (e, s) {
//       if (kDebugMode) {
//         logger.e("error in listener: ${e.toString()}");
//       }
//     }
//   }
//
//   void _handleMessage(RemoteMessage message) {}
//
//   Future<void> _sendTokenToServer(String token, {update = false}) async {
//     try {
//       if (update) {
//         await inject<OnboardingRepository>().updateFcm(token);
//       } else {
//         await inject<OnboardingRepository>().register(token);
//       }
//     } catch (e) {
//       if (kDebugMode) logger.e(e.toString());
//     }
//   }
//
//   Future<void> unRegisterNotification() async {
//     String? deviceIdDb = inject<SharedPreferences>().get(SPref.DEVICE_ID_DB) as String?;
//     logger.e(deviceIdDb);
//     try {
//       String? deviceIdDb = inject<SharedPreferences>().get(SPref.DEVICE_ID_DB) as String?;
//
//       await inject<OnboardingRepository>().unSubscribe(deviceIdDb!).then(
//               (_) async =>
//           await inject<SharedPreferences>().remove(SPref.FCM_TOKEN));
//     } catch (e) {
//       logger.e(e.toString());
//     }
//   }
// }