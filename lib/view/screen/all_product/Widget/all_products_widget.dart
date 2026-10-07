import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

import '../../../custome_widget/color.dart';
import '../../../custome_widget/text.dart';

class AllProductsWidget extends StatelessWidget {
  const AllProductsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child:Column(
        children: [
          Stack(
            alignment:Alignment.topRight ,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://smartdeal.com.bd/public/uploads/all/e8Htgf2ImjYwx8whYRVgwcVw6AsSkvV7wT0AGdLG.webp"))
                ),
              ),
              Positioned(
                top: -4,
                right: -4,
                child: IconButton(
                    onPressed: (){},
                    icon:Icon(Icons.favorite_border,size: 20,)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomText(text: "Bluetooth Calling Smart Watch",fWeight: FontWeight.bold,fSize: 15,),
                Row(
                  spacing: 15,
                  children: [
                    CustomText(text: "৳ 2090",fWeight: FontWeight.bold,),
                    CustomText(text: "৳ 9500",fWeight: FontWeight.bold,tDeco: TextDecoration.lineThrough,color: Colors.black38,),
                    CustomText(text: "-78%",fWeight: FontWeight.bold,color:AppColors.mainColor ,),
                  ],
                ),
                Row(
                  spacing: 7,
                  children: [
                    Icon(Icons.star_half,color: AppColors.mainColor,size: 17,),
                    CustomText(text: "4.5",fWeight: FontWeight.bold,),
                    CustomText(text: "(25)",fWeight: FontWeight.bold,color: Colors.grey,),
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