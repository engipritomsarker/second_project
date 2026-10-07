import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';


class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 150.0,
          autoPlay: true,
          viewportFraction: 1,
          autoPlayInterval: Duration(seconds: 5)
      ),
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                        image: NetworkImage("https://i.ibb.co.com/hJFpqLBV/Moti-Mart.png"))
                ),
            );
          },
        );
      }).toList(),
    );
  }
}
