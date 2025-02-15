import 'package:new_project/core/platform/color.dart';
import 'package:new_project/core/presentation/widgets/text_holder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'allawee_app_bar.dart';

class AccountCreatedSuccessfulScreen extends StatefulWidget {
  final String? path;
  AccountCreatedSuccessfulScreen({super.key, this.path});

  @override
  State<AccountCreatedSuccessfulScreen> createState() => _AccountCreatedSuccessfulScreenState();
}

class _AccountCreatedSuccessfulScreenState extends State<AccountCreatedSuccessfulScreen> {
  void initState() {
    super.initState();
    // Timer(
    //     Duration(seconds: 3),
    //     () =>
    //         Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    //         widget.path == "pascodeCreated" || widget.path == "pascodeCreatedInapp" || widget.path == "ChangePassword"
    //             ? newprojectNavBar()
    //             : LoginScreen() ), (Route<dynamic> route) => false));


  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {

  
    //  Provider.of<OnboardingProvider>(context, listen: false).getUser();
    });
    return Scaffold(
      backgroundColor: newprojectColor.dark_blue,
      appBar: SecondaryAppBar(
        color: newprojectColor.dark_blue,
        allowPop: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Gap(40),
                Image.asset(
                  "assets/images/successful_image.png",
                  height: 300,
                  width: 300,
                ),
                Gap(40),
                Center(
                  child: TextHolder(
                    title: widget.path == "pascodeCreated"
                        ? "Passcode\nCreated"
                        : widget.path == "pascodeCreatedInapp"
                            ? "Passcode\nChanged"
                            : widget.path == "ChangePassword"
                                ? "Password\nChanged"
                                : "Account\nCreated",
                    size: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    align: TextAlign.center,
                  ),
                ),
                Gap(15),
                Center(
                  child: TextHolder(
                    title: widget.path == "pascodeCreated"
                        ? "Your passcode has been\nsuccessfully created."
                        : widget.path == "pascodeCreatedInapp"
                            ? "Your passcode has been\nsuccessfully changed"
                            : widget.path == "ChangePassword"
                                ? "Your password has been\nsuccessfully changed"
                                : "Your account has been\nsuccessfully created.",
                    size: 16,
                    color: Colors.white,
                    align: TextAlign.center,
                  ),
                ),
                Gap(30),
              ],
            ),
            Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF05081E),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
                      child: TextHolder(
                        title:
                            "💡 You will be automatically redirected to the ${widget.path == "pascodeCreated" || widget.path == "pascodeCreatedInapp" || widget.path == "ChangePassword" ? "Homepage" : "Loginpage"}",
                        align: TextAlign.center,
                        color: Colors.white,
                      ),
                    )),
                Gap(30)
              ],
            )
          ],
        ),
      ),
    );
  }
}
