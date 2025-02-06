import 'package:ecommerce_nike/models/shoe_model.dart';
import 'package:flutter/material.dart';

import '../Components/Shoetile.dart';

class CartPage extends StatelessWidget {
  final List<Shoe> shoeList; // Define shoe_list here

  // Constructor to initialize shoeList
  CartPage({Key? key, required this.shoeList}) : super(key: key);

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
          "Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: shoeList.length,
        itemBuilder: (context, index) {
          return ShoeTile(
            shoe: shoeList[index],
            index: index,
            addToCart: (index) {}, // No action needed in cart
          );
        },
      ),
    );
  }
}
