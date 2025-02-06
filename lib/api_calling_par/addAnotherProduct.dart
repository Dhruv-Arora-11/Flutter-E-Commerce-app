import 'dart:convert';
import 'package:http/http.dart' as http;

class Addanotherproduct {
  Future<bool> addProduct(String pro_name, String pro_price, String image) async {
    final url = Uri.parse("https://ecommerce-backend-y3w4.onrender.com/products/post_product"); // Correct endpoint

    await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "pro_name": pro_name,
        "pro_price": pro_price, 
        "image": image
      }),
    );
    return true;
  }
}
