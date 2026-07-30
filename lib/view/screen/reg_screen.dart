
import 'package:flutter/material.dart';

import 'login.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Register here",style:
          TextStyle(color: Colors.blue,fontSize: 30,fontWeight:FontWeight.bold)
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:
            TextField(
              decoration: InputDecoration(
                  labelText:"Name",
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
              decoration: InputDecoration(
                  labelText: "Email",
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
              decoration: InputDecoration(
                  labelText:"Phone number",
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
              decoration: InputDecoration(
                  labelText:" Password",
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
              decoration: InputDecoration(
                  labelText:" Confirm password",
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
                  onPressed: (){},
                  style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue),
                  child: Text("Register",style:TextStyle(color: Colors.white)
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginScreen()));
              },
              child: Container(
                height: 50,
                width: 510,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text("I already have an account",style:TextStyle(fontSize: 18,color: Colors.blue),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
