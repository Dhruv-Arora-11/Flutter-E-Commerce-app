import 'package:ecommerce_nike/models/shoe_model.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final Function(int) addToCart; // Function to add to cart
  final int index;

  ShoeTile({Key? key, required this.shoe, required this.addToCart, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      constraints: BoxConstraints(
        // Minimum height for the container
      ),
      decoration: BoxDecoration(
        color: Colors.grey[850], // Add a background color for better visibility
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align content to the start
        children: [
          Image.asset(
            shoe.imagepath,
            height: 260, // Set a height for the image
            fit: BoxFit.cover, // Adjust the image to cover the allocated space
          ),
          SizedBox(height: 10), // Add spacing between elements
          Text(
            shoe.name,
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5), // Add spacing between elements
          Text(
            shoe.discription,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10), // Add spacing between elements
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                shoe.price,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              InkWell(
                onTap: () {
                  addToCart(index); // Call addToCart with index
                },
                child: Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
