import 'package:flutter/material.dart';

class seeAllpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("All shoes",style: TextStyle(
          color: Colors.white
        ),),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      body:Center(
        child: Text("This is the page in which all the shoes will appear but actually I am too lazy and too tired to make another page for the same thing evenn when I do not have more shoes and that's make no sense at all 🤦‍♂️...... 💢💢okay it do make sense but I am not in a mood and I will do it afterwards😤😤" ,
        style: TextStyle(
          color: Colors.white,
          height: 2,
          letterSpacing: 2,
          wordSpacing: 2
        ),),
      ) ,


    );
  }

}