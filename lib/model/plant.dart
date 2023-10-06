class Plant {
  int plantId;
  String name;
  String description;
  double price;
  String imageUrl;
  int categoryId;
  String createdAt;
  String updatedAt;

  Plant({
    required this.plantId,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.categoryId,
    required this.createdAt,
    required this.updatedAt,
  });
}

List<Plant> demoPlants = [
  Plant(
    plantId: 1,
    name: "Phalaenopsis Orchid",
    description: "A stunning orchid with vibrant colors and graceful petals.",
    price: 29.99,
    imageUrl: "assets/images/image_1.png",
    categoryId: 2,
    createdAt: "2022-05-20 10:30:00",
    updatedAt: "2022-05-21 15:45:00",
  ),
  Plant(
    plantId: 2,
    name: "Monstera Deliciosa",
    description: "A popular houseplant known for its large, glossy leaves.",
    price: 24.99,
    imageUrl: "assets/images/image_2.png",
    categoryId: 2,
    createdAt: "2022-06-10 09:15:00",
    updatedAt: "2022-06-12 14:20:00",
  ),
  Plant(
    plantId: 3,
    name: "Bonsai Tree",
    description: "A miniature tree that embodies the beauty of nature in a small form.",
    price: 39.99,
    imageUrl: "assets/images/image_3.png",
    categoryId: 1,
    createdAt: "2022-07-05 16:50:00",
    updatedAt: "2022-07-06 11:30:00",
  ),
  Plant(
    plantId: 4,
    name: "Snake Plant",
    description: "A low-maintenance plant with long, upright leaves.",
    price: 19.99,
    imageUrl: "assets/images/img.png",
    categoryId: 2,
    createdAt: "2022-08-15 12:20:00",
    updatedAt: "2022-08-16 09:10:00",
  ),
  Plant(
    plantId: 5,
    name: "Peace Lily",
    description: "An elegant plant with dark green leaves and white flowers.",
    price: 16.99,
    imageUrl: "assets/images/image_3.png",
    categoryId: 2,
    createdAt: "2022-09-02 14:40:00",
    updatedAt: "2022-09-03 17:25:00",
  ),
  Plant(
    plantId: 6,
    name: "Money Tree",
    description: "A popular plant believed to bring good luck and fortune.",
    price: 27.99,
    imageUrl: "assets/images/image_2.png",
    categoryId: 1,
    createdAt: "2022-10-10 08:55:00",
    updatedAt: "2022-10-11 13:15:00",
  ),
];