// // import 'package:aiprise_flutter_sdk/aiprise_flutter_sdk.dart';
// import 'package:allawee_app/core/presentation/widgets/allawee_app_bar.dart';
// import 'package:allawee_app/core/presentation/widgets/loading_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:allawee_app/core/platform/string_constants.dart' as Constants;
//
// import '../data/enums/type_enums.dart';
// import '../platform/env_config.dart';
// import '../presentation/widgets/kyc_verified_screen.dart';
//
// class ApiriseWidget extends StatelessWidget {
//   String testType;
//
//   ApiriseWidget({required this.testType});
//
//   @override
//   Widget build(BuildContext context) {
//     String env = EnvConfig.instance!.flavor.toString();
//     return Scaffold(
//         appBar: AllaweeSecondaryAppBar(),
//         body: AiPriseFrame(
//           mode: env == Env.STAGING.toString() ? AiPriseEnvironment.sandbox : AiPriseEnvironment.production, // sandbox or production
//           templateID: testType == "BVN" ? Constants.APIRISE_BVN : Constants.APIRISE_GOVT_ID,
//           callbackURL: testType == "BVN" ? 'https://pasrv-stg.allawee.com/kyc/call-back/bvn' : "https://pasrv.allawee.com/kyc/call-back/bvn",
//           onStart: (sessionID) {},
//           onSuccess: (sessionID) {
//             Navigator.pushAndRemoveUntil(
//                 context,
//                 MaterialPageRoute(
//                     builder: (BuildContext context) => LoadingScreen(
//                           sessiosnId: sessionID,
//                           templateId: testType == "BVN" ? Constants.APIRISE_BVN : Constants.APIRISE_GOVT_ID,
//                           kycType: testType == "BVN" ? "bvn" : "identity",
//                         )),
//                 (Route<dynamic> route) => false);
//           },
//           onComplete: (sessionID) {},
//           onError: () {
//             Navigator.pushAndRemoveUntil(
//                 context,
//                 MaterialPageRoute(
//                     builder: (BuildContext context) => kycVerifiedScreen(
//                       kycType: testType,
//                       path: "error",
//                         )),
//                 (Route<dynamic> route) => false);
//           },
//         ));
//   }
// }
//
