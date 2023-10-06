class Category {
  int categoryId;
  String name;

  Category({required this.categoryId, required this.name});

//   static final String table = 'categories';
//   static final List<String> columns = ['category_id', 'name'];
//
//   factory Category.fromMap(Map<String, dynamic> data) {
//     return Category(
//       categoryId: data['category_id'],
//       name: data['name'],
//     );
//   }
//
//   Map<String, dynamic> toMap() {
//     return {
//       'category_id': categoryId,
//       'name': name,
//     };
//   }
}

List<Category> demoCategories = [
  Category(categoryId: 1, name: 'Plants'),
  Category(categoryId: 2, name: 'Flowers'),
  Category(categoryId: 3, name: 'Trees'),
];