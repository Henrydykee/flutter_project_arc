// import 'package:newproject_app/core/presentation/widgets/text_holder.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:gap/gap.dart';
// import 'package:intl/intl.dart';
// import '../../platform/color.dart';
// import '../../utils/formatters.dart';
// import '../../utils/transaction_utils.dart';
// import 'button.dart';
//
//
//
//
//
// class AdContainer extends StatelessWidget {
//   final String imageUrl;
//   final VoidCallback onTap;
//
//   const AdContainer({required this.imageUrl, required this.onTap, Key? key})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.only(right: 16),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(16),
//           ),
//           width: 200,
//           height: 180,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(16),
//             child: Image.network(
//               imageUrl,
//               fit: BoxFit.fill,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class FundOrSendButton extends StatelessWidget {
//   final String title;
//   final String assetPath;
//   Kyc? kyc;
//
//   TransactionProvider? provider;
//
//   FundOrSendButton(
//       {required this.title, this.provider, required this.assetPath, this.kyc});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: () {
//           if (title == "Add money" || title == "Transfer") {
//             if (kyc?.level == 0) {
//               navigateToPage(context, KycScreen(kyc: kyc));
//             } else {
//               if (title == "Add money") {
//                 navigateToPage(
//                   context,
//                   FundAccountScreen(
//                     provider: provider,
//                     kyc: kyc,
//                   ),
//                 );
//               } else if (title == "Transfer") {
//                 navigateToPage(context, EnterAmountScreen());
//               }
//             }
//           } else if (title == "Scan") {
//             navigateToPage(context, ScanQrCodeScreen());
//           }
//         },
//         child: Column(
//           children: [
//             Image.asset(
//               assetPath,
//               fit: BoxFit.cover,
//               height: 60,
//               width: 60,
//             ),
//             Gap(12),
//             TextHolder(
//               title: title,
//               size: 16,
//               fontWeight: FontWeight.w500,
//               align: TextAlign.center,
//               color: Colors.white,
//             ),
//           ],
//         ));
//   }
// }
//
// class TransactionInflowOutflow extends StatelessWidget {
//   const TransactionInflowOutflow({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             MoneyTextHolder(
//               title: 0,
//               size: 18,
//               color: Colors.white,
//               symbol: "₦ ",
//             ),
//             Gap(5),
//             TextHolder(
//               title: "Money In",
//               color: Color(0xFFB6BFD4),
//             )
//           ],
//         ),
//         Gap(48),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             MoneyTextHolder(
//               title: 0,
//               size: 18,
//               color: Colors.white,
//               symbol: "₦ ",
//             ),
//             Gap(5),
//             TextHolder(
//               title: "Money 0ut",
//               color: Color(0xFFB6BFD4),
//             )
//           ],
//         ),
//       ],
//     );
//   }
// }
//
// class HomeGraph extends StatelessWidget {
//   HomeGraph({super.key});
//
//   List<double> spendingData = [20, 45, 30, 10, 30, 35, 60];
//   List<String> daysOfWeek = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 300,
//           width: double.infinity,
//           child: LineChart(
//             LineChartData(
//               gridData: FlGridData(show: false),
//               titlesData: FlTitlesData(
//                 bottomTitles: AxisTitles(
//                   sideTitles: SideTitles(
//                     showTitles: false,
//                   ),
//                 ),
//                 rightTitles: AxisTitles(
//                   sideTitles: SideTitles(
//                       showTitles: true,
//                       interval: 0.9,
//                       getTitlesWidget: (double value, TitleMeta meta) {
//                         int index = value.toInt();
//                         if (index >= 0 && index < spendingData.length) {
//                           return TextHolder(
//                               title: spendingData[index].toString(),
//                               color:
//                                   Color(0xFF898A8D) // Replace with your color
//                               );
//                         }
//                         return TextHolder(
//                           title: '',
//                         );
//                       }),
//                 ),
//                 topTitles:
//                     AxisTitles(sideTitles: SideTitles(showTitles: false)),
//                 leftTitles:
//                     AxisTitles(sideTitles: SideTitles(showTitles: false)),
//               ),
//               borderData: FlBorderData(show: true),
//               minX: 0,
//               maxX: 6,
//               minY: 0,
//               maxY: 60,
//               lineBarsData: [
//                 LineChartBarData(
//                   spots: spendingData.asMap().entries.map((entry) {
//                     return FlSpot(entry.key.toDouble(), entry.value);
//                   }).toList(),
//                   isCurved: true,
//                   color: newprojectColor.green,
//                   dotData: FlDotData(show: false),
//                   belowBarData: BarAreaData(show: false),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Gap(8),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: daysOfWeek.map((day) {
//             return Flexible(
//               child: TextHolder(
//                   title: day.toString(),
//                   color: Color(0xFF898A8D) // Replace with your color
//                   ),
//             );
//             ;
//           }).toList(),
//         )
//       ],
//     );
//   }
// }
//
// class TierIndicator extends StatelessWidget {
//   final Kyc? kyc;
//
//   TierIndicator({Key? key, required this.kyc}) : super(key: key);
//
//   String getImage() {
//     if (kyc?.level == 1) {
//       return "assets/images/tier_1.png";
//     }
//     if (kyc?.level == 2) {
//       return "assets/images/tier_2.png";
//     }
//     if (kyc?.level == 3) {
//       return "assets/images/tier_3.png";
//     }
//     return "assets/images/default.png";
//   }
//
//   String getTitle() {
//     if (kyc?.bvnConfirmed == null || kyc?.bvnConfirmed == false) {
//       return "Add your BVN";
//     }
//     if (kyc?.identityConfirmed == null || kyc?.identityConfirmed == false) {
//       return "Verify your ID";
//     }
//     if (kyc?.addressConfirmationStatus == null || kyc?.addressConfirmationStatus == "PENDING") {
//       return "Verify your address";
//     }
//     if (kyc?.addressConfirmationStatus == null || kyc?.addressConfirmationStatus == "DECLINED".toLowerCase() ) {
//       return "Verify your address";
//     }
//     return "";
//   }
//
//   Color getColor() {
//     if (kyc?.level == 1) {
//       return Color(0xFFFEF4EB);
//     }
//     if (kyc?.level == 2) {
//       return Color(0xFFFFFFFF);
//     }
//     if (kyc?.addressConfirmationStatus == null ||
//         kyc?.addressConfirmationStatus == "PENDING") {
//       return Color(0xFFF7FEFF);
//     }
//     return Colors.black;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return kyc?.level == 0 ? SizedBox()
//         : GestureDetector(
//             onTap: () {
//               navigateToPage(context, KycScreen(kyc: kyc));
//             },
//             child: Container(
//               decoration: BoxDecoration(
//                   color: getColor(), borderRadius: BorderRadius.circular(8)),
//               child: Padding(
//                 padding: const EdgeInsets.all(15),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Image.asset(getImage()),
//                         SizedBox(width: 15),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             TextHolder(
//                               title: getTitle().toString(),
//                               size: 18,
//                               fontWeight: FontWeight.w500,
//                             ),
//                             TextHolder(
//                               title: "Increase your account limits",
//                               size: 14,
//                               color: Color(0xFF444444),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//   }
// }
//
// class QuickActionButton extends StatelessWidget {
//   String imagePath;
//   String name;
//
//   QuickActionButton({required this.name, required this.imagePath});
//
//   @override
//   Widget build(BuildContext context) {
//     return Flexible(
//       child: GestureDetector(
//         onTap: () {
//           if (name == "Virtual cards") {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => IntroducingVirtualCardsScreen()),
//             );
//           }
//           if (name == "Physical cards") {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => PhysicalCardIntroScreen()),
//             );
//           }
//         },
//         child: Column(
//           children: [
//             Container(
//               height: 160,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   image: DecorationImage(
//                       image: AssetImage(imagePath), fit: BoxFit.fill)),
//             ),
//             Gap(8),
//             TextHolder(
//               title: name,
//               fontWeight: FontWeight.w600,
//             )
//           ],
//           crossAxisAlignment: CrossAxisAlignment.start,
//         ),
//       ),
//     );
//   }
// }
//
// class UserSpendingCatergory extends StatelessWidget {
//   final String header;
//   final String name;
//   final String imagePath;
//   const UserSpendingCatergory(
//       {required this.name, required this.imagePath, required this.header});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 children: [
//                   TextHolder(
//                     title: header,
//                     size: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   TextHolder(
//                     title: "Total amount spent",
//                     size: 14,
//                   )
//                 ],
//               ),
//               ViewAllButton()
//             ],
//           ),
//         ),
//         Gap(17),
//         Container(
//           height: 210,
//           width: MediaQuery.of(context).size.width,
//           child: ListView.builder(
//               shrinkWrap: true,
//               itemCount: 10,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (c, i) => Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 8),
//                     child: Container(
//                       width: 170,
//                       decoration: BoxDecoration(
//                         color: Color(0xFFF9F9F9),
//                         border: Border.all(color: Color(0xFFF2F2F2)),
//                       ),
//                       child: Padding(
//                         padding:
//                             EdgeInsets.symmetric(vertical: 24, horizontal: 12),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(50),
//                               child: CachedNetworkImage(
//                                   height: 40, width: 40, imageUrl: imagePath),
//                             ),
//                             Gap(30),
//                             TextHolder(
//                               title: name,
//                               fontWeight: FontWeight.w500,
//                             ),
//                             Gap(5),
//                             TextHolder(
//                               title: "12 Transactions",
//                               fontWeight: FontWeight.w400,
//                               color: newprojectColor.grey,
//                             ),
//                             Gap(24),
//                             MoneyTextHolder(
//                               title: 100000,
//                               symbol: "₦ ",
//                               size: 16,
//                               fontWeight: FontWeight.w500,
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   )),
//         )
//       ],
//     );
//   }
// }
//
// class TransactionHistoryHomeScreen extends StatelessWidget {
//   bool isCardTransactions;
//   List<TransactionResponseModel>? userTransaction;
//
//   TransactionHistoryHomeScreen(
//       {this.userTransaction, this.isCardTransactions = false});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TextHolder(
//             title: isCardTransactions == true
//                 ? " Transactions"
//                 : "Recent Transactions",
//             size: 16,
//             fontWeight: FontWeight.w600,
//           ),
//           Gap(10),
//           userTransaction?.length == 0
//               ? Column(
//                   children: [
//                     isCardTransactions == true ? Gap(20) : Gap(70),
//                     Center(
//                       child: Image.asset(
//                         "assets/images/faild_transaction.png",
//                         height: 130,
//                         width: 130,
//                       ),
//                     ),
//                     Gap(24),
//                     TextHolder(
//                       title: "You have not made\nany transactions yet",
//                       fontWeight: FontWeight.w500,
//                       size: 18,
//                       align: TextAlign.center,
//                     ),
//                     Gap(100),
//                   ],
//                 )
//               : Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ListView.builder(
//                       shrinkWrap: true,
//                       physics: isCardTransactions == true ? AlwaysScrollableScrollPhysics() : NeverScrollableScrollPhysics(),
//                       itemCount: userTransaction!.length >= 5 ? 5 : userTransaction?.length,
//                       padding: EdgeInsets.all(0),
//                       itemBuilder: (c, i) {
//                         bool isSameDate = true;
//                         final String dateString = FormatUtils.dateTimeFormatter(
//                             userTransaction?[i].createdAt,
//                             format: 'EEE, d MMM yyyy');
//                         if (i > 0) {
//                           final String prevDateString =
//                               FormatUtils.dateTimeFormatter(
//                                   userTransaction?[i - 1].createdAt,
//                                   format: 'EEE, d MMM yyyy');
//                           isSameDate = dateString == prevDateString;
//                         }
//                         if (i == 0 || !isSameDate) {
//                           return Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Gap(25),
//                               NumberTextHolder(
//                                   title:
//                                       "${FormatUtils.formatDateForHeader(userTransaction?[i].createdAt)}",
//                                   color: Color(0xFF898A8D)),
//                               Gap(15),
//                               TransactionHistoryItem(
//                                 transaction: userTransaction![i],
//                                 onTap: () => navigateToPage(
//                                   context,
//                                   TransactionDetailScreen(
//                                     transactionResponseModel:
//                                         userTransaction![i],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           );
//                         } else {
//                           return TransactionHistoryItem(
//                             transaction: userTransaction![i],
//                             onTap: () => navigateToPage(
//                               context,
//                               TransactionDetailScreen(
//                                 transactionResponseModel: userTransaction![i],
//                               ),
//                             ),
//                           );
//                         }
//                       },
//                     ),
//                     Gap(10),
//                     isCardTransactions == true
//                         ? SizedBox()
//                         : GestureDetector(
//                             onTap: () => navigateToPage(
//                                 context,
//                                 TransactionHistoryScreen(
//                                   transactions: userTransaction!,
//                                 )),
//                             child: userTransaction!.length >= 5
//                                 ? ViewAllButton()
//                                 : SizedBox(),
//                           )
//                   ],
//                 )
//         ],
//       ),
//     );
//   }
// }
//
// class TransactionHistoryItem extends StatelessWidget {
//   final TransactionResponseModel transaction;
//   final Function onTap;
//
//   const TransactionHistoryItem(
//       {required this.transaction, required this.onTap});
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       highlightColor: Colors.transparent,
//       child: Padding(
//         padding: const EdgeInsets.only(bottom: 30),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               child: Row(
//                 children: [
//                   Flexible(
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(50),
//                       child: transaction.mode == "debit"
//                           ? SvgPicture.asset("assets/svg/debit_icon.svg")
//                           : SvgPicture.asset("assets/svg/credit_icon.svg"),
//                     ),
//                   ),
//                   const SizedBox(width: 12),
//                   Flexible(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         TextHolder(
//                           title: toBeginningOfSentenceCase(TransactionUtils().getTransactionTitle(transaction.type.toString(),transaction)),
//                           size: 16,
//                            maxLines: 1,
//                           textOverflow: TextOverflow.ellipsis,
//                           fontWeight: FontWeight.w500,
//                         ),
//                         transaction.tags?.length == 0 ? SizedBox():  SizedBox(height: 6),
//                         transaction.tags?.length == 0
//                             ? SizedBox(height: 0,)
//                             : TextHolder(
//                                 title: transaction.tags?[0],
//                                 size:  transaction.tags?[0] == null || transaction.tags?[0] == "" ? 0 : 14,
//                                 color: newprojectColor.grey,
//                               ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               width: MediaQuery.of(context).size.width / 1.5,
//             ),
//             Flexible(
//               child: MoneyTextHolder(
//                 title: transaction.amount,
//                 symbol: "₦",
//                 textOverflow: TextOverflow.ellipsis,
//                 size: 17,
//               ),
//             )
//           ],
//         ),
//       ),
//       onTap: () => onTap(),
//     );
//   }
//
//
//   // getAccountName() {
//   //   String? accountName = transaction.data?.accountName?.toString();
//   //   if (accountName == null || accountName.isEmpty || accountName == "") {
//   //     return TransactionUtils().getTransactionTitle(transaction.type.toString());
//   //   } else {
//   //     return accountName;
//   //   }
//   // }
//
// }
//
//
// class BVNNOTIFICATION extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       decoration: getDecoration(5),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Flexible(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextHolder(
//                     title: "Activate your account",
//                     color: Colors.white,
//                   ),
//                   TextHolder(
//                     title: "Add your BVN to activate your newproject account",
//                     color: Colors.white,
//                   ),
//                 ],
//               ),
//             ),
//             Flexible(
//                 child: GestureDetector(
//                   onTap: (){
//                     navigateToPage(context, EnterBvnScreen());
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.black,width: 1),
//                         borderRadius: BorderRadius.circular(8),
//                         image: DecorationImage(image: AssetImage("assets/images/small_green_background.png"),fit: BoxFit.cover)
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(13.0),
//                       child: TextHolder(title: 'Add BVN',),
//                     ),
//                   ),
//                 )
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
