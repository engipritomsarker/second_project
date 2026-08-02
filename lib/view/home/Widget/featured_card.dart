import 'package:flutter/material.dart';
import '../../../Colors/colors.dart';
import '../../custom_widget/text.dart';



class featuredCard extends StatelessWidget {
   featuredCard({
    super.key,this.isShowDiscount
  });

  bool? isShowDiscount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:100,
      width: 120,
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height:90,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://www.ryans.com/storage/products/main/havit-tw967-pro-black-tws-bluetooth-11745149684.webp"))
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: "Havit TW967 Pro Black TWS Bluetooth Earbuds",fWeight: FontWeight.bold,),
                  CustomText(text: "৳ 1499",fWeight: FontWeight.bold,),
                  isShowDiscount == true ?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: "৳ 1499",fWeight: FontWeight.bold,textDeco: TextDecoration.lineThrough,color: Colors.grey,),
                      CustomText(text: "-30%",fWeight: FontWeight.bold,color: AppColors.primaryColor,),
                    ],
                  ):SizedBox(),
                  isShowDiscount==true?
                  CustomText(text: "৳ 450",fWeight: FontWeight.bold,) : SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}