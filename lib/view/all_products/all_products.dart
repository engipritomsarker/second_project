import 'package:flutter/material.dart';
import 'package:project_2/Colors/colors.dart';
import 'package:project_2/view/all_products/widget/filter_section.dart';
import 'package:project_2/view/all_products/widget/products_card.dart';
import 'package:project_2/view/custom_widget/text.dart';

import '../custom_widget/custom_card.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "All Products",fWeight: FontWeight.bold,fSize: 25,),actions: [
        Icon(Icons.search),
        SizedBox(width: 10),
        CustomCard(),
        SizedBox(width: 10),
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            FilterSection(),
             SizedBox(height: 10),
             Expanded(
               child: GridView.builder(
                 shrinkWrap: true,
                 itemCount: 10,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                     childAspectRatio: .8),
                   itemBuilder: (context,i)=>Productcard()
               ),
             ),
          ],
        ),
      ),
    );
  }
}




