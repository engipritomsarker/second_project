import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:project_2/view/custome_widget/text.dart';

import 'color.dart';

class TitleHeading extends StatelessWidget {
  const TitleHeading({
    super.key, required this.text, required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(text:text,fSize: 15,fWeight: FontWeight.bold,),
        InkWell(
          borderRadius: BorderRadius.circular(5),
            onTap: onTap,
            child: CustomText(text: "View All",fSize: 15,fWeight: FontWeight.bold,color:AppColors.mainColor ,)
        )
      ],
    );
  }
}