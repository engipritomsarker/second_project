import 'package:flutter/material.dart';
import 'package:project_2/view/all_products/all_products.dart';
import 'package:project_2/view/home/home.dart';
import 'package:project_2/view/screen/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomeScreen(),
    );
  }
}



