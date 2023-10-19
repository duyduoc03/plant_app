import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/categories.dart';
import '../models/customers.dart';
import '../models/products.dart';

class ApiService {
  static Future<List<Categories>> fetchCategories() async {
    var response = await http.get(Uri.parse('http://localhost:8888/categories'));

    if (response.statusCode == 200) {
      String responseBody = utf8.decode(response.bodyBytes);
      Map<String, dynamic> jsonResponse = jsonDecode(responseBody);
      List<Categories> categories = [];
      if (jsonResponse['content'] != null && jsonResponse['content'] is List<dynamic>) {
        categories = List<Categories>.from(jsonResponse['content'].map((data) {
          return Categories.fromJson(data);
        }));
      }
      return categories;
    } else {
      throw Exception('Failed to fetch categories');
    }
  }

  static Future<List<Customers>> fetchCustomers() async {
    var response = await http.get(Uri.parse('http://localhost:8888/customer'));

    if (response.statusCode == 200) {
      String responseBody = utf8.decode(response.bodyBytes);
      Map<String, dynamic> jsonResponse = jsonDecode(responseBody);
      List<Customers> customers = [];
      if (jsonResponse['content'] != null && jsonResponse['content'] is List<dynamic>) {
        customers = List<Customers>.from(jsonResponse['content'].map((data) {
          return Customers.fromJson(data);
        }));
      }
      return customers;
    } else {
      throw Exception('Failed to fetch customers');
    }
  }

  static Future<List<Products>> fetchProducts() async {
    var response = await http.get(Uri.parse('http://localhost:8888/products?page=0&size=6'));

    if (response.statusCode == 200) {
      String responseBody = utf8.decode(response.bodyBytes);
      Map<String, dynamic> jsonResponse = jsonDecode(responseBody);
      List<Products> products = [];
      if (jsonResponse.containsKey('content') && jsonResponse['content'] != null && jsonResponse['content'] is List<dynamic>) {
        products = List<Products>.from(jsonResponse['content'].map((data) {
          return Products.fromJson(data);
        }));
      }
      return products;
    } else {
      throw Exception('Failed to fetch products: ${response.statusCode}');
    }
  }


}