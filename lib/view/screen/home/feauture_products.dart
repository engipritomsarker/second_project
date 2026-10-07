import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

import '../../custome_widget/color.dart';
import '../../custome_widget/text.dart';


class feauture_card extends StatelessWidget {
  const feauture_card({
    super.key, this.isShowDiscount,
  });

  final bool? isShowDiscount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height:100 ,
        width: 115,
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start ,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit:BoxFit.fill,
                      image: NetworkImage("https://i.ibb.co.com/yn68QnLx/TWS.jpg")
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: "Hoco MMJ-24 TWS Wireless Earbuds",fWeight: FontWeight.bold,fSize: 14,),
                  CustomText(text: "৳ 1299",fWeight: FontWeight.bold,),
                  isShowDiscount == true ? Row(
                    spacing: 17,
                    children: [
                      CustomText(text: "৳ 2199",fWeight: FontWeight.bold,tDeco:TextDecoration.lineThrough,color: Colors.black54,),
                      CustomText(text: "-41%",fWeight: FontWeight.bold,color: AppColors.mainColor,),
                    ],
                  ): SizedBox()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}