import 'package:flutter/material.dart';

import '../../custom_widget/text.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:10 ),
      child: Column(
        spacing: 5,
        children: [
          CircleAvatar(
            radius:35 ,
            backgroundImage: NetworkImage("https://s.alicdn.com/@sc04/kf/He753e3f079154de6994709e3f6b69b3cE.jpg_300x300.jpg"),
          ),
          CustomText(text: "Electronics",fWeight: FontWeight.bold,)
        ],
      ),
    );
  }
}