// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_project/core/platform/color.dart';
import 'package:new_project/core/presentation/widgets/text_holder.dart';

class CustomTextField extends StatelessWidget {
  final String? title;
  final String? hinttitle;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final String? prefixText;
  final int? maxLength;
  final Widget? suffixIcon;
  final Widget? suffix;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? currentFocusNode;
  final FocusNode? nextFocusNode;
  final Color? cursorColor;
  final bool readOnly;
  final double? fontSize;
  final TextAlign? align;
  final String? value;
  final bool obscureText;
  final bool showTittle;
  final Function? onTap;
  final Function(String)? onchanged;
  final EdgeInsetsGeometry? padding;
  final String? Function(String?)? validator;

  CustomTextField(
      {this.onTap,
      this.title,
      this.onchanged,
      this.maxLines,
      this.maxLength,
      this.obscureText = false,
      this.hinttitle,
      this.controller,
      this.padding,
      this.keyboardType,
      this.prefix,
      this.suffix,
      this.prefixText,
      this.align,
      this.suffixIcon,
      this.inputFormatters,
      this.currentFocusNode,
      this.nextFocusNode,
      this.cursorColor,
      this.showTittle = true,
      this.readOnly = false,
      this.fontSize,
      this.value,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       showTittle == true ? TextHolder(
          title: title ?? "",
          color: newprojectColor.grey_2,
          size: 15,
          fontWeight: FontWeight.w500,
        ) : SizedBox(),
        TextFormField(
          onTap: onTap as void Function()?,
          obscureText: obscureText,
          readOnly: readOnly,
          autofocus: true,
          controller: controller,
          maxLength: maxLength,
          maxLines: maxLines ?? 1,
          onChanged: onchanged,
          textCapitalization: TextCapitalization.sentences,
          validator: validator,
          textAlign: align ?? TextAlign.left,
          keyboardType: keyboardType ?? TextInputType.text,
          cursorColor: cursorColor ?? newprojectColor.grey_2,
          focusNode: currentFocusNode,
          inputFormatters: inputFormatters,
          style: TextStyle(color: cursorColor, fontSize: 14),
          onEditingComplete: () {
            FocusScope.of(context).requestFocus(nextFocusNode ?? FocusNode());
          },
          onFieldSubmitted: (_) {
            FocusScope.of(context).requestFocus(nextFocusNode ?? FocusNode());
          },
          decoration: InputDecoration(
            contentPadding: padding ?? EdgeInsets.only(left: 10, right: 10),
            hintText: hinttitle,
            //counter: Text(""),
            fillColor: Color(0xFFF3F5F7),
            filled: true,
            //labelText: hinttitle,
            suffix: suffix,
            prefixText: prefixText,
            prefix: prefix,
            prefixStyle: TextStyle(color: Colors.black),
            labelStyle: TextStyle(fontSize: 16),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                borderRadius: BorderRadius.circular(3.0)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                borderRadius: BorderRadius.circular(3.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                borderRadius: BorderRadius.circular(3.0)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                borderRadius: BorderRadius.circular(3.0)),
          ),
        ),
      ],
    );
  }
}
