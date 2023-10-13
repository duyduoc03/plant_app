import 'package:flutter/material.dart';
import 'fearured_item.dart';
import 'package:plant_app/model/plant.dart'; // Import the Plant model

class FeaturedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Plant> featuredPlants = demoPlants.take(3).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sản phẩm nổi bật',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        Container(
          height: 200.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuredPlants.length,
            itemBuilder: (BuildContext context, int index) {
              var plant = featuredPlants[index];
              return SizedBox(
                width: 150.0, // Đặt kích thước chiều rộng cho hình ảnh
                child: FearuredItem(
                  plant.thumbnail,
                  plant.name,
                  '${plant.price.toStringAsFixed(3)}đ',
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}