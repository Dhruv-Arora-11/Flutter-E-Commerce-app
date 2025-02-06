import 'dart:convert';

import 'package:http/http.dart' as http;

class Getallproducts {

  Future<List> getAllProducts()async{
    List product_images =[];
    List product_price =[];
    List product_names =[];
    final url = Uri.parse("https://ecommerce-backend-y3w4.onrender.com/products/get_all_products");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final allProducts_ref = json.decode(response.body);
      List allProducts = allProducts_ref["products"];

      for(int i = 0 ; i<allProducts.length ; i++){
        product_names.add(allProducts[i]["pro_name"]);
        product_price.add(allProducts[i]["pro_price"]);
        product_images.add(allProducts[i]["image"]);
      }

      List allPro = [product_names , product_price , product_images];
      return allPro;
      
    } else {
      throw Exception('Failed to load products');
    }

  }
}