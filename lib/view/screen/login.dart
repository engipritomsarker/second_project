import 'dart:math';
import 'package:flutter/material.dart';
import 'package:project_2/view/screen/reg_screen.dart';

import '../home/home.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://i.ibb.co.com/DDbLpFgk/end-Tech.png",height: 100,width: 100,),
          Text("Login here",style:
          TextStyle(color: Colors.blue,fontSize: 25,fontWeight:FontWeight.bold)
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:
            TextField(
              controller: email,
              decoration: InputDecoration(
                  labelText:" Email address or phone number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:
            TextField(
              controller: password,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 345,
                child: ElevatedButton(
                  onPressed: (){
                    if(email.text=="pritom@gmail.com"&& password.text=="1234"){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>HomeScreen()));
                    }else{
                      print("wrong email or password");
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("wrong user"),backgroundColor: Colors.red));
                    }
                  },
                  style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue),
                  child: Text("Login",style:TextStyle(color: Colors.white)
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: (){},
            child: Text("Forgotten password?",style:TextStyle(fontSize: 15)
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>RegScreen()));
              },
              child: Container(
                height: 50,
                width: 510,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Center(
                    child: Text("Create new account",style:TextStyle(fontSize: 18,color: Colors.blue),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
