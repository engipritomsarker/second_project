import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:project_2/view/custome_widget/color.dart';
import 'package:project_2/view/custome_widget/text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../custome_widget/custom_shoping_card.dart';
import '../../custome_widget/search_bar.dart';
import '../../custome_widget/slider.dart';
import '../../custome_widget/title_heading.dart';

import '../all_product/all_product.dart';
import 'Widget/categories.dart';
import 'feauture_products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(),
      appBar: AppBar(
        title:Row(
          spacing: 10,
          children: [
            CustomText(text: "MOTi",fSize:25 ,fWeight: FontWeight.bold,color:Color(0xff00008B),),
            CustomText(text: "Mart",fSize: 25,fWeight: FontWeight.bold,color: Colors.deepOrange,),
          ],),
        actions: [
          CustomShopingCard(),
        SizedBox(width: 10,)
      ],),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SearchWidget(),
            SizedBox(height:8),
            CustomSlider(),
            SizedBox(height:10),
            TitleHeading(text: 'Categories', onTap: (){},),
            SizedBox(height:8),
            categoties() ,
            SizedBox(height:10),
            TitleHeading(text: 'Featured Products', onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AllProduct()));
            },),
            SizedBox(height:8),
            FeaturedProducts(),
            SizedBox(height:10),
            TitleHeading(text: 'New Arrivals', onTap: (){},),
            SizedBox(height:8),
            NewArrivals(),
            SizedBox(height:10),
            TitleHeading(text: 'Best Seller Products', onTap: (){},),
            SizedBox(height:8),
            BestSeller(),
            SizedBox(height:10),
            TitleHeading(text: 'Top Trend Products', onTap: (){},),
            SizedBox(height:8),
            BestSeller(),
          ],
        ),
      ),
    );
  }

  SizedBox BestSeller() {
    return SizedBox(
            height:110,
            child: ListView.builder(
              scrollDirection:Axis.horizontal ,
              itemCount: 100,
              shrinkWrap:true,
              itemBuilder: (context,i)=> Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
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
              ),
            ),
          );
  }

  SizedBox NewArrivals() {
    return SizedBox(
            height:165,
            child: ListView.builder(
                scrollDirection:Axis.horizontal ,
                itemCount: 100,
                shrinkWrap:true,
                itemBuilder: (context,i)=> feauture_card(),
            ),
          );
  }

  SizedBox FeaturedProducts() {
    return SizedBox(
            height:180,
            child: ListView.builder(
              scrollDirection:Axis.horizontal ,
                itemCount: 100,
                shrinkWrap:true,
                itemBuilder: (context,i)=> feauture_card(
                  isShowDiscount: true,
                ),
            ),
          );
  }

  SizedBox categoties() {
    return SizedBox(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection:Axis.horizontal ,
              itemCount: 45,
              itemBuilder: (context,i)=>CategoriesWidget(),),
          );
  }
}


