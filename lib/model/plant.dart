import 'attribute.dart';
import 'category.dart';

class Plant {
  int id;
  String name;
  String description;
  double price;
  String thumbnail;
  Category category;
  Attribute attribute;

  Plant({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.thumbnail,
    required this.category,
    required this.attribute,
  });
}

List<Plant> demoPlants = [
  Plant(
    id: 1,
    name: "Phalaenopsis Orchid",
    description: "A stunning orchid with vibrant colors and graceful petals.",
    price: 29.99,
    thumbnail: "assets/images/image_1.png",
    category: demoCategories[0],
    attribute: demoAttributes[0],
  ),
  Plant(
    id: 2,
    name: "Monstera Deliciosa",
    description: "A popular houseplant known for its large, glossy leaves.",
    price: 24.99,
    thumbnail: "assets/images/image_2.png",
    category: demoCategories[0],
    attribute: demoAttributes[1],
  ),
  Plant(
    id: 3,
    name: "Bonsai Tree",
    description: "A miniature tree that embodies the beauty of nature in a small form.",
    price: 39.99,
    thumbnail: "assets/images/image_3.png",
    category: demoCategories[0],
    attribute: demoAttributes[2],
  ),
  Plant(
    id: 4,
    name: "Snake Plant",
    description: "A low-maintenance plant with long, upright leaves.",
    price: 19.99,
    thumbnail: "assets/images/img.png",
    category: demoCategories[1],
    attribute: demoAttributes[3],
  ),
  Plant(
    id: 5,
    name: "Peace Lily",
    description: "An elegant plant with dark green leaves and white flowers.",
    price: 16.99,
    thumbnail: "assets/images/image_1.png",
    category: demoCategories[2],
    attribute: demoAttributes[4],
  ),
];