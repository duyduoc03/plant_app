import 'package:flutter/material.dart';
import '../../model/category.dart';
import 'category_screen.dart';
import 'components/category_item.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      child: GridView.count(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(top: 20.0),
        shrinkWrap: true,
        crossAxisCount: 4,
        children: demoCategories.map((category) {
          return GestureDetector(
            onTap: () {
              // Xử lý sự kiện khi nhấn vào phần tử trong mục category
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryScreen(category: category),
                ),
              );
            },
            child: CategoryItem(category.name, category.icon),
          );
        }).toList(),
      ),
    );
  }
}