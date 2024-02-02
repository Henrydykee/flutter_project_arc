// import 'package:firebase_analytics/firebase_analytics.dart';
//
// class GoogleAnalyticsManager {
//   static final _instance = GoogleAnalyticsManager.instance();
//
//   final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
//   GoogleAnalyticsManager.instance();
//   factory GoogleAnalyticsManager() => _instance;
//
//
//   logEvent({
//     required String eventName,
//     required String action,
//     required String result,
//   }) async {
//     analytics.logEvent(name: eventName, parameters: {
//       "action": action,
//       "result": result,
//     });
//   }
// }
//
// GoogleAnalyticsManager googleAnalytic = GoogleAnalyticsManager();
