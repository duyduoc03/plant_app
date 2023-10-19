import 'attribute.dart';
import 'categories.dart';

class Products {
  final int id;
  final String name;
  final double price;
  final String thumbnail;
  final String description;
  final Categories category;
  final Attribute? attribute;

  Products({
    required this.id,
    required this.name,
    required this.price,
    required this.thumbnail,
    required this.description,
    required this.category,
    this.attribute,
  });

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
      thumbnail: json['thumbnail'],
      description: json['description'],
      category: Categories.fromJson(json['category']),
      attribute: json.containsKey('attribute') ? Attribute.fromJson(json['attribute']) : null,
    );
  }
}
