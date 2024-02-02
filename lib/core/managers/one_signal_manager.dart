// import 'dart:async';
// import 'dart:developer';
// import 'dart:io' show Platform;
// import 'package:allawee_app/core/platform/env_config.dart';
// import 'package:flutter/material.dart';
// import 'package:onesignal_flutter/onesignal_flutter.dart';
// import 'package:allawee_app/core/platform/string_constants.dart' as Constants;
// import 'package:provider/provider.dart';
// import '../../features/notification/presentation/state/notification_provider.dart';
//
// class NotificationHandler {
//   static Future<String> flavourBaseOneSignalAppID() async {
//     if (EnvConfig.isStage()) {
//       return "${Constants.ONESIGNAL_STAGING_APP_ID}";
//     } else {
//       return "${Constants.ONESIGNAL_PRODUCTION_APP_ID}";
//     }
//   }
//
//
//
//   Future<void> init() async {
//     unawaited(
//       OneSignal.shared.setLogLevel(
//         OSLogLevel.verbose,
//         OSLogLevel.none,
//       ),
//     );
//
//     await OneSignal.shared.setAppId(await flavourBaseOneSignalAppID());
//
//     await OneSignal.shared.promptUserForPushNotificationPermission();
//     final status = await OneSignal.shared.getDeviceState();
//
//     if (status?.subscribed == false || status?.hasNotificationPermission == false) {
//       await OneSignal.shared.addTrigger('prompt_ios', 'true');
//     }
//
//     OneSignal.shared
//         .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
//       log('NOTIFICATION OPENED HANDLER CALLED WITH: $result');
//
//       log("Opened notification: \n${result.notification.jsonRepresentation().replaceAll(r"\n", "\n")}");
//     });
//
//     OneSignal.shared.setNotificationWillShowInForegroundHandler(
//             (OSNotificationReceivedEvent event) {
//           log('FOREGROUND HANDLER CALLED WITH: $event');
//
//           /// Display Notification, send null to not display
//           // event.complete(null);
//
//           log("Notification received in foreground notification: \n${event.notification.jsonRepresentation().replaceAll(r"\n", "\n")}");
//         });
//
//     OneSignal.shared
//         .setInAppMessageClickedHandler((OSInAppMessageAction action) {
//       log("In App Message Clicked: \n${action.jsonRepresentation().replaceAll(r"\n", "\n")}");
//     });
//
//     OneSignal.shared
//         .setSubscriptionObserver((OSSubscriptionStateChanges changes) {
//       log('SUBSCRIPTION STATE CHANGED: ${changes.jsonRepresentation()}');
//     });
//
//     OneSignal.shared.setPermissionObserver((OSPermissionStateChanges changes) {
//       log('PERMISSION STATE CHANGED: ${changes.jsonRepresentation()}');
//     });
//
//     OneSignal.shared.setEmailSubscriptionObserver(
//             (OSEmailSubscriptionStateChanges changes) {
//           log('EMAIL SUBSCRIPTION STATE CHANGED ${changes.jsonRepresentation()}');
//         });
//
//     OneSignal.shared
//         .setSMSSubscriptionObserver((OSSMSSubscriptionStateChanges changes) {
//       log('SMS SUBSCRIPTION STATE CHANGED ${changes.jsonRepresentation()}');
//     });
//   }
//
//   // static Future<void> integrateDevice(UserProfile profile) async {
//   //   final status = await OneSignal.shared.getDeviceState();
//   //
//   //   if (status!.subscribed && status.hasNotificationPermission) {
//   //     await OneSignal.shared.setExternalUserId(profile.data!.publicId!);
//   //   }
//   // }
//
//   static Future<String> getPlayerId() async {
//     final status = await OneSignal.shared.getDeviceState();
//     print(status?.userId);
//     return status!.userId!;
//   }
//
//   static Future<void> logout() async {
//     await OneSignal.shared.removeExternalUserId();
//     await OneSignal.shared.logoutEmail();
//     await OneSignal.shared.logoutSMSNumber();
//   }
//
// }
