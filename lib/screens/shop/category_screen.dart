import 'package:flutter/material.dart';
import '../../model/category.dart';
import '../shop/featured_section.dart';
import '../shop/new_arrivals.dart';

class CategoryScreen extends StatelessWidget {
  final Category category;

  const CategoryScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        // Cài đặt các thuộc tính khác của AppBar (nếu cần)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Tìm kiếm',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(bottom: 10.0),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.black,
                    onPressed: () {
                      // Xử lý sự kiện khi nhấn vào biểu tượng tìm kiếm
                      // Thực hiện các thao tác tìm kiếm ở đây
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            FeaturedSection(),
            SizedBox(height: 16.0),
            NewArrivalsSection(),
          ],
        ),
      ),
    );
  }
}