import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';


class CustomShopingCard extends StatelessWidget {
  const CustomShopingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Badge(
      label: Text("0",),
      textColor: Colors.white,
      backgroundColor: Colors.deepOrange,
      child: Icon(Icons.shopping_cart_outlined),
    );
  }
}