import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

import '../../../Colors/colors.dart';
import '../../custom_widget/text.dart';

class Productcard extends StatelessWidget {
  const Productcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit:BoxFit.cover,
                        image: NetworkImage("https://i.ibb.co.com/yn68QnLx/TWS.jpg"))),
              ),
              Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.favorite_border)
                  )
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: "Hoco TwsPro 99",fWeight: FontWeight.bold,fSize: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: " ৳ 1,299",fWeight: FontWeight.bold,fSize: 15,),
                    CustomText(text: " ৳ 2,199",fSize: 15,color: Colors.grey,textDeco: TextDecoration.lineThrough,fWeight: FontWeight.bold,),
                    CustomText(text: " -41%",fSize: 15,color: AppColors.primaryColor,fWeight: FontWeight.bold,),
                  ],
                ),
                Row(
                  spacing: 15,
                  children: [
                    Icon(Icons.star_half,color: AppColors.primaryColor,size: 18,),
                    CustomText(text: "4.5",fSize: 15,fWeight: FontWeight.bold,),
                    CustomText(text: "(256)",fSize: 15,color: Colors.black38,fWeight: FontWeight.bold,)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}