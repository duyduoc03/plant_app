import 'package:http/http.dart' as http;
import 'dart:convert';

class Categories {
  final int id;
  final String name;
  final String? thumbnail;

  Categories({
    required this.id,
    required this.name,
    required this.thumbnail,
  });

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      id: json['id'],
      name: json['name'],
      thumbnail: json['thumbnail'],
    );
  }
}

// Future<List<Categories>> fetchCategories() async {
//   var response = await http.get(
//     Uri.parse('http://localhost:8888/categories'),
//   );
//   if (response.statusCode == 200) {
//     String responseBody = utf8.decode(response.bodyBytes); // Giải mã dữ liệu với UTF-8
//     Map<String, dynamic> jsonResponse = jsonDecode(responseBody);
//     List<Categories> categories = [];
//     if (jsonResponse['content'] != null) {
//       categories = List<Categories>.from(jsonResponse['content'].map((data) {
//         return Categories.fromJson(data);
//       }));
//     }
//     return categories;
//   } else {
//     throw Exception('Failed to fetch categories');
//   }
// }
