// import 'package:newproject_app/core/presentation/widgets/text_holder.dart';
// import 'package:newproject_app/features/onboarding/presentation/state/onboarding_provider.dart';
// import 'package:newproject_app/features/transaction/data/model/add_beneficiaries_request_model.dart';
// import 'package:newproject_app/features/transaction/presentation/state/transaction_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_switch/flutter_switch.dart';
// import 'package:gap/gap.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import '../../../features/authentication/presentation/state/authentication_provider.dart';
// import '../../../features/home/presentation/pages/nav_bar.dart';
// import '../../di/di_config.dart';
// import 'newproject_app_bar.dart';
// import 'button.dart';
//
// class TransactionStatusScreen extends StatefulWidget {
//
//   bool? isTransactionSuccessful;
//   final String recipientName;
//   final String bankName;
//   final String bankCode;
//   final String accountNumber;
//   final String bankImageUrl;
//   final String transactionReason;
//   final String transactionAmount;
//   final String tag;
//
//   TransactionStatusScreen(
//       {required this.recipientName,
//       required this.bankName,
//       required this.tag,
//       required this.bankCode,
//       required this.isTransactionSuccessful,
//       required this.accountNumber,
//       required this.bankImageUrl,
//       required this.transactionReason,
//       required this.transactionAmount});
//
//   @override
//   State<TransactionStatusScreen> createState() => _CardLinkedSuccessfulScreenState();
// }
//
// class _CardLinkedSuccessfulScreenState extends State<TransactionStatusScreen> {
//   bool? saveBeneficiary;
//   TransactionProvider? provider;
//   OnboardingProvider? _authenticationProvider;
//
//   _intilaizer() {
//     _authenticationProvider?.getUser();
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     saveBeneficiary = false;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (provider == null) {
//       provider = Provider.of<TransactionProvider>(context);
//       _authenticationProvider = Provider.of<OnboardingProvider>(context);
//       _intilaizer();
//     }
//     return Scaffold(
//       backgroundColor: Color(0xFF0B1032),
//       appBar: newprojectSecondaryAppBar(
//         color: Color(0xFF0B1032),
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
//                 Image.asset(
//                   widget.isTransactionSuccessful == true
//                       ? "assets/images/successful_image.png"
//                       : "assets/images/faild_transaction.png",
//                   height: 300,
//                   width: 300,
//                 ),
//                 Gap(50),
//                 Center(
//                   child: TextHolder(
//                     title: widget.isTransactionSuccessful == true ? "Transfer successful" : "Transfer failed",
//                     size: 24,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w700,
//                     align: TextAlign.center,
//                   ),
//                 ),
//                 Gap(15),
//                 Center(
//                   child: TextHolder(
//                     title: widget.isTransactionSuccessful == true
//                         ? "Transfer to ${widget.recipientName} is successfully confirmed"
//                         : "Transfer to ${widget.recipientName}failed",
//                     size: 16,
//                     color: Colors.white,
//                     align: TextAlign.center,
//                   ),
//                 ),
//                 Gap(30),
//               ],
//             ),
//             Column(
//               children: [
//                 Column(
//                   children: [
//                     inject<SharedPreferences>().getBool("SAVE_BENEFICIARY") == false
//                         ? SizedBox()
//                         : GestureDetector(
//                             onTap: () {
//                               if (saveBeneficiary == true) {
//                                 setState(() {
//                                   saveBeneficiary = false;
//                                 });
//                               } else if (saveBeneficiary == false) {
//                                 AddBeneficiaryRequestModel add = AddBeneficiaryRequestModel(
//                                     fullName: widget.recipientName,
//                                     bankCode: widget.bankCode,
//                                     accountNumber: widget.accountNumber,
//                                     bankName: widget.bankName,
//                                     bankImageUrl: widget.bankImageUrl);
//                                 provider?.addBeneficiary(add);
//                                 setState(() {
//                                   saveBeneficiary = true;
//                                 });
//                               }
//                             },
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 TextHolder(
//                                   title: "Save beneficiary for\nfuture actions?",
//                                   size: 16,
//                                   color: Colors.white,
//                                 ),
//
//                                 FlutterSwitch(
//                                   value: saveBeneficiary ?? false,
//                                   onToggle: (value) {
//                                     AddBeneficiaryRequestModel add = AddBeneficiaryRequestModel(
//                                         fullName: widget.recipientName,
//                                         bankCode: widget.bankCode,
//                                         accountNumber: widget.accountNumber,
//                                         bankName: widget.bankName,
//                                         bankImageUrl: widget.bankImageUrl);
//                                     provider?.addBeneficiary(add);
//                                     setState(() {
//                                       saveBeneficiary = value;
//                                     });
//                                   },
//                                   activeColor: Color(0xFF000000),
//                                   inactiveColor: Color(0xFFD9D9D9),
//                                 ),
//
//
//                                 // Switch(
//                                 //     activeColor: Colors.white,
//                                 //     materialTapTargetSize: MaterialTapTargetSize.padded,
//                                 //     inactiveTrackColor: Color(0xFF2A2F54),
//                                 //     value: saveBeneficiary ?? false,
//                                 //     onChanged: (value) {
//                                 //       AddBeneficiaryRequestModel add = AddBeneficiaryRequestModel(
//                                 //           fullName: widget.recipientName,
//                                 //           bankCode: widget.bankCode,
//                                 //           accountNumber: widget.accountNumber,
//                                 //           bankName: widget.bankName,
//                                 //           bankImageUrl: widget.bankImageUrl);
//                                 //       provider?.addBeneficiary(add);
//                                 //       setState(() {
//                                 //         saveBeneficiary = value;
//                                 //       });
//                                 //     }
//                                 //     )
//                               ],
//                             ),
//                           ),
//                     Gap(16),
//                     Divider(
//                       color: Colors.white,
//                     ),
//                     Gap(24),
//                   ],
//                 ),
//                 newprojectButton(
//                   title: "Done",
//                   onTap: () {
//                     Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
//                         newprojectNavBar()), (Route<dynamic> route) => false);
//                   },
//                 ),
//                 Gap(30)
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
