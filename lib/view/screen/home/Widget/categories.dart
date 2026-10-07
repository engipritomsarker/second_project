import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

import '../../../custome_widget/text.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Column(
        spacing: 5,
        children: [
          CircleAvatar(
            radius: 32,backgroundImage: NetworkImage("https://i.ibb.co.com/p6BhWqSz/Airpot.jpg"),),
          CustomText(text: "Electronic",fWeight: FontWeight.bold,)
        ],
      ),
    );
  }
}