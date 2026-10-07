import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

import '../../custome_widget/custom_shoping_card.dart';

class ProductsDetails extends StatefulWidget {
  const ProductsDetails({super.key});

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CustomShopingCard(),
          SizedBox(width: 10,)
        ],
      ),
    );
  }
}
