// ignore_for_file: deprecated_member_use

import 'package:new_project/core/presentation/widgets/text_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import '../../platform/color.dart';

class newprojectTextField extends StatelessWidget {
  final String? hinttitle;
  final String? title;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final int? maxLength;
  final Widget? suffixIcon;
  final Widget? suffix;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? currentFocusNode;
  final FocusNode? nextFocusNode;
  final Color? cursorColor;
  final Color? fillColor;
  final Color? textColor;
  final bool? readOnly;
  final double? fontSize;
  final String? value;
  final bool? autofocus;
  final bool? obscureText;
  final bool showTitle;
  final Widget? counter;
  final TextStyle? hintstyle;
  final Function()? onTap;
  final int? maxLines;
  final String? Function(String?)? validator;
  final Function(String)? onChange;

  newprojectTextField(
      {this.onTap,
      this.maxLength,
        this.textColor,
      this.obscureText = false,
      this.hinttitle,
      this.controller,
        this.autofocus,
        this.suffix,
      this.keyboardType,
      this.prefix,
        this.counter,
      this.maxLines,
      this.suffixIcon,
      this.inputFormatters,
        this.hintstyle,
      this.currentFocusNode,
      this.nextFocusNode,
      this.title,
        this.showTitle =true,
      this.cursorColor,
      this.readOnly = false,
      this.fontSize,
      this.onChange,
      this.fillColor,
      this.value,
      this.prefixIcon,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       showTitle == false ? SizedBox() : TextHolder(
          title: title ?? "",
          color: newprojectColor.grey,
          size: 16,
          fontWeight: FontWeight.w600,
        ),
        Gap(8),
        TextFormField(
          onTap: onTap,
          obscureText: obscureText ?? false,
          readOnly: readOnly ?? false,
          autofocus: autofocus ?? true,
          onChanged: onChange,
          controller: controller,
          maxLength: maxLength,
          validator: validator,
          textCapitalization: TextCapitalization.sentences,
          keyboardType: keyboardType ?? TextInputType.text,
          cursorColor: cursorColor ?? newprojectColor.black_3,
          focusNode: currentFocusNode,
          inputFormatters: inputFormatters,
          maxLines: maxLines ?? 1,
          style: TextStyle(
            fontFamily: "Space Grotesk",
            color: textColor ?? Colors.black
          ) ,
          onEditingComplete: () {
            FocusScope.of(context).requestFocus(nextFocusNode ?? FocusNode());
          },
          onFieldSubmitted: (_) {
            FocusScope.of(context).requestFocus(nextFocusNode ?? FocusNode());
          },
          decoration: InputDecoration(
              suffixIcon: suffixIcon,
              suffix: suffix,
              counterText: "",
              counter: counter,
              fillColor: fillColor ?? newprojectColor.white,
              filled: true,
              hintStyle: hintstyle,
              prefix: prefix,
              prefixIcon: prefixIcon,
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: newprojectColor.black_3.withOpacity(0.5)),
                    ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: newprojectColor.green),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: newprojectColor.black_3.withOpacity(0.5)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: newprojectColor.green),
              ),
              hintText: hinttitle,
              helperStyle: TextStyle(color: newprojectColor.black_3, fontSize: fontSize ?? 14)),
        ),
      ],
    );
  }
}
