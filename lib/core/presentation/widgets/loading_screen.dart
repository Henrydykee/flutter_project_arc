//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../../features/authentication/presentation/state/authentication_provider.dart';
// import '../../platform/color.dart';
// import 'kyc_verified_screen.dart';
//
// class LoadingScreen extends StatefulWidget {
//
//   String? sessiosnId;
//   String? templateId;
//   String? kycType;
//
//   LoadingScreen({this.sessiosnId, this.templateId, this.kycType});
//
//
//   @override
//   State<LoadingScreen> createState() => _LoadingScreenState();
// }
//
// class _LoadingScreenState extends State<LoadingScreen> {
//   AuthenticationProvider? provider;
//
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//
//   _intializer() async {
//     await provider?.kycCallBack(sessionId: widget.sessiosnId.toString(), templateId: widget.templateId.toString(), kycType: widget.kycType.toString());
//     if(provider?.isLoading == false && provider?.hasError == false){
//       Navigator.pushAndRemoveUntil(
//           context, MaterialPageRoute(builder: (BuildContext context) => kycVerifiedScreen(path: "KYC",kycType: widget.kycType,)), (Route<dynamic> route) => false);
//     } else {
//       Navigator.pushAndRemoveUntil(
//           context, MaterialPageRoute(builder: (BuildContext context) => kycVerifiedScreen(path: "error", kycType: widget.kycType,)), (Route<dynamic> route) => false);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (provider == null) {
//       provider = Provider.of<AuthenticationProvider>(context);
//       _intializer();
//     }
//     return Scaffold(
//       body: Center(
//           child: Container(
//             height: 40,
//             width: 40,
//             child: CircularProgressIndicator(
//               backgroundColor: newprojectColor.white,
//               strokeWidth: 3,
//               valueColor:
//               AlwaysStoppedAnimation<Color>(Colors.green),
//             ),
//           ),
//       )
//     );
//   }
// }
