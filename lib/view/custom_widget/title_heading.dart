import 'package:flutter/material.dart';
import 'package:project_2/view/custom_widget/text.dart';

import '../../Colors/colors.dart';

class Titleheading extends StatelessWidget {
  Titleheading({super.key, required this.text, required this.onTap});

  String text;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: text,
          color: AppColors.secondaryColor,
          fWeight: FontWeight.bold,
          fSize: 15,
        ),
        InkWell(
          onTap: onTap,
          child: CustomText(
            text: "View All",
            color: AppColors.primaryColor,
            fWeight: FontWeight.bold,
            fSize: 14,
          ),
        ),
      ],
    );
  }
}