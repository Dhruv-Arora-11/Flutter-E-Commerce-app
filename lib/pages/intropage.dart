import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'HomePage.dart';

class intro_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: 200,
          ),
          Expanded(child: Lottie.asset("assets/logo.json")),
          Container(
            height: 50,
            child: const Text("Just Do It", style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
          ),

            const Text("Brand new sneakers and custom kicks ",style: TextStyle(
              color: Colors.white,
              wordSpacing: 2,
              letterSpacing: 2,
            ),),

          const Text("Made with premium quality",style: TextStyle(
            color: Colors.white,
            wordSpacing: 2,
            letterSpacing: 2,
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
              height: 60,
              width: double.infinity, // Full width
              color: Colors.white, // White background
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Homepage(),),);
                },
                child: const Center(
                  child: Text(
                    "Shop Now",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.black, // Black text
                    ),
                  ),
                ),
              ),
            ),
          ),


          )
        ],
      )
    );
  }

}