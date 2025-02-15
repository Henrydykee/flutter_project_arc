
import 'package:new_project/core/presentation/widgets/text_holder.dart';
import 'package:flutter/material.dart';

class ViewPagerHeader extends StatelessWidget {
  final String title;
  final Function onTap;
  final Color color;
  final Color borderColor;
  final Color? textColor;

  ViewPagerHeader(
      {required this.title,
        required this.onTap,
        required this.borderColor,
        required this.color,
        this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap as void Function()?,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color ,
          border: Border.all(color: borderColor )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: TextHolder(
              title: title,
              color:  Colors.black,
              size: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}