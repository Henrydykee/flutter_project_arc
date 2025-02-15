// import 'dart:async';
//
// import 'package:newproject_app/core/platform/color.dart';
// import 'package:newproject_app/core/presentation/widgets/text_holder.dart';
// import 'package:newproject_app/features/authentication/presentation/pages/login/login_screen.dart';
// import 'package:newproject_app/features/home/presentation/pages/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';
//
// import '../../../features/home/presentation/pages/nav_bar.dart';
// import '../../../features/onboarding/presentation/state/onboarding_provider.dart';
// import 'newproject_app_bar.dart';
//
// class kycVerifiedScreen extends StatefulWidget {
//   String? path;
//   String? kycType;
//   kycVerifiedScreen({super.key, this.path, this.kycType});
//
//   @override
//   State<kycVerifiedScreen> createState() => _kycVerifiedScreenState();
// }
//
// class _kycVerifiedScreenState extends State<kycVerifiedScreen> {
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 3),
//         () => Navigator.push(
//               context,
//               PageRouteBuilder(
//                 transitionDuration: const Duration(milliseconds: 800),
//                 pageBuilder: (context, animation, secondaryAnimation) => newprojectNavBar(),
//                 transitionsBuilder: (context, animation, secondaryAnimation, child) {
//                   var begin = Offset(0.0, 1.0);
//                   var end = Offset.zero;
//                   var curve = Curves.bounceInOut;
//                   var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//                   var offsetAnimation = animation.drive(tween);
//                   return SlideTransition(position: offsetAnimation, child: child);
//                 },
//               ),
//             ));
//   }
//
//   OnboardingProvider? provider;
//
//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       Provider.of<OnboardingProvider>(context, listen: false).getUser();
//     });
//     return Scaffold(
//       backgroundColor: newprojectColor.dark_blue,
//       appBar: newprojectSecondaryAppBar(
//         color: newprojectColor.dark_blue,
//         allowPop: false,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               children: [
//                 Gap(40),
//                 Center(
//                   child: TextHolder(
//                     title: widget.path == "error"
//                         ? "${toBeginningOfSentenceCase(widget.kycType.toString())} \nfailed"
//                         : "${toBeginningOfSentenceCase(widget.kycType.toString())} ${widget.kycType =="address" ? "Review" :"Verified"}",
//                     size: 24,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w700,
//                     align: TextAlign.center,
//                   ),
//                 ),
//                 Gap(15),
//                 Center(
//                   child: TextHolder(
//                     title: widget.path == "error"
//                         ? "Unknown error Please try again"
//                         : "${toBeginningOfSentenceCase(widget.kycType.toString())} ${widget.kycType =="address" ? "is being Reviewed" :"confirmed"}",
//                     size: 16,
//                     color: Colors.white,
//                     align: TextAlign.center,
//                   ),
//                 ),
//                 Gap(30),
//                 widget.path == "error"
//                     ? Image.asset(
//                         "assets/images/faild_transaction.png",
//                         height: 300,
//                         width: 300,
//                       )
//                     : Image.asset(
//                         "assets/images/successful_image.png",
//                         height: 300,
//                         width: 300,
//                       )
//               ],
//             ),
//             Column(
//               children: [
//                 Container(
//                     decoration: BoxDecoration(
//                       color: Color(0xFF05081E),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
//                       child: TextHolder(
//                         title: "💡 You will be automatically redirected to the Homepage",
//                         align: TextAlign.center,
//                         color: Colors.white,
//                       ),
//                     )),
//                 Gap(30)
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
