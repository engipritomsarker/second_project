import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
   CustomText({super.key,required this.text,this.maxLIne,this.color,this.fSize,this.fWeight,this.textOverflow,this.textDeco});

  String text;
  int? maxLIne;
  Color? color;
  double? fSize;
  FontWeight? fWeight;
  TextOverflow? textOverflow;
  TextDecoration? textDeco;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines:maxLIne?? 1,
      style:TextStyle(
        color:color?? Colors.black,
        fontSize:fSize?? 12,
        fontWeight:fWeight?? FontWeight.w400,
        overflow:textOverflow?? TextOverflow.ellipsis,
        decoration:textDeco?? TextDecoration.none

      ) ,


    );
  }
}
