import 'package:flutter/material.dart';

class aboutpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
          iconTheme: IconThemeData(
              color: Colors.white
          ),
        title: Text(
          "About App",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),

        )

      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 258),
                child: Text(
                  "This is an Ecommerce app created by Dhruv",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),
                ),
              ),
            ),
          ),
          Container(
            height: 30,
            child: Center(
              child: Text(
                "I have created this app on 19/06/2024",style: TextStyle(
                  color: Colors.white,
                fontWeight: FontWeight.w500
              ),
              ),
            ),
          ),
          Container(
            height: 50,
            child: Center(
              child: Text(
                "I hope this will match your expectations😄😄",style: TextStyle(
                  color: Colors.white,
                fontWeight: FontWeight.w500
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}