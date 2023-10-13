import 'package:flutter/material.dart';
import '../../model/category.dart';
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
          return CategoryItem(category.name, category.icon);
        }).toList(),
      ),
    );
  }
}