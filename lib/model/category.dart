import 'package:flutter/material.dart';
import 'package:plant_app/model/plant.dart';

class Category {
  int id;
  String name;
  IconData icon;

  Category(this.id, this.name, this.icon);
}

List<Category> demoCategories = [
  Category(1, 'Cây Trang Trí', Icons.eco),
  Category(2, 'Cây Bonsai', Icons.nature),
  Category(3, 'Cây Cảnh Văn Phòng', Icons.work),
  Category(4, 'Cây Tự Nhiên', Icons.park),
];