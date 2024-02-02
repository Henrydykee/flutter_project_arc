import 'dart:io';
import 'package:allawee_business/core/presentation/widgets/text_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

import 'allawee_app_bar.dart';
import 'button.dart';

class ForceUpdateScreen extends StatefulWidget {
  const ForceUpdateScreen({super.key});

  @override
  State<ForceUpdateScreen> createState() => _ForceUpdateScreenState();
}

class _ForceUpdateScreenState extends State<ForceUpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AllaweeSecondaryAppBar(
        allowPop: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Gap(100),
                SvgPicture.asset("assets/svg/force_update.svg"),
                Gap(100),
                TextHolder(
                  title: "your app is outdated",
                  size: 24,
                  fontWeight: FontWeight.w600,
                ),
                Gap(16),
                TextHolder(
                  title:
                      "We added lots of features and fixed some bugs to make your experience as smooth as ever. Tap the button below to get the latest version.",
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF444444),
                  align: TextAlign.center,
                ),
              ],
            ),
            AllaweeButton(
              title: "Update my app",
                onTap: () async {
                  String url = Platform.isAndroid
                      ? "https://play.google.com/store/apps/details?id=com.allaweepersonal.mobile"
                      : "https://apps.apple.com/ng/app/allawee/id6473426951";
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                }
            )
          ],
        ),
      ),
    );
  }
}
