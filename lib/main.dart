import 'package:flutter/material.dart';
import 'package:project_2/view/screen/all_product/Widget/filter_section.dart';
import 'package:project_2/view/screen/all_product/all_product.dart';

import 'package:project_2/view/screen/home/home.dart';
import 'package:project_2/view/screen/products_details/products_details.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         home: AllProduct(),
    );
  }
}



