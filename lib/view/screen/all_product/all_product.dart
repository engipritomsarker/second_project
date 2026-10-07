import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:project_2/view/custome_widget/color.dart';
import 'package:project_2/view/custome_widget/text.dart';

import '../../custome_widget/custom_shoping_card.dart';
import 'Widget/all_products_widget.dart';
import 'Widget/filter_section.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "All Products",fSize: 25,fWeight: FontWeight.bold,),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),
          CustomShopingCard(),
          SizedBox(width: 10,)
        ]
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FilterSection(),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 50,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .75 ),
                itemBuilder: (context,i)=> AllProductsWidget()
            ),
          ),
        ],
      ),
    );
  }
}



