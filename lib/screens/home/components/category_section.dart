import 'package:flutter/material.dart';
import 'category_item.dart';

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
          children: const [
            CategoryItem('Cây Trang Trí', Icons.eco),
            CategoryItem('Cây Bonsai', Icons.nature),
            CategoryItem('Cây Cảnh Văn Phòng', Icons.work),
            CategoryItem('Cây Tự Nhiên', Icons.park),
          ],
        ),
    );
  }
}