import 'package:flutter/material.dart';
import 'package:project_2/Colors/colors.dart';
import 'package:project_2/view/all_products/all_products.dart';
import 'package:project_2/view/custom_widget/text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_2/view/home/Widget/featured_card.dart';
import '../custom_widget/custom_card.dart';
import '../custom_widget/search_bar.dart';
import '../custom_widget/slider.dart';
import '../custom_widget/title_heading.dart';
import 'Widget/category_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Row(
          spacing: 10,
          children: [
            CustomText(
              text: "MOTi",
              fWeight: FontWeight.bold,
              fSize: 25,
              color: Color(0xff00008B),
            ),
            CustomText(
              text: "Mart",
              fWeight: FontWeight.bold,
              fSize: 25,
              color: Colors.deepOrange,
            ),
          ],
        ),
        actions: [
          CustomCard(),
          SizedBox(width: 10),
        ],),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ListView(
          children: [
            SearchWidget(),

            SizedBox(height: 10,),

            CustomSlider(),

            SizedBox(height: 10,),

            Titleheading(text: 'Categories', onTap: () {},),

            SizedBox(height: 10,),

            categories(),

            SizedBox(height: 10,),

            Titleheading(text: 'Featured Products', onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProducts()));
            },),

            SizedBox(height: 10,),

           featured(),

            SizedBox(height: 10,),

            Titleheading(text: 'New Arrivals', onTap: () {},),

            arrivals(),

            SizedBox(height: 10,),

            Titleheading(text: 'Best Sealing Products', onTap: () {},),

            SizedBox(height: 10,),

            best_sealing_products(),

            SizedBox(height: 10,),

            Titleheading(text: 'Top Trending Products', onTap: () {},),

            SizedBox(height: 10,),

            best_sealing_products(),

          ],
        ),
      ),
    );
  }

  SizedBox categories() {
    return SizedBox(
      height:120 ,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (context,i)=> CategoryWidget(),),
    );
  }
  SizedBox featured() {
    return SizedBox(
           height: 185,
           child: ListView.builder(
             scrollDirection: Axis.horizontal,
             itemCount: 50,
             shrinkWrap: true,
               itemBuilder: (context,i)=> featuredCard(
                 isShowDiscount: true,
               ),
           ),
         );
  }
  SizedBox arrivals() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 50,
        shrinkWrap: true,
        itemBuilder: (context,i)=> featuredCard(),
      ),
    );
  }
  SizedBox best_sealing_products() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 50,
        shrinkWrap: true,
        itemBuilder: (context,i)=> Container(
          height:50,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://www.ryans.com/storage/products/main/havit-tw967-pro-black-tws-bluetooth-11745149684.webp"))
          ),
        ),
      ),
    );
  }

}




