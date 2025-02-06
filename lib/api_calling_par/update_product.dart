import 'dart:convert';
import 'package:http/http.dart' as http;

class UpdateProduct {
  Future<bool> update_product(String pro_name, String pro_price, String image , String newname , String newImage , String newprice) async {
    final url = Uri.parse("https://ecommerce-backend-y3w4.onrender.com/products/post_product");

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "pro_name": pro_name,
        "pro_price": pro_price, 
        "image": image,
        "newProName":newname,
        "newProPrice":newprice,
        "newImage":newImage,
      }),
    );

    return response.statusCode == 201;
  }
}
