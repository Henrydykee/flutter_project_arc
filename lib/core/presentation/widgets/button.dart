import 'package:allawee_business/core/presentation/widgets/text_holder.dart';
import 'package:flutter/material.dart';

import '../../platform/color.dart';

class AllaweeButton extends StatelessWidget {
  final Color? btnColor;
  final String? title;
  final Function()? onTap;
  final Color? textColor;
  final bool? isdisabled;
  final double? textSize;
  final double? height;
  final double? width;
  final String? assetImage;


  AllaweeButton(
      {this.btnColor,
      this.title,
      this.onTap,
        this.isdisabled = false,
      this.textColor,
      this.textSize,
        this.assetImage,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isdisabled == true ? (){} : () {
        WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
        onTap!();
      },
      child: Container(
        height: height,
        width: width ?? double.infinity,
        decoration: isdisabled == true ?
        BoxDecoration(
            border: Border.all(color: AllaweeBusinessColor.grey),
            borderRadius: BorderRadius.circular(5),
          color: AllaweeBusinessColor.light_green,
        )
            : BoxDecoration(
          border: Border.all(color: Colors.black,width: 0.5),
            borderRadius: BorderRadius.circular(5),
          image: DecorationImage(image: AssetImage(assetImage ?? "assets/images/button_background.png",),fit: BoxFit.fill)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Center(
            child: TextHolder(
              title: title  ?? "",
              size: textSize ?? 18,
              color: isdisabled == true ? AllaweeBusinessColor.grey : (textColor ?? Colors.black),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}


class ViewAllButton extends StatelessWidget {
  const ViewAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: AllaweeBusinessColor.light_green,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AllaweeBusinessColor.green)),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 11),
          child: TextHolder(
            title: 'View All',
            color: Colors.black,
            fontWeight: FontWeight.w600,
          )
      ),
    );
  }
}

