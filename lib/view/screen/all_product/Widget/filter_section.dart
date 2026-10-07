import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

import '../../../custome_widget/text.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 5,
          children: [
            Icon(Icons.tune,size: 15,),
            CustomText(text: "Filter",fSize: 15,fWeight: FontWeight.bold,)
          ],
        ),
        Row(
          spacing: 5,
          children: [
            CustomText(text: "Sort By",fSize: 15,fWeight: FontWeight.bold,),
            Icon(Icons.keyboard_arrow_down_outlined,size: 15,),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            Icon(Icons.grid_view,size: 15,),
            CustomText(text: "Grid",fSize: 15,fWeight: FontWeight.bold,)
          ],
        )
      ],
    );
  }
}