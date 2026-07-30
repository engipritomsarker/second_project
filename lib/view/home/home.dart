import 'package:flutter/material.dart';
import 'package:project_2/Colors/colors.dart';
import 'package:project_2/view/custom_widget/text.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
          Badge(
            label: Text("0"),
            backgroundColor: Colors.deepOrange,
            textColor: Colors.white,
            child: Icon(Icons.shopping_cart_outlined),
          ),

          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          spacing: 8,
          children: [
            SearchWidget(),
            CustomSlider(),
            Titleheading(text: 'Categories', onTap: () {},),
            SizedBox(
              height:120 ,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context,i)=> CategoryWidget(),),
            ),

            Titleheading(text: 'Featured Products', onTap: () {},),
            Titleheading(text: 'New Arrivals', onTap: () {},),
          ],
        ),
      ),
    );
  }
}


