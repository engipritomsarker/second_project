import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:InputDecoration(
        contentPadding:EdgeInsets.symmetric(horizontal:10),
        hintText: "Search for Products",
        suffixIcon: Icon(Icons.search),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.grey)
        ),
      ) ,
    );
  }
}
