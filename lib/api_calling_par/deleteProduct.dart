import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;

class Addanotherproduct {

  Future<bool> deleteProduct(String pro_name , String pro_price , String image)async{
    final url = Uri.parse("https://ecommerce-backend-y3w4.onrender.com/products/delete_product");
    final response = await http.delete(url , 
    body: jsonEncode({
      "pro_name":pro_name,
      "pro_price":pro_price,
      "image":image
    }));
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}