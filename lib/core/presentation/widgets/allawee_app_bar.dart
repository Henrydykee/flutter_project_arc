import 'package:allawee_business/core/presentation/widgets/text_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../platform/color.dart';

class AllaweeAppBar extends StatelessWidget implements PreferredSize {
  final String? title;
  final String? image;
  final Function()? onTap;
  final Widget? widget;
  final Color? color;

  AllaweeAppBar({this.title, this.image, this.onTap, this.color, this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: AppBar(
        backgroundColor: AllaweeBusinessColor.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: TextHolder(
          title: title ?? "",
          size: 24,
          color: AllaweeBusinessColor.dark_blue,
          fontWeight: FontWeight.w600,
        ),
        actions: [
          widget ??
          GestureDetector(
              onTap: onTap ,
              child: SvgPicture.asset(
                image ?? "assets/svg/back_button.svg",
                height: 30,
                width: 30,
                colorFilter: ColorFilter.mode(
                  color ?? AllaweeBusinessColor.dark_blue,
                  BlendMode.srcIn
                ),
              )),
          SizedBox(
            width: 20,
          )
          // Image.asset(Assets.search,height: 30,width: 30,color: EquityColor.dark_blue,)
        ],
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => new Size(25, 50);
}

class AllaweeSecondaryAppBar extends StatelessWidget implements PreferredSize {
  const AllaweeSecondaryAppBar({
    this.title,
    this.actionOnTap,
    this.image,
    this.bottom,
    this.color,
    this.textColor,
    this.backbuttonTap,
    this.allowPop = true,
    this.leading,
    this.searchOnTap,
    this.enableTransperentBackbutton = false,
    this.actionWidget,
    this.style,
    this.enableSearchIcon = false,
    Key? key,
  }) : super(key: key);

  final String? title;
  final String? image;
  final Color? color;
  final Function()? actionOnTap;
  final Function()? searchOnTap;
  final Widget? bottom;
  final Color? textColor;
  final bool? allowPop;
  final bool? enableSearchIcon;
  final bool? enableTransperentBackbutton;
  final Function()? backbuttonTap;
  final Widget? leading;
  final Widget? actionWidget;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color ?? AllaweeBusinessColor.white,
      elevation: 0.0,
      centerTitle: true,
      // bottom: bottom as PreferredSizeWidget,
      leading: leading ?? Visibility(
        visible: allowPop ?? false,
        child: GestureDetector(
          onTap: backbuttonTap ?? () {
            FocusScope.of(context).requestFocus(FocusNode());
            Navigator.of(context).pop();
          } ,
          child: Visibility(
            visible: allowPop == false ? false : true,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: enableTransperentBackbutton == true ? Image.asset("assets/images/bb_tr.png",height: 60,width: 60,fit: BoxFit.contain,) : Image.asset("assets/images/back_button.png",height: 60,width: 60,fit: BoxFit.contain,),
            ),
          ),
        ),
      ),
      title:TextHolder(
        title: title ?? "",
        color: textColor ?? AllaweeBusinessColor.white,
        fontWeight: FontWeight.w700,
        size: 23,
      ),


      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Spacer(),
      //     Expanded(
      //       child:
      //     ),
      //     Spacer(),
      //   ],
      // ),

      actions: [
        if(actionWidget == null) SizedBox() else actionWidget!,
       enableSearchIcon == true ?  GestureDetector(
         onTap: searchOnTap,
         child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search,color: AllaweeBusinessColor.white,),
          ),
       ) : SizedBox()
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => new Size(25, 50);
}
