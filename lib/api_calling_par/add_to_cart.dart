import 'dart:convert';

import 'package:http/http.dart' as http;

class AddToCart {
  Future<bool> addToCart(String emial , List cartList)async{
    final url = Uri.parse("https://ecommerce-backend-y3w4.onrender.com/products/addToCart") ;
    final response =await http.put(
      url,
      body: jsonEncode({
        "email":emial,
        "cartList":cartList,
      }),
      headers: {"Content-Type": "application/json"},
      );

    if(response.statusCode == 200){
      return true;
    }
    return false;
  }
}