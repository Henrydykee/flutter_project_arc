import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TextHolder extends StatelessWidget {
  final String? title;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  final TextAlign? align;
  final Function? onTap;
  final double? fontHeight;
  final TextStyle? textStyle;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final TextDecoration? decoration;

  TextHolder(
      {required this.title,
        this.color,
        this.size,
        this.fontWeight,
        this.align,
        this.textStyle,
        this.fontHeight,
        this.decoration,
        this.maxLines,
        this.textOverflow,
        this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Text(
        title!,
        maxLines: maxLines,
        overflow: textOverflow,
        textAlign: align,
        style: textStyle ?? TextStyle(
          color: color ?? Colors.black,
          fontSize: size ?? 16,
            height: fontHeight,
          fontWeight: fontWeight ?? FontWeight.w400,
            decoration: decoration
        ),
      ),
    );
  }
}

class NumberTextHolder extends StatelessWidget {
  final String? title;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  final TextAlign? align;
  final Function? onTap;
  final double? fontHeight;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final String? symbol;
  final TextDecoration? decoration;

  NumberTextHolder(
      {required this.title,
        this.color,
        this.size,
        this.fontWeight,
        this.align,
        this.symbol,
        this.fontHeight,
        this.decoration,
        this.maxLines,
        this.textOverflow,
        this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Text(
        title!,
        maxLines: maxLines,
        overflow: textOverflow,
        textAlign: align,
        style: TextStyle(
            color: color ?? Colors.black,
            fontSize: size ?? 16,
            height: fontHeight,
            fontFamily: "SpaceGrotesk",
            fontWeight: fontWeight ?? FontWeight.w400,
            decoration: decoration
        ),
      ),
    );
  }
}



class MoneyTextHolder extends StatelessWidget {
  final int? title;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  final TextAlign? align;
  final Function? onTap;
  final double? fontHeight;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final String? symbol;
  final TextDecoration? decoration;

  MoneyTextHolder(
      {required this.title,
        this.color,
        this.size,
        this.fontWeight,
        this.align,
        this.symbol,
        this.fontHeight,
        this.decoration,
        this.maxLines,
        this.textOverflow,
        this.onTap});

  @override
  Widget build(BuildContext context) {

    final currencyFormat = NumberFormat.currency(
      locale: 'en_US',
      symbol: symbol ?? "",
    );
    String formattedAmount = currencyFormat.format( (title ?? 0) /100);
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Text(
        formattedAmount,
        maxLines: maxLines,
        overflow: textOverflow,
        textAlign: align,
        style: TextStyle(
            color: color ?? Colors.black,
            fontSize: size ?? 16,
            height: fontHeight,
            fontFamily: "SpaceGrotesk",
            fontWeight: fontWeight ?? FontWeight.w400,
            decoration: decoration
        ),
      ),
    );
  }
}