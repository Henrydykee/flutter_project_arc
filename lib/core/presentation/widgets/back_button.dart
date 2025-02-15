import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class newprojectBackButton extends StatelessWidget {
  final Function()? onTap;

  newprojectBackButton({this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap ??
            () {
              Navigator.of(context).pop();
            },
        child: Container(
            height: 60,
            width: 50,
            child: SvgPicture.asset(
              "assets/svg/back_button.svg",
              height: 24,
              width: 24,
              // fit: BoxFit.cover,
            )));
  }
}
