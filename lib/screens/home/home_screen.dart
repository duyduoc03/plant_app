import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/category_section.dart';
import 'package:plant_app/screens/home/components/featured_section.dart';
import 'package:plant_app/screens/home/components/new_arrivals.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Ẩn nút back
        title: null, // Ẩn tiêu đề
        actions: [
          Expanded(
            flex: 8,
            child: Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white, // Màu nền của ô tìm kiếm
                borderRadius: BorderRadius.circular(30.0), // Hình dạng hình tròn
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Tìm kiếm',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(bottom: 10.0),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    color: Colors.black,
                    onPressed: () {
                      // Xử lý sự kiện khi nhấn vào biểu tượng tìm kiếm
                      // Thực hiện các thao tác tìm kiếm ở đây
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: Colors.white, // Màu nền của phần thông báo
                shape: BoxShape.circle, // Hình dạng hình tròn
              ),
              child: IconButton(
                icon: const Icon(Icons.notifications),
                color: Colors.green,
                padding: const EdgeInsets.only(bottom: 2.0),
                onPressed: () {
                  // Xử lý sự kiện khi nhấn vào biểu tượng thông báo
                },
              ),
            ),
          ),
        ],
        backgroundColor: Colors.green, // Màu nền của AppBar
        elevation: 0, // Ẩn đường viền shadow của AppBar
      ),
      body: ListView(
        children: [
          CategorySection(),
          const SizedBox(height: 16.0),
          FeaturedSection(),
          const SizedBox(height: 16.0),
          NewArrivalsSection(),
        ],
      ),
    );
  }
}
