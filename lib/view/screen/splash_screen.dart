
import 'package:flutter/material.dart';

import 'login.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    timeFun();
    super.initState();
  }
  timeFun() async{
    await Future.delayed(Duration(seconds: 10)).then((onValue){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
          child: Image.network("https://i.ibb.co.com/DDbLpFgk/end-Tech.png",height: 300,width: 300,)
      ) ,
    );
  }
}
