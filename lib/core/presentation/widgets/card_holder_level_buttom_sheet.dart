import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'text_holder.dart';

class FrequencyOptionsModal extends StatelessWidget {
  final Function(String) onOptionSelected;
  final bool? isPhysicalCard;

  FrequencyOptionsModal({
    required this.onOptionSelected,
    required this.isPhysicalCard,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Gap(25),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: TextHolder(
            title: "Set permission",
            size: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Gap(25),
        Divider(
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              FrequencyOption(
                icon: "🤑",
                title: "Spender",
                description: "Can only spend from card",
                onSelected: () {
                  onOptionSelected("Spender");
                },
              ),
              Gap(8),
              FrequencyOption(
                icon: "🏦",
                title: "Funder",
                description: "Can spend and fund this card",
                onSelected: () {
                  onOptionSelected("Funder");
                },
              ),
              Gap(8),
              FrequencyOption(
                icon: "👨‍💼",
                title: "Manager",
                description: "Can spend, fund, and edit this card",
                onSelected: () {
                  onOptionSelected("Manager");
                },
              ),
              if (isPhysicalCard!) ...[
                Gap(8),
                FrequencyOption(
                  icon: "👑",
                  title: "Owner",
                  description: "Has exclusive control, and card activities can’t be monitored",
                  onSelected: () {
                    onOptionSelected("Owner");
                  },
                ),
              ] else
                SizedBox(),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/svg/info_icon.svg"),
                  Gap(1),
                  TextHolder(
                    title: "Select an option to proceed",
                    size: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              Gap(20),
            ],
          ),
        ),
      ],
    );
  }
}

class FrequencyOption extends StatelessWidget {
  final String icon;
  final String title;
  final String description;
  final VoidCallback onSelected;

  FrequencyOption({
    required this.icon,
    required this.title,
    required this.description,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xFFF2F2F2), width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              TextHolder(
                title: icon,
                size: 20,
              ),
              Gap(14),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextHolder(
                      title: title,
                      size: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    Gap(4),
                    TextHolder(
                      title: description,
                      size: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}